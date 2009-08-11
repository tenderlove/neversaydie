#include <stdio.h>
#include <sigsegv.h>
#include <ruby.h>

static VALUE segv(VALUE self)
{
  int *ptr = NULL;
  *ptr = 1;

  return self;
}

void Init_neversaydie()
{
  VALUE klass = rb_define_class("NeverSayDie", rb_eRuntimeError);
  rb_define_singleton_method(klass, "segv", segv, 0);
}
