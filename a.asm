
a:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <__abi_tag-0x37>
 328:	78 38                	js     362 <__abi_tag-0x2a>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	20 00                	and    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
 357:	00 02                	add    %al,(%rdx)
 359:	80 00 c0             	addb   $0xc0,(%rax)
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000368 <.note.gnu.build-id>:
 368:	04 00                	add    $0x0,%al
 36a:	00 00                	add    %al,(%rax)
 36c:	14 00                	adc    $0x0,%al
 36e:	00 00                	add    %al,(%rax)
 370:	03 00                	add    (%rax),%eax
 372:	00 00                	add    %al,(%rax)
 374:	47                   	rex.RXB
 375:	4e 55                	rex.WRX push %rbp
 377:	00 71 b0             	add    %dh,-0x50(%rcx)
 37a:	02 38                	add    (%rax),%bh
 37c:	89 7f ed             	mov    %edi,-0x13(%rdi)
 37f:	20 d8                	and    %bl,%al
 381:	cd dc                	int    $0xdc
 383:	35 cb 87 23 d7       	xor    $0xd72387cb,%eax
 388:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 389:	60                   	(bad)  
 38a:	ff                   	(bad)  
 38b:	7b                   	.byte 0x7b

Disassembly of section .note.ABI-tag:

000000000000038c <__abi_tag>:
 38c:	04 00                	add    $0x0,%al
 38e:	00 00                	add    %al,(%rax)
 390:	10 00                	adc    %al,(%rax)
 392:	00 00                	add    %al,(%rax)
 394:	01 00                	add    %eax,(%rax)
 396:	00 00                	add    %al,(%rax)
 398:	47                   	rex.RXB
 399:	4e 55                	rex.WRX push %rbp
 39b:	00 00                	add    %al,(%rax)
 39d:	00 00                	add    %al,(%rax)
 39f:	00 03                	add    %al,(%rbx)
 3a1:	00 00                	add    %al,(%rax)
 3a3:	00 02                	add    %al,(%rdx)
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003b0 <.gnu.hash>:
 3b0:	02 00                	add    (%rax),%al
 3b2:	00 00                	add    %al,(%rax)
 3b4:	06                   	(bad)  
 3b5:	00 00                	add    %al,(%rax)
 3b7:	00 01                	add    %al,(%rcx)
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 06                	add    %al,(%rsi)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 00                	add    %al,(%rax)
 3c1:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 3c7:	00 06                	add    %al,(%rsi)
 3c9:	00 00                	add    %al,(%rax)
 3cb:	00 00                	add    %al,(%rax)
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 d1                	add    %dl,%cl
 3d1:	65 ce                	gs (bad) 
 3d3:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

