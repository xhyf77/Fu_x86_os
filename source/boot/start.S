
	#include "boot.h"

  	// 16位代码，务必加上
  	.code16
 	.text
	.global _start
	.extern boot_entry
_start:
																																																																																																													mov $0 , %ax
	mov %ax , %ds
	mov %ax , %ss
	mov %ax , %es
	mov %ax , %fs
	mov %ax , %gs
	mov $0x7c00 , %esp
	mov $0xe , %ah
	mov $'L' , %al	
	int $0x10

read_loader:
	mov $0x8000 ,  %bx
	mov $0x2 , %ah
	mov $0x2 , %cx	
	mov $64 , %al
	mov $0x0080 , %dx
	int $0x13
	jc read_loader

	jmp boot_entry

	jmp .

	// 引导结束段
	.section boot_end, "ax"
boot_sig: .byte 0x55, 0xaa
