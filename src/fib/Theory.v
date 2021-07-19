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
    fib (n + 2) = fib (n + 1) + fib n.

(* Implementation of the fibonacci sequence *)

(*
Fixpoint fib (n:nat) : nat :=
  match n with
  | 0 ⇒ 0
  | S n´ ⇒
    match n´ with
    | 0 ⇒ 1
    | S n´´ ⇒ fib n´ + fib n´´
    end
  end.
*)


Fixpoint fib (n : N) : N :=
  match n with
  | 0 => 0
  | Npos p as n' =>
    match p with
    | xH => 1
    | _ => fib (N.pred n') + fib (N.pred (N.pred n'))
    end
  end.

Theorem fib_impl : fibonacci fib.
Proof.
  unfold fibonacci.
  simpl.
  split.
  reflexivity.
  split. reflexivity.
  intros.
  induction n.
  - simpl. reflexivity.
  - simpl.
Qed.

(*
  Here we prove that the value of `curr` always matches (fib n)
*)
Theorem implements_fib : forall (base s : State),
    reachable base s -> curr s = fib (n s).
Proof
Qed.
