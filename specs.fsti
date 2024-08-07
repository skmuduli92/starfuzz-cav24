val abs: x:int -> Tot (y:int{ (x >= 0 ==> y = x) /\ (x < 0 ==> y = -x) })
val max: x:int -> y:int -> Tot (z:int{ (x >= y ==> z = x) /\ (x < y ==> z = y) })
val min: x:int -> y:int -> Tot (z:int{ (x >= y ==> z = y) /\ (x < y ==> z = x) })
val div: a:int -> b:pos -> Tot (c:int{(a < 0 ==> c < 0) /\ (a >= 0 ==> c >= 0)})
val div_non_eucl: a:int -> b:pos -> Tot (q:int{ ( a >= 0 ==> q = a / b ) /\ ( a < 0 ==> q = -((-a)/b) ) })
val shift_left: v:int -> i:nat -> Tot (res:int{res = v * (pow2 i)})
val arithmetic_shift_right: v:int -> i:nat -> Tot (res:int{ res = (div v (pow2 i)) })
val signed_modulo: v:int -> p:pos -> Tot (res:int{ res = v - ((div_non_eucl v p) * p) })
val op_Plus_Percent : a:int -> p:pos -> Tot (res:int{ (a >= 0 ==> res = a % p) /\ (a < 0 ==> res = -((-a) % p)) }) 

