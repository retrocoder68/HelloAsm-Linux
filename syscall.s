# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _exit

.section .text

# --- Sys calls ---
# See /usr/include/asm/unistd_64.h for syscall numbers
SC_EXIT = 0x3C

_exit:
	movq $0x0,     %rdi
	movq $SC_EXIT, %rax
	syscall
	ret

