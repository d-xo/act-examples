Require Import Fib.Fib.
Require Import ActLib.ActLib.
Require Import Coq.ZArith.ZArith.
Open Scope N_scope.

(* specification of the fibonacci sequence *)

Definition fibonacci (fib : N -> N) :=
  fib 0 = 0
  /\
  fib 1 = 1
  /\
  forall n : N,
    fib (N.succ (N.succ n)) = fib (N.succ n) + fib n.

(*
  Here we prove that the value of `curr` always matches (fib n)
*)
Theorem implements_fib : forall (base s : State),
    reachable base s -> curr s == fib (n s).
Proof
Qed.
