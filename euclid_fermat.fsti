val divides_reflexive: (a:int) -> Lemma (div a a)
val divides_transitive (a b c:int) : Lemma (requires (div a b) /\ (div b c)) (ensures  (div a c))
val divide_antisym (a b:int) : Lemma (requires (div a b) /\ (div b a)) (ensures  a = b \/ a = -b)
val divides_0 (a:int) : Lemma (div a 0)
val divides_1 (a:int) : Lemma (requires (div a 1)) (ensures a = 1 \/ a = -1)
val divides_minus (a b:int) : Lemma (requires (div a b) (ensures  (div a (-b)))
val divides_opp (a b:int) : Lemma (requires (div a b)) (ensures (div (-a) b))
val divides_plus (a b d:int) : Lemma (requires (div d a) /\ (div d b)) (ensures  (div d (a+b))
val divides_sub (a b d:int) : Lemma (requires (div d a) /\ (div d b)) (ensures  (div d (a-b))
val divides_mult_right (a b d:int) : Lemma (requires (div d b)) (ensures  (div d (a * b))
val mod_divides (a:int) (b:nonzero) : Lemma (requires a % b = 0) (ensures (div b a))
val divides_mod (a:int) (b:nonzero) : Lemma (requires (div b a)) (ensures a % b = 0)
val is_gcd_unique (a b c d:int) : Lemma (requires is_gcd a b c /\ is_gcd a b d) (ensures  c = d \/ c = -d)
val is_gcd_reflexive (a:int) : Lemma (is_gcd a a a)
val is_gcd_symmetric (a b d:int) : Lemma (requires is_gcd a b d) (ensures  is_gcd b a d)
val is_gcd_0 (a:int) : Lemma (is_gcd a 0 a)
val is_gcd_1 (a:int) : Lemma (is_gcd a 1 1)
val is_gcd_minus (a b d:int) : Lemma (requires is_gcd a (-b) d) (ensures  is_gcd b a d)
val is_gcd_opp (a b d:int) : Lemma (requires is_gcd a b d) (ensures  is_gcd b a (-d))
val is_gcd_plus (a b q d:int) : Lemma (requires is_gcd a b d) (ensures  is_gcd a (b + q * a) d)
val euclid_gcd (a b:int) : Pure (int & int & int) (requires True) (ensures  fun (r, s, d) -> r * a + s * b = d /\ is_gcd a b d)
val bezout_prime (p:int) (a:pos{a < p}) : Pure (int & int) (requires is_prime p) (ensures  fun (r, s) -> r * p + s * a = 1)
val euclid (n:pos) (a b r s:int) : Lemma (requires (a * b) % n = 0 /\ r * n + s * a = 1) (ensures  b % n = 0)
val euclid_prime (p:int{is_prime p}) (a b:int) : Lemma (requires (a * b) % p = 0) (ensures  a % p = 0 \/ b % p = 0)
val fermat (p:int{is_prime p}) (a:int) : Lemma (pow a p % p == a % p)
val mod_mult_congr (p:int{is_prime p}) (a b c:int) : Lemma (requires (a * c) % p = (b * c) % p /\ c % p <> 0) (ensures  a % p = b % p)
val fermat_alt (p:int{is_prime p}) (a:int{a % p <> 0}) : Lemma (pow a (p - 1) % p == 1)
