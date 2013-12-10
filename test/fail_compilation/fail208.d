/*
TEST_OUTPUT:
---
fail_compilation/fail208.d(18): Error: return expression expected
fail_compilation/fail208.d(16): Error: function fail208.MakeA has no return statement, but is expected to return a value of type A
fail_compilation/fail208.d(21):        called from here: MakeA()
---
*/

// Issue 1593 - ICE compiler crash empty return statement in function

struct A
{
}

A MakeA()
{
    return ;
}

static const A aInstance = MakeA();
