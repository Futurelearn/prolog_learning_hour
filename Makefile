.PHONY: test console install default

default: test

install:
	brew install swi-prolog

genealogy:
	@swipl -l test/genealogy_test.pl -g run_tests,halt -t 'halt(1)'

recursion:
	@swipl -l test/recursion_test.pl -g run_tests,halt -t 'halt(1)'

peano:
	@swipl -l test/peano_test.pl -g run_tests,halt -t 'halt(1)'

test:
	@swipl -l test/load.pl -g run_tests,halt -t 'halt(1)'

console:
	@swipl -q -l load.pl
