# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _print_hello

.section .text

_print_hello:
	movq $1,                           %rdi
	movq _hello_string@GOTPCREL(%rip), %rsi
	movq $HELLO_STRING_LEN,            %rdx
	call _sc_write
	ret

.section .data

_hello_string:
	.asciz "Hello, world!\n"
_hello_string_end:
HELLO_STRING_LEN = _hello_string_end - _hello_string

