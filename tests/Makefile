all: tests
tests: tests_vim tests_neovim
tests_vim:
	vim -f --not-a-term -u vimrc -S run_test.vim test_general.vim || ( cat *.failed.log && false )
tests_neovim:
	nvim -f -u vimrc -S run_test.vim test_general.vim || ( cat *.failed.log && false )