00000000000003d8 <.dynsym>:
	...
 3f0:	10 00                	adc    %al,(%rax)
 3f2:	00 00                	add    %al,(%rax)
 3f4:	12 00                	adc    (%rax),%al
	...
 406:	00 00                	add    %al,(%rax)
 408:	48 00 00             	rex.W add %al,(%rax)
 40b:	00 20                	add    %ah,(%rax)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 22                	add    %ah,(%rdx)
 421:	00 00                	add    %al,(%rax)
 423:	00 12                	add    %dl,(%rdx)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
 43b:	00 20                	add    %ah,(%rax)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 73 00             	add    %dh,0x0(%rbx)
 452:	00 00                	add    %al,(%rax)
 454:	20 00                	and    %al,(%rax)
	...
 466:	00 00                	add    %al,(%rax)
 468:	01 00                	add    %eax,(%rax)
 46a:	00 00                	add    %al,(%rax)
 46c:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000480 <.dynstr>:
 480:	00 5f 5f             	add    %bl,0x5f(%rdi)
 483:	63 78 61             	movsxd 0x61(%rax),%edi
 486:	5f                   	pop    %rdi
 487:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 48d:	7a 65                	jp     4f4 <__abi_tag+0x168>
 48f:	00 5f 5f             	add    %bl,0x5f(%rdi)
 492:	6c                   	insb   (%dx),%es:(%rdi)
 493:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 49a:	72 74                	jb     510 <__abi_tag+0x184>
 49c:	5f                   	pop    %rdi
 49d:	6d                   	insl   (%dx),%es:(%rdi)
 49e:	61                   	(bad)  
 49f:	69 6e 00 70 75 74 73 	imul   $0x73747570,0x0(%rsi),%ebp
 4a6:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 4aa:	63 2e                	movsxd (%rsi),%ebp
 4ac:	73 6f                	jae    51d <__abi_tag+0x191>
 4ae:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 4b3:	49                   	rex.WB
 4b4:	42                   	rex.X
 4b5:	43 5f                	rex.XB pop %r15
 4b7:	32 2e                	xor    (%rsi),%ch
 4b9:	32 2e                	xor    (%rsi),%ch
 4bb:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 4c0:	42                   	rex.X
 4c1:	43 5f                	rex.XB pop %r15
 4c3:	32 2e                	xor    (%rsi),%ch
 4c5:	33 34 00             	xor    (%rax,%rax,1),%esi
 4c8:	5f                   	pop    %rdi
 4c9:	49 54                	rex.WB push %r12
 4cb:	4d 5f                	rex.WRB pop %r15
 4cd:	64 65 72 65          	fs gs jb 536 <__abi_tag+0x1aa>
 4d1:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4d8:	4d 
 4d9:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4db:	6f                   	outsl  %ds:(%rsi),(%dx)
 4dc:	6e                   	outsb  %ds:(%rsi),(%dx)
 4dd:	65 54                	gs push %rsp
 4df:	61                   	(bad)  
 4e0:	62                   	(bad)  
 4e1:	6c                   	insb   (%dx),%es:(%rdi)
 4e2:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4e6:	67 6d                	insl   (%dx),%es:(%edi)
 4e8:	6f                   	outsl  %ds:(%rsi),(%dx)
 4e9:	6e                   	outsb  %ds:(%rsi),(%dx)
 4ea:	5f                   	pop    %rdi
 4eb:	73 74                	jae    561 <__abi_tag+0x1d5>
 4ed:	61                   	(bad)  
 4ee:	72 74                	jb     564 <__abi_tag+0x1d8>
 4f0:	5f                   	pop    %rdi
 4f1:	5f                   	pop    %rdi
 4f2:	00 5f 49             	add    %bl,0x49(%rdi)
 4f5:	54                   	push   %rsp
 4f6:	4d 5f                	rex.WRB pop %r15
 4f8:	72 65                	jb     55f <__abi_tag+0x1d3>
 4fa:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 501:	4d 
 502:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 504:	6f                   	outsl  %ds:(%rsi),(%dx)
 505:	6e                   	outsb  %ds:(%rsi),(%dx)
 506:	65 54                	gs push %rsp
 508:	61                   	(bad)  
 509:	62                   	.byte 0x62
 50a:	6c                   	insb   (%dx),%es:(%rdi)
 50b:	65                   	gs
	...

Disassembly of section .gnu.version:

