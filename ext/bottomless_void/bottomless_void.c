#include <ruby.h>

// turn on the insanity by defining an allocator and .new for NilClass
static VALUE bottomless_void_enable(VALUE self)
{
    rb_define_alloc_func(rb_cNilClass, rb_get_alloc_func(rb_cBasicObject));
    rb_define_method(CLASS_OF(rb_cNilClass), "new", rb_class_new_instance, -1);
    return RUBY_Qnil;
}

// turn it back off by undefining the allocator and .new for NilClass
static VALUE bottomless_void_disable(VALUE self)
{
    rb_undef_alloc_func(rb_cNilClass);
    rb_undef_method(CLASS_OF(rb_cNilClass), "new");
    return RUBY_Qnil;
}

void Init_bottomless_void()
{
    VALUE mRentANil = rb_define_module("BottomlessVoid");
    rb_define_method(CLASS_OF(mRentANil), "enable!", bottomless_void_enable, 0);
    rb_define_method(CLASS_OF(mRentANil), "disable!", bottomless_void_disable, 0);
}
