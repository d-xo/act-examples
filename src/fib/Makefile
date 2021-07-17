.PHONY: verify
verify: CoqMakefile Fib.v
	make -f CoqMakefile

Fib.v: fib.act
	act coq --file fib.act > Fib.v

CoqMakefile: _CoqProject
	coq_makefile -f _CoqProject -o CoqMakefile

.PHONY: clean
clean:
	if [[ -f CoqMakefile ]]; then make -f CoqMakefile clean; fi
	rm -f Fib.v CoqMakefile CoqMakefile.conf
	rm -f *.glob *.vo *.vok *.vos

