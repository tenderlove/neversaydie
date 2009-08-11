#include <stdio.h>
#include <sigsegv.h>
#include <ruby.h>

static VALUE segv(VALUE self)
{
  int *ptr = NULL;
  *ptr = 1;

  return self;
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
  rb_define_singleton_method(cNeverSayDie, "segv", segv, 0);

  sigsegv_install_handler(&handler);
}
