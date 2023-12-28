# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _sc_exit
.global _sc_write

.section .text

# --- Sys calls ---
# See /usr/include/asm/unistd_64.h for syscall numbers
SC_EXIT  = 0x3C
SC_WRITE = 0x01

_sc_exit:
	movq $0x0,     %rdi
	movq $SC_EXIT, %rax
	syscall
	ret

_sc_write:
	movq $SC_WRITE, %rax
	syscall
	ret

