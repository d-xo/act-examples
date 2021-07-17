../../lib/ActLib/ActLib.vo ../../lib/ActLib/ActLib.glob ../../lib/ActLib/ActLib.v.beautified ../../lib/ActLib/ActLib.required_vo: ../../lib/ActLib/ActLib.v 
../../lib/ActLib/ActLib.vio: ../../lib/ActLib/ActLib.v 
../../lib/ActLib/ActLib.vos ../../lib/ActLib/ActLib.vok ../../lib/ActLib/ActLib.required_vos: ../../lib/ActLib/ActLib.v 
Fib.vo Fib.glob Fib.v.beautified Fib.required_vo: Fib.v ../../lib/ActLib/ActLib.vo
Fib.vio: Fib.v ../../lib/ActLib/ActLib.vio
Fib.vos Fib.vok Fib.required_vos: Fib.v ../../lib/ActLib/ActLib.vos
Theory.vo Theory.glob Theory.v.beautified Theory.required_vo: Theory.v Fib.vo ../../lib/ActLib/ActLib.vo
Theory.vio: Theory.v Fib.vio ../../lib/ActLib/ActLib.vio
Theory.vos Theory.vok Theory.required_vos: Theory.v Fib.vos ../../lib/ActLib/ActLib.vos
