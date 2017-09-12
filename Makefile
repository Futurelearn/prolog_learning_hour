.PHONY: test console install default

default: test

install:
	brew install swi-prolog

test:
	@swipl -l test/load.pl -g run_tests,halt -t 'halt(1)'

console:
	@swipl -q -l load.pl