000000000000050e <.gnu.version>:
 50e:	00 00                	add    %al,(%rax)
 510:	02 00                	add    (%rax),%al
 512:	01 00                	add    %eax,(%rax)
 514:	03 00                	add    (%rax),%eax
 516:	01 00                	add    %eax,(%rax)
 518:	01 00                	add    %eax,(%rax)
 51a:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000000520 <.gnu.version_r>:
 520:	01 00                	add    %eax,(%rax)
 522:	02 00                	add    (%rax),%al
 524:	27                   	(bad)  
 525:	00 00                	add    %al,(%rax)
 527:	00 10                	add    %dl,(%rax)
 529:	00 00                	add    %al,(%rax)
 52b:	00 00                	add    %al,(%rax)
 52d:	00 00                	add    %al,(%rax)
 52f:	00 75 1a             	add    %dh,0x1a(%rbp)
 532:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 538:	31 00                	xor    %eax,(%rax)
 53a:	00 00                	add    %al,(%rax)
 53c:	10 00                	adc    %al,(%rax)
 53e:	00 00                	add    %al,(%rax)
 540:	b4 91                	mov    $0x91,%ah
 542:	96                   	xchg   %eax,%esi
 543:	06                   	(bad)  
 544:	00 00                	add    %al,(%rax)
 546:	02 00                	add    (%rax),%al
 548:	3d 00 00 00 00       	cmp    $0x0,%eax
 54d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000550 <.rela.dyn>:
 550:	b8 3d 00 00 00       	mov    $0x3d,%eax
 555:	00 00                	add    %al,(%rax)
 557:	00 08                	add    %cl,(%rax)
 559:	00 00                	add    %al,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 40 11             	add    %al,0x11(%rax)
 562:	00 00                	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	c0 3d 00 00 00 00 00 	sarb   $0x0,0x0(%rip)        # 56f <__abi_tag+0x1e3>
 56f:	00 08                	add    %cl,(%rax)
	...
 579:	11 00                	adc    %eax,(%rax)
 57b:	00 00                	add    %al,(%rax)
 57d:	00 00                	add    %al,(%rax)
 57f:	00 08                	add    %cl,(%rax)
 581:	40 00 00             	rex add %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	08 00                	or     %al,(%rax)
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	08 40 00             	or     %al,0x0(%rax)
 593:	00 00                	add    %al,(%rax)
 595:	00 00                	add    %al,(%rax)
 597:	00 d8                	add    %bl,%al
 599:	3f                   	(bad)  
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	06                   	(bad)  
 5a1:	00 00                	add    %al,(%rax)
 5a3:	00 01                	add    %al,(%rcx)
	...
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 e0                	add    %ah,%al
 5b1:	3f                   	(bad)  
 5b2:	00 00                	add    %al,(%rax)
 5b4:	00 00                	add    %al,(%rax)
 5b6:	00 00                	add    %al,(%rax)
 5b8:	06                   	(bad)  
 5b9:	00 00                	add    %al,(%rax)
 5bb:	00 02                	add    %al,(%rdx)
	...
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 e8                	add    %ch,%al
 5c9:	3f                   	(bad)  
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 00                	add    %al,(%rax)
 5d0:	06                   	(bad)  
 5d1:	00 00                	add    %al,(%rax)
 5d3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5de:	00 00                	add    %al,(%rax)
 5e0:	f0 3f                	lock (bad) 
 5e2:	00 00                	add    %al,(%rax)
 5e4:	00 00                	add    %al,(%rax)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	06                   	(bad)  
 5e9:	00 00                	add    %al,(%rax)
 5eb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 5f1 <__abi_tag+0x265>
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 00                	add    %al,(%rax)
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 f8                	add    %bh,%al
 5f9:	3f                   	(bad)  
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	00 00                	add    %al,(%rax)
 600:	06                   	(bad)  
 601:	00 00                	add    %al,(%rax)
 603:	00 06                	add    %al,(%rsi)
	...

Disassembly of section .rela.plt:

0000000000000610 <.rela.plt>:
 610:	d0 3f                	sarb   (%rdi)
 612:	00 00                	add    %al,(%rax)
 614:	00 00                	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	07                   	(bad)  
 619:	00 00                	add    %al,(%rax)
 61b:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <puts@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <puts@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1149 <main>
    107f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <main>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	48 83 ec 20          	sub    $0x20,%rsp
    1155:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1158:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    115c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1163:	eb 1b                	jmp    1180 <main+0x37>
    1165:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1169:	48 8d 50 08          	lea    0x8(%rax),%rdx
    116d:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1171:	48 8b 00             	mov    (%rax),%rax
    1174:	48 89 c7             	mov    %rax,%rdi
    1177:	e8 d4 fe ff ff       	call   1050 <puts@plt>
    117c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1180:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1183:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1186:	7e dd                	jle    1165 <main+0x1c>
    1188:	b8 00 00 00 00       	mov    $0x0,%eax
    118d:	c9                   	leave  
    118e:	c3                   	ret    

