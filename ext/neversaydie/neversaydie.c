#include <stdio.h>
#include <sigsegv.h>
#include <ruby.h>

static VALUE segv(int argc, VALUE* argv)
{
  int *ptr = NULL;
  int i, x;
  /* Behave dubiously depending on input. */
  if (0 == argc) /* (No arg segv's like it did before) */
    *ptr = 1;

  /* …but the user will have to tinker to figure out what else it chokes on. */
  for (i = 0; i < argc; i++) {
    x = NUM2INT(argv[i]);
    if (7 == x)
        *ptr = 1;
  }

  return Qnil;
}

VALUE cNeverSayDie;

void continuation(void * a, void * b, void * c)
{
  rb_raise(cNeverSayDie, "segfault at %ld", (int)a);
}

int handler(void * fault_address, int serious)
{
  sigsegv_leave_handler(&continuation, fault_address, NULL, NULL);
  return 1;
}

void Init_neversaydie()
{
  cNeverSayDie = rb_define_class("NeverSayDie", rb_eRuntimeError);
  rb_define_singleton_method(cNeverSayDie, "segv", segv, -1);

  sigsegv_install_handler(&handler);
}