Disassembly of section .fini:

0000000000001190 <_fini>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	48 83 ec 08          	sub    $0x8,%rsp
    1198:	48 83 c4 08          	add    $0x8,%rsp
    119c:	c3                   	ret    

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al

Disassembly of section .eh_frame_hdr:

0000000000002004 <__GNU_EH_FRAME_HDR>:
    2004:	01 1b                	add    %ebx,(%rbx)
    2006:	03 3b                	add    (%rbx),%edi
    2008:	30 00                	xor    %al,(%rax)
    200a:	00 00                	add    %al,(%rax)
    200c:	05 00 00 00 1c       	add    $0x1c000000,%eax
    2011:	f0 ff                	lock (bad) 
    2013:	ff 64 00 00          	jmp    *0x0(%rax,%rax,1)
    2017:	00 3c f0             	add    %bh,(%rax,%rsi,8)
    201a:	ff                   	(bad)  
    201b:	ff 8c 00 00 00 4c f0 	decl   -0xfb40000(%rax,%rax,1)
    2022:	ff                   	(bad)  
    2023:	ff a4 00 00 00 5c f0 	jmp    *-0xfa40000(%rax,%rax,1)
    202a:	ff                   	(bad)  
    202b:	ff 4c 00 00          	decl   0x0(%rax,%rax,1)
    202f:	00 45 f1             	add    %al,-0xf(%rbp)
    2032:	ff                   	(bad)  
    2033:	ff                   	(bad)  
    2034:	bc                   	.byte 0xbc
    2035:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000002038 <__FRAME_END__-0xa8>:
    2038:	14 00                	adc    $0x0,%al
    203a:	00 00                	add    %al,(%rax)
    203c:	00 00                	add    %al,(%rax)
    203e:	00 00                	add    %al,(%rax)
    2040:	01 7a 52             	add    %edi,0x52(%rdx)
    2043:	00 01                	add    %al,(%rcx)
    2045:	78 10                	js     2057 <__GNU_EH_FRAME_HDR+0x53>
    2047:	01 1b                	add    %ebx,(%rbx)
    2049:	0c 07                	or     $0x7,%al
    204b:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2051:	00 00                	add    %al,(%rax)
    2053:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2056:	00 00                	add    %al,(%rax)
    2058:	08 f0                	or     %dh,%al
    205a:	ff                   	(bad)  
    205b:	ff 26                	jmp    *(%rsi)
    205d:	00 00                	add    %al,(%rax)
    205f:	00 00                	add    %al,(%rax)
    2061:	44 07                	rex.R (bad) 
    2063:	10 00                	adc    %al,(%rax)
    2065:	00 00                	add    %al,(%rax)
    2067:	00 24 00             	add    %ah,(%rax,%rax,1)
    206a:	00 00                	add    %al,(%rax)
    206c:	34 00                	xor    $0x0,%al
    206e:	00 00                	add    %al,(%rax)
    2070:	b0 ef                	mov    $0xef,%al
    2072:	ff                   	(bad)  
    2073:	ff 20                	jmp    *(%rax)
    2075:	00 00                	add    %al,(%rax)
    2077:	00 00                	add    %al,(%rax)
    2079:	0e                   	(bad)  
    207a:	10 46 0e             	adc    %al,0xe(%rsi)
    207d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2080:	0b 77 08             	or     0x8(%rdi),%esi
    2083:	80 00 3f             	addb   $0x3f,(%rax)
    2086:	1a 3a                	sbb    (%rdx),%bh
    2088:	2a 33                	sub    (%rbx),%dh
    208a:	24 22                	and    $0x22,%al
    208c:	00 00                	add    %al,(%rax)
    208e:	00 00                	add    %al,(%rax)
    2090:	14 00                	adc    $0x0,%al
    2092:	00 00                	add    %al,(%rax)
    2094:	5c                   	pop    %rsp
    2095:	00 00                	add    %al,(%rax)
    2097:	00 a8 ef ff ff 10    	add    %ch,0x10ffffef(%rax)
	...
    20a5:	00 00                	add    %al,(%rax)
    20a7:	00 14 00             	add    %dl,(%rax,%rax,1)
    20aa:	00 00                	add    %al,(%rax)
    20ac:	74 00                	je     20ae <__GNU_EH_FRAME_HDR+0xaa>
    20ae:	00 00                	add    %al,(%rax)
    20b0:	a0 ef ff ff 10 00 00 	movabs 0x10ffffef,%al
    20b7:	00 00 
    20b9:	00 00                	add    %al,(%rax)
    20bb:	00 00                	add    %al,(%rax)
    20bd:	00 00                	add    %al,(%rax)
    20bf:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20c2:	00 00                	add    %al,(%rax)
    20c4:	8c 00                	mov    %es,(%rax)
    20c6:	00 00                	add    %al,(%rax)
    20c8:	81 f0 ff ff 46 00    	xor    $0x46ffff,%eax
    20ce:	00 00                	add    %al,(%rax)
    20d0:	00 45 0e             	add    %al,0xe(%rbp)
    20d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    20d9:	7d 0c                	jge    20e7 <__FRAME_END__+0x7>
    20db:	07                   	(bad)  
    20dc:	08 00                	or     %al,(%rax)
	...

00000000000020e0 <__FRAME_END__>:
    20e0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003db8 <__frame_dummy_init_array_entry>:
    3db8:	40 11 00             	rex adc %eax,(%rax)
    3dbb:	00 00                	add    %al,(%rax)
    3dbd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003dc0 <__do_global_dtors_aux_fini_array_entry>:
    3dc0:	00 11                	add    %dl,(%rcx)
    3dc2:	00 00                	add    %al,(%rax)
    3dc4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003dc8 <_DYNAMIC>:
    3dc8:	01 00                	add    %eax,(%rax)
    3dca:	00 00                	add    %al,(%rax)
    3dcc:	00 00                	add    %al,(%rax)
    3dce:	00 00                	add    %al,(%rax)
    3dd0:	27                   	(bad)  
    3dd1:	00 00                	add    %al,(%rax)
    3dd3:	00 00                	add    %al,(%rax)
    3dd5:	00 00                	add    %al,(%rax)
    3dd7:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
    3dde:	00 00                	add    %al,(%rax)
    3de0:	00 10                	add    %dl,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	0d 00 00 00 00       	or     $0x0,%eax
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 90 11 00 00 00    	add    %dl,0x11(%rax)
    3df5:	00 00                	add    %al,(%rax)
    3df7:	00 19                	add    %bl,(%rcx)
    3df9:	00 00                	add    %al,(%rax)
    3dfb:	00 00                	add    %al,(%rax)
    3dfd:	00 00                	add    %al,(%rax)
    3dff:	00 b8 3d 00 00 00    	add    %bh,0x3d(%rax)
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 1b                	add    %bl,(%rbx)
    3e09:	00 00                	add    %al,(%rax)
    3e0b:	00 00                	add    %al,(%rax)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 08                	add    %cl,(%rax)
    3e11:	00 00                	add    %al,(%rax)
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 1a                	add    %bl,(%rdx)
    3e19:	00 00                	add    %al,(%rax)
    3e1b:	00 00                	add    %al,(%rax)
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 c0                	add    %al,%al
    3e21:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e26:	00 00                	add    %al,(%rax)
    3e28:	1c 00                	sbb    $0x0,%al
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	08 00                	or     %al,(%rax)
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	f5                   	cmc    
    3e39:	fe                   	(bad)  
    3e3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e3d:	00 00                	add    %al,(%rax)
    3e3f:	00 b0 03 00 00 00    	add    %dh,0x3(%rax)
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e4d <_DYNAMIC+0x85>
    3e4d:	00 00                	add    %al,(%rax)
    3e4f:	00 80 04 00 00 00    	add    %al,0x4(%rax)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 06                	add    %al,(%rsi)
    3e59:	00 00                	add    %al,(%rax)
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 d8                	add    %bl,%al
    3e61:	03 00                	add    (%rax),%eax
    3e63:	00 00                	add    %al,(%rax)
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 0a                	add    %cl,(%rdx)
    3e69:	00 00                	add    %al,(%rax)
    3e6b:	00 00                	add    %al,(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 8d 00 00 00 00    	add    %cl,0x0(%rbp)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 0b                	add    %cl,(%rbx)
    3e79:	00 00                	add    %al,(%rax)
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 18                	add    %bl,(%rax)
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3e8d <_DYNAMIC+0xc5>
	...
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 03                	add    %al,(%rbx)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 b8 3f 00 00 00    	add    %bh,0x3f(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 02                	add    %al,(%rdx)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 18                	add    %bl,(%rax)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 14 00             	add    %dl,(%rax,%rax,1)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	07                   	(bad)  
    3ec1:	00 00                	add    %al,(%rax)
    3ec3:	00 00                	add    %al,(%rax)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 17                	add    %dl,(%rdi)
    3ec9:	00 00                	add    %al,(%rax)
    3ecb:	00 00                	add    %al,(%rax)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 10                	add    %dl,(%rax)
    3ed1:	06                   	(bad)  
    3ed2:	00 00                	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	07                   	(bad)  
    3ed9:	00 00                	add    %al,(%rax)
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 50 05             	add    %dl,0x5(%rax)
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	08 00                	or     %al,(%rax)
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	c0 00 00             	rolb   $0x0,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 09                	add    %cl,(%rcx)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 18                	add    %bl,(%rax)
    3f01:	00 00                	add    %al,(%rax)
    3f03:	00 00                	add    %al,(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 1e                	add    %bl,(%rsi)
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 08                	add    %cl,(%rax)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 fb                	add    %bh,%bl
    3f19:	ff                   	(bad)  
    3f1a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 01                	add    %al,(%rcx)
    3f21:	00 00                	add    %al,(%rax)
    3f23:	08 00                	or     %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 fe                	add    %bh,%dh
    3f29:	ff                   	(bad)  
    3f2a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 20                	add    %ah,(%rax)
    3f31:	05 00 00 00 00       	add    $0x0,%eax
    3f36:	00 00                	add    %al,(%rax)
    3f38:	ff                   	(bad)  
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 01                	add    %al,(%rcx)
    3f41:	00 00                	add    %al,(%rax)
    3f43:	00 00                	add    %al,(%rax)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 f0                	add    %dh,%al
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 0e                	add    %cl,(%rsi)
    3f51:	05 00 00 00 00       	add    $0x0,%eax
    3f56:	00 00                	add    %al,(%rax)
    3f58:	f9                   	stc    
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fb8 <_GLOBAL_OFFSET_TABLE_>:
    3fb8:	c8 3d 00 00          	enter  $0x3d,$0x0
	...
    3fd0:	30 10                	xor    %dl,(%rax)
	...

Disassembly of section .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004010 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <__abi_tag-0x314>
   a:	74 75                	je     81 <__abi_tag-0x30b>
   c:	20 31                	and    %dh,(%rcx)
   e:	31 2e                	xor    %ebp,(%rsi)
  10:	34 2e                	xor    $0x2e,%al
  12:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627549 <_end+0x75623531>
  18:	6e                   	outsb  %ds:(%rsi),(%dx)
  19:	74 75                	je     90 <__abi_tag-0x2fc>
  1b:	31 7e 32             	xor    %edi,0x32(%rsi)
  1e:	32 2e                	xor    (%rsi),%ch
  20:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  23:	20 31                	and    %dh,(%rcx)
  25:	31 2e                	xor    %ebp,(%rsi)
  27:	34 2e                	xor    $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
