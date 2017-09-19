
csim:     file format elf64-x86-64


Disassembly of section .init:

00000000004008e0 <_init>:
  4008e0:	48 83 ec 08          	sub    $0x8,%rsp
  4008e4:	48 8b 05 9d 12 20 00 	mov    0x20129d(%rip),%rax        # 601b88 <_DYNAMIC+0x1f0>
  4008eb:	48 85 c0             	test   %rax,%rax
  4008ee:	74 05                	je     4008f5 <_init+0x15>
  4008f0:	e8 3b 01 00 00       	callq  400a30 <rand@plt+0x10>
  4008f5:	48 83 c4 08          	add    $0x8,%rsp
  4008f9:	c3                   	retq   

Disassembly of section .plt:

0000000000400900 <free@plt-0x10>:
  400900:	ff 35 92 12 20 00    	pushq  0x201292(%rip)        # 601b98 <_GLOBAL_OFFSET_TABLE_+0x8>
  400906:	ff 25 94 12 20 00    	jmpq   *0x201294(%rip)        # 601ba0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400910 <free@plt>:
  400910:	ff 25 92 12 20 00    	jmpq   *0x201292(%rip)        # 601ba8 <_GLOBAL_OFFSET_TABLE_+0x18>
  400916:	68 00 00 00 00       	pushq  $0x0
  40091b:	e9 e0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400920 <__errno_location@plt>:
  400920:	ff 25 8a 12 20 00    	jmpq   *0x20128a(%rip)        # 601bb0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400926:	68 01 00 00 00       	pushq  $0x1
  40092b:	e9 d0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400930 <puts@plt>:
  400930:	ff 25 82 12 20 00    	jmpq   *0x201282(%rip)        # 601bb8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400936:	68 02 00 00 00       	pushq  $0x2
  40093b:	e9 c0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400940 <fclose@plt>:
  400940:	ff 25 7a 12 20 00    	jmpq   *0x20127a(%rip)        # 601bc0 <_GLOBAL_OFFSET_TABLE_+0x30>
  400946:	68 03 00 00 00       	pushq  $0x3
  40094b:	e9 b0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400950 <printf@plt>:
  400950:	ff 25 72 12 20 00    	jmpq   *0x201272(%rip)        # 601bc8 <_GLOBAL_OFFSET_TABLE_+0x38>
  400956:	68 04 00 00 00       	pushq  $0x4
  40095b:	e9 a0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400960 <__assert_fail@plt>:
  400960:	ff 25 6a 12 20 00    	jmpq   *0x20126a(%rip)        # 601bd0 <_GLOBAL_OFFSET_TABLE_+0x40>
  400966:	68 05 00 00 00       	pushq  $0x5
  40096b:	e9 90 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400970 <pow@plt>:
  400970:	ff 25 62 12 20 00    	jmpq   *0x201262(%rip)        # 601bd8 <_GLOBAL_OFFSET_TABLE_+0x48>
  400976:	68 06 00 00 00       	pushq  $0x6
  40097b:	e9 80 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400980 <__libc_start_main@plt>:
  400980:	ff 25 5a 12 20 00    	jmpq   *0x20125a(%rip)        # 601be0 <_GLOBAL_OFFSET_TABLE_+0x50>
  400986:	68 07 00 00 00       	pushq  $0x7
  40098b:	e9 70 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400990 <srand@plt>:
  400990:	ff 25 52 12 20 00    	jmpq   *0x201252(%rip)        # 601be8 <_GLOBAL_OFFSET_TABLE_+0x58>
  400996:	68 08 00 00 00       	pushq  $0x8
  40099b:	e9 60 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009a0 <fgets@plt>:
  4009a0:	ff 25 4a 12 20 00    	jmpq   *0x20124a(%rip)        # 601bf0 <_GLOBAL_OFFSET_TABLE_+0x60>
  4009a6:	68 09 00 00 00       	pushq  $0x9
  4009ab:	e9 50 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009b0 <fprintf@plt>:
  4009b0:	ff 25 42 12 20 00    	jmpq   *0x201242(%rip)        # 601bf8 <_GLOBAL_OFFSET_TABLE_+0x68>
  4009b6:	68 0a 00 00 00       	pushq  $0xa
  4009bb:	e9 40 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009c0 <time@plt>:
  4009c0:	ff 25 3a 12 20 00    	jmpq   *0x20123a(%rip)        # 601c00 <_GLOBAL_OFFSET_TABLE_+0x70>
  4009c6:	68 0b 00 00 00       	pushq  $0xb
  4009cb:	e9 30 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009d0 <fopen@plt>:
  4009d0:	ff 25 32 12 20 00    	jmpq   *0x201232(%rip)        # 601c08 <_GLOBAL_OFFSET_TABLE_+0x78>
  4009d6:	68 0c 00 00 00       	pushq  $0xc
  4009db:	e9 20 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009e0 <getopt@plt>:
  4009e0:	ff 25 2a 12 20 00    	jmpq   *0x20122a(%rip)        # 601c10 <_GLOBAL_OFFSET_TABLE_+0x80>
  4009e6:	68 0d 00 00 00       	pushq  $0xd
  4009eb:	e9 10 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009f0 <atoi@plt>:
  4009f0:	ff 25 22 12 20 00    	jmpq   *0x201222(%rip)        # 601c18 <_GLOBAL_OFFSET_TABLE_+0x88>
  4009f6:	68 0e 00 00 00       	pushq  $0xe
  4009fb:	e9 00 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400a00 <exit@plt>:
  400a00:	ff 25 1a 12 20 00    	jmpq   *0x20121a(%rip)        # 601c20 <_GLOBAL_OFFSET_TABLE_+0x90>
  400a06:	68 0f 00 00 00       	pushq  $0xf
  400a0b:	e9 f0 fe ff ff       	jmpq   400900 <_init+0x20>

0000000000400a10 <strerror@plt>:
  400a10:	ff 25 12 12 20 00    	jmpq   *0x201212(%rip)        # 601c28 <_GLOBAL_OFFSET_TABLE_+0x98>
  400a16:	68 10 00 00 00       	pushq  $0x10
  400a1b:	e9 e0 fe ff ff       	jmpq   400900 <_init+0x20>

0000000000400a20 <rand@plt>:
  400a20:	ff 25 0a 12 20 00    	jmpq   *0x20120a(%rip)        # 601c30 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400a26:	68 11 00 00 00       	pushq  $0x11
  400a2b:	e9 d0 fe ff ff       	jmpq   400900 <_init+0x20>

Disassembly of section .plt.got:

0000000000400a30 <.plt.got>:
  400a30:	ff 25 52 11 20 00    	jmpq   *0x201152(%rip)        # 601b88 <_DYNAMIC+0x1f0>
  400a36:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400a40 <_start>:
  400a40:	31 ed                	xor    %ebp,%ebp
  400a42:	49 89 d1             	mov    %rdx,%r9
  400a45:	5e                   	pop    %rsi
  400a46:	48 89 e2             	mov    %rsp,%rdx
  400a49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400a4d:	50                   	push   %rax
  400a4e:	54                   	push   %rsp
  400a4f:	49 c7 c0 d0 12 40 00 	mov    $0x4012d0,%r8
  400a56:	48 c7 c1 60 12 40 00 	mov    $0x401260,%rcx
  400a5d:	48 c7 c7 4b 0d 40 00 	mov    $0x400d4b,%rdi
  400a64:	e8 17 ff ff ff       	callq  400980 <__libc_start_main@plt>
  400a69:	f4                   	hlt    
  400a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400a70 <deregister_tm_clones>:
  400a70:	b8 57 1c 60 00       	mov    $0x601c57,%eax
  400a75:	55                   	push   %rbp
  400a76:	48 2d 50 1c 60 00    	sub    $0x601c50,%rax
  400a7c:	48 83 f8 0e          	cmp    $0xe,%rax
  400a80:	48 89 e5             	mov    %rsp,%rbp
  400a83:	76 1b                	jbe    400aa0 <deregister_tm_clones+0x30>
  400a85:	b8 00 00 00 00       	mov    $0x0,%eax
  400a8a:	48 85 c0             	test   %rax,%rax
  400a8d:	74 11                	je     400aa0 <deregister_tm_clones+0x30>
  400a8f:	5d                   	pop    %rbp
  400a90:	bf 50 1c 60 00       	mov    $0x601c50,%edi
  400a95:	ff e0                	jmpq   *%rax
  400a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a9e:	00 00 
  400aa0:	5d                   	pop    %rbp
  400aa1:	c3                   	retq   
  400aa2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400aa9:	1f 84 00 00 00 00 00 

0000000000400ab0 <register_tm_clones>:
  400ab0:	be 50 1c 60 00       	mov    $0x601c50,%esi
  400ab5:	55                   	push   %rbp
  400ab6:	48 81 ee 50 1c 60 00 	sub    $0x601c50,%rsi
  400abd:	48 c1 fe 03          	sar    $0x3,%rsi
  400ac1:	48 89 e5             	mov    %rsp,%rbp
  400ac4:	48 89 f0             	mov    %rsi,%rax
  400ac7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400acb:	48 01 c6             	add    %rax,%rsi
  400ace:	48 d1 fe             	sar    %rsi
  400ad1:	74 15                	je     400ae8 <register_tm_clones+0x38>
  400ad3:	b8 00 00 00 00       	mov    $0x0,%eax
  400ad8:	48 85 c0             	test   %rax,%rax
  400adb:	74 0b                	je     400ae8 <register_tm_clones+0x38>
  400add:	5d                   	pop    %rbp
  400ade:	bf 50 1c 60 00       	mov    $0x601c50,%edi
  400ae3:	ff e0                	jmpq   *%rax
  400ae5:	0f 1f 00             	nopl   (%rax)
  400ae8:	5d                   	pop    %rbp
  400ae9:	c3                   	retq   
  400aea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400af0 <__do_global_dtors_aux>:
  400af0:	80 3d b1 11 20 00 00 	cmpb   $0x0,0x2011b1(%rip)        # 601ca8 <completed.6597>
  400af7:	75 11                	jne    400b0a <__do_global_dtors_aux+0x1a>
  400af9:	55                   	push   %rbp
  400afa:	48 89 e5             	mov    %rsp,%rbp
  400afd:	e8 6e ff ff ff       	callq  400a70 <deregister_tm_clones>
  400b02:	5d                   	pop    %rbp
  400b03:	c6 05 9e 11 20 00 01 	movb   $0x1,0x20119e(%rip)        # 601ca8 <completed.6597>
  400b0a:	f3 c3                	repz retq 
  400b0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b10 <frame_dummy>:
  400b10:	bf 90 19 60 00       	mov    $0x601990,%edi
  400b15:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400b19:	75 05                	jne    400b20 <frame_dummy+0x10>
  400b1b:	eb 93                	jmp    400ab0 <register_tm_clones>
  400b1d:	0f 1f 00             	nopl   (%rax)
  400b20:	b8 00 00 00 00       	mov    $0x0,%eax
  400b25:	48 85 c0             	test   %rax,%rax
  400b28:	74 f1                	je     400b1b <frame_dummy+0xb>
  400b2a:	55                   	push   %rbp
  400b2b:	48 89 e5             	mov    %rsp,%rbp
  400b2e:	ff d0                	callq  *%rax
  400b30:	5d                   	pop    %rbp
  400b31:	e9 7a ff ff ff       	jmpq   400ab0 <register_tm_clones>

0000000000400b36 <initCache>:
  400b36:	55                   	push   %rbp
  400b37:	48 89 e5             	mov    %rsp,%rbp
  400b3a:	48 83 ec 10          	sub    $0x10,%rsp
  400b3e:	8b 05 74 11 20 00    	mov    0x201174(%rip),%eax        # 601cb8 <b>
  400b44:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400b48:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400b4c:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
  400b53:	00 00 40 
  400b56:	66 0f 28 c8          	movapd %xmm0,%xmm1
  400b5a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b5e:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
  400b63:	e8 08 fe ff ff       	callq  400970 <pow@plt>
  400b68:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
  400b6c:	89 05 66 11 20 00    	mov    %eax,0x201166(%rip)        # 601cd8 <B>
  400b72:	8b 05 3c 11 20 00    	mov    0x20113c(%rip),%eax        # 601cb4 <s>
  400b78:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400b7c:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  400b80:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
  400b87:	00 00 40 
  400b8a:	66 0f 28 c8          	movapd %xmm0,%xmm1
  400b8e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b92:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
  400b97:	e8 d4 fd ff ff       	callq  400970 <pow@plt>
  400b9c:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
  400ba0:	89 05 42 11 20 00    	mov    %eax,0x201142(%rip)        # 601ce8 <S>
  400ba6:	c9                   	leaveq 
  400ba7:	c3                   	retq   

0000000000400ba8 <freeCache>:
  400ba8:	55                   	push   %rbp
  400ba9:	48 89 e5             	mov    %rsp,%rbp
  400bac:	48 83 ec 10          	sub    $0x10,%rsp
  400bb0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400bb7:	eb 23                	jmp    400bdc <freeCache+0x34>
  400bb9:	48 8b 05 20 11 20 00 	mov    0x201120(%rip),%rax        # 601ce0 <cache>
  400bc0:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400bc3:	48 63 d2             	movslq %edx,%rdx
  400bc6:	48 c1 e2 03          	shl    $0x3,%rdx
  400bca:	48 01 d0             	add    %rdx,%rax
  400bcd:	48 8b 00             	mov    (%rax),%rax
  400bd0:	48 89 c7             	mov    %rax,%rdi
  400bd3:	e8 38 fd ff ff       	callq  400910 <free@plt>
  400bd8:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400bdc:	8b 05 06 11 20 00    	mov    0x201106(%rip),%eax        # 601ce8 <S>
  400be2:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  400be5:	7c d2                	jl     400bb9 <freeCache+0x11>
  400be7:	48 8b 05 f2 10 20 00 	mov    0x2010f2(%rip),%rax        # 601ce0 <cache>
  400bee:	48 89 c7             	mov    %rax,%rdi
  400bf1:	e8 1a fd ff ff       	callq  400910 <free@plt>
  400bf6:	c9                   	leaveq 
  400bf7:	c3                   	retq   

0000000000400bf8 <accessData>:
  400bf8:	55                   	push   %rbp
  400bf9:	48 89 e5             	mov    %rsp,%rbp
  400bfc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400c00:	5d                   	pop    %rbp
  400c01:	c3                   	retq   

0000000000400c02 <replayTrace>:
  400c02:	55                   	push   %rbp
  400c03:	48 89 e5             	mov    %rsp,%rbp
  400c06:	48 81 ec 00 04 00 00 	sub    $0x400,%rsp
  400c0d:	48 89 bd 08 fc ff ff 	mov    %rdi,-0x3f8(%rbp)
  400c14:	48 8b 85 08 fc ff ff 	mov    -0x3f8(%rbp),%rax
  400c1b:	be e8 12 40 00       	mov    $0x4012e8,%esi
  400c20:	48 89 c7             	mov    %rax,%rdi
  400c23:	e8 a8 fd ff ff       	callq  4009d0 <fopen@plt>
  400c28:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400c2c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400c31:	75 3b                	jne    400c6e <replayTrace+0x6c>
  400c33:	e8 e8 fc ff ff       	callq  400920 <__errno_location@plt>
  400c38:	8b 00                	mov    (%rax),%eax
  400c3a:	89 c7                	mov    %eax,%edi
  400c3c:	e8 cf fd ff ff       	callq  400a10 <strerror@plt>
  400c41:	48 89 c1             	mov    %rax,%rcx
  400c44:	48 8b 05 55 10 20 00 	mov    0x201055(%rip),%rax        # 601ca0 <stderr@@GLIBC_2.2.5>
  400c4b:	48 8b 95 08 fc ff ff 	mov    -0x3f8(%rbp),%rdx
  400c52:	be ea 12 40 00       	mov    $0x4012ea,%esi
  400c57:	48 89 c7             	mov    %rax,%rdi
  400c5a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c5f:	e8 4c fd ff ff       	callq  4009b0 <fprintf@plt>
  400c64:	bf 01 00 00 00       	mov    $0x1,%edi
  400c69:	e8 92 fd ff ff       	callq  400a00 <exit@plt>
  400c6e:	90                   	nop
  400c6f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400c73:	48 8d 85 10 fc ff ff 	lea    -0x3f0(%rbp),%rax
  400c7a:	be e8 03 00 00       	mov    $0x3e8,%esi
  400c7f:	48 89 c7             	mov    %rax,%rdi
  400c82:	e8 19 fd ff ff       	callq  4009a0 <fgets@plt>
  400c87:	48 85 c0             	test   %rax,%rax
  400c8a:	75 e3                	jne    400c6f <replayTrace+0x6d>
  400c8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c90:	48 89 c7             	mov    %rax,%rdi
  400c93:	e8 a8 fc ff ff       	callq  400940 <fclose@plt>
  400c98:	c9                   	leaveq 
  400c99:	c3                   	retq   

0000000000400c9a <printUsage>:
  400c9a:	55                   	push   %rbp
  400c9b:	48 89 e5             	mov    %rsp,%rbp
  400c9e:	48 83 ec 10          	sub    $0x10,%rsp
  400ca2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400ca6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400caa:	48 8b 00             	mov    (%rax),%rax
  400cad:	48 89 c6             	mov    %rax,%rsi
  400cb0:	bf f8 12 40 00       	mov    $0x4012f8,%edi
  400cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  400cba:	e8 91 fc ff ff       	callq  400950 <printf@plt>
  400cbf:	bf 2e 13 40 00       	mov    $0x40132e,%edi
  400cc4:	e8 67 fc ff ff       	callq  400930 <puts@plt>
  400cc9:	bf 38 13 40 00       	mov    $0x401338,%edi
  400cce:	e8 5d fc ff ff       	callq  400930 <puts@plt>
  400cd3:	bf 60 13 40 00       	mov    $0x401360,%edi
  400cd8:	e8 53 fc ff ff       	callq  400930 <puts@plt>
  400cdd:	bf 88 13 40 00       	mov    $0x401388,%edi
  400ce2:	e8 49 fc ff ff       	callq  400930 <puts@plt>
  400ce7:	bf b0 13 40 00       	mov    $0x4013b0,%edi
  400cec:	e8 3f fc ff ff       	callq  400930 <puts@plt>
  400cf1:	bf d8 13 40 00       	mov    $0x4013d8,%edi
  400cf6:	e8 35 fc ff ff       	callq  400930 <puts@plt>
  400cfb:	bf 02 14 40 00       	mov    $0x401402,%edi
  400d00:	e8 2b fc ff ff       	callq  400930 <puts@plt>
  400d05:	bf 1b 14 40 00       	mov    $0x40141b,%edi
  400d0a:	e8 21 fc ff ff       	callq  400930 <puts@plt>
  400d0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d13:	48 8b 00             	mov    (%rax),%rax
  400d16:	48 89 c6             	mov    %rax,%rsi
  400d19:	bf 28 14 40 00       	mov    $0x401428,%edi
  400d1e:	b8 00 00 00 00       	mov    $0x0,%eax
  400d23:	e8 28 fc ff ff       	callq  400950 <printf@plt>
  400d28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d2c:	48 8b 00             	mov    (%rax),%rax
  400d2f:	48 89 c6             	mov    %rax,%rsi
  400d32:	bf 58 14 40 00       	mov    $0x401458,%edi
  400d37:	b8 00 00 00 00       	mov    $0x0,%eax
  400d3c:	e8 0f fc ff ff       	callq  400950 <printf@plt>
  400d41:	bf 00 00 00 00       	mov    $0x0,%edi
  400d46:	e8 b5 fc ff ff       	callq  400a00 <exit@plt>

0000000000400d4b <main>:
  400d4b:	55                   	push   %rbp
  400d4c:	48 89 e5             	mov    %rsp,%rbp
  400d4f:	48 83 ec 20          	sub    $0x20,%rsp
  400d53:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400d56:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400d5a:	e9 a9 00 00 00       	jmpq   400e08 <main+0xbd>
  400d5f:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  400d63:	83 e8 45             	sub    $0x45,%eax
  400d66:	83 f8 31             	cmp    $0x31,%eax
  400d69:	0f 87 83 00 00 00    	ja     400df2 <main+0xa7>
  400d6f:	89 c0                	mov    %eax,%eax
  400d71:	48 8b 04 c5 c8 14 40 	mov    0x4014c8(,%rax,8),%rax
  400d78:	00 
  400d79:	ff e0                	jmpq   *%rax
  400d7b:	48 8b 05 fe 0e 20 00 	mov    0x200efe(%rip),%rax        # 601c80 <optarg@@GLIBC_2.2.5>
  400d82:	48 89 c7             	mov    %rax,%rdi
  400d85:	e8 66 fc ff ff       	callq  4009f0 <atoi@plt>
  400d8a:	89 05 24 0f 20 00    	mov    %eax,0x200f24(%rip)        # 601cb4 <s>
  400d90:	eb 76                	jmp    400e08 <main+0xbd>
  400d92:	48 8b 05 e7 0e 20 00 	mov    0x200ee7(%rip),%rax        # 601c80 <optarg@@GLIBC_2.2.5>
  400d99:	48 89 c7             	mov    %rax,%rdi
  400d9c:	e8 4f fc ff ff       	callq  4009f0 <atoi@plt>
  400da1:	89 05 15 0f 20 00    	mov    %eax,0x200f15(%rip)        # 601cbc <E>
  400da7:	eb 5f                	jmp    400e08 <main+0xbd>
  400da9:	48 8b 05 d0 0e 20 00 	mov    0x200ed0(%rip),%rax        # 601c80 <optarg@@GLIBC_2.2.5>
  400db0:	48 89 c7             	mov    %rax,%rdi
  400db3:	e8 38 fc ff ff       	callq  4009f0 <atoi@plt>
  400db8:	89 05 fa 0e 20 00    	mov    %eax,0x200efa(%rip)        # 601cb8 <b>
  400dbe:	eb 48                	jmp    400e08 <main+0xbd>
  400dc0:	48 8b 05 b9 0e 20 00 	mov    0x200eb9(%rip),%rax        # 601c80 <optarg@@GLIBC_2.2.5>
  400dc7:	48 89 05 f2 0e 20 00 	mov    %rax,0x200ef2(%rip)        # 601cc0 <trace_file>
  400dce:	eb 38                	jmp    400e08 <main+0xbd>
  400dd0:	c7 05 d6 0e 20 00 01 	movl   $0x1,0x200ed6(%rip)        # 601cb0 <verbosity>
  400dd7:	00 00 00 
  400dda:	eb 2c                	jmp    400e08 <main+0xbd>
  400ddc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400de0:	48 89 c7             	mov    %rax,%rdi
  400de3:	e8 b2 fe ff ff       	callq  400c9a <printUsage>
  400de8:	bf 00 00 00 00       	mov    $0x0,%edi
  400ded:	e8 0e fc ff ff       	callq  400a00 <exit@plt>
  400df2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400df6:	48 89 c7             	mov    %rax,%rdi
  400df9:	e8 9c fe ff ff       	callq  400c9a <printUsage>
  400dfe:	bf 01 00 00 00       	mov    $0x1,%edi
  400e03:	e8 f8 fb ff ff       	callq  400a00 <exit@plt>
  400e08:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400e0c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400e0f:	ba 8b 14 40 00       	mov    $0x40148b,%edx
  400e14:	48 89 ce             	mov    %rcx,%rsi
  400e17:	89 c7                	mov    %eax,%edi
  400e19:	e8 c2 fb ff ff       	callq  4009e0 <getopt@plt>
  400e1e:	88 45 ff             	mov    %al,-0x1(%rbp)
  400e21:	80 7d ff ff          	cmpb   $0xff,-0x1(%rbp)
  400e25:	0f 85 34 ff ff ff    	jne    400d5f <main+0x14>
  400e2b:	8b 05 83 0e 20 00    	mov    0x200e83(%rip),%eax        # 601cb4 <s>
  400e31:	85 c0                	test   %eax,%eax
  400e33:	74 20                	je     400e55 <main+0x10a>
  400e35:	8b 05 81 0e 20 00    	mov    0x200e81(%rip),%eax        # 601cbc <E>
  400e3b:	85 c0                	test   %eax,%eax
  400e3d:	74 16                	je     400e55 <main+0x10a>
  400e3f:	8b 05 73 0e 20 00    	mov    0x200e73(%rip),%eax        # 601cb8 <b>
  400e45:	85 c0                	test   %eax,%eax
  400e47:	74 0c                	je     400e55 <main+0x10a>
  400e49:	48 8b 05 70 0e 20 00 	mov    0x200e70(%rip),%rax        # 601cc0 <trace_file>
  400e50:	48 85 c0             	test   %rax,%rax
  400e53:	75 2f                	jne    400e84 <main+0x139>
  400e55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400e59:	48 8b 00             	mov    (%rax),%rax
  400e5c:	48 89 c6             	mov    %rax,%rsi
  400e5f:	bf 98 14 40 00       	mov    $0x401498,%edi
  400e64:	b8 00 00 00 00       	mov    $0x0,%eax
  400e69:	e8 e2 fa ff ff       	callq  400950 <printf@plt>
  400e6e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400e72:	48 89 c7             	mov    %rax,%rdi
  400e75:	e8 20 fe ff ff       	callq  400c9a <printUsage>
  400e7a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e7f:	e8 7c fb ff ff       	callq  400a00 <exit@plt>
  400e84:	b8 00 00 00 00       	mov    $0x0,%eax
  400e89:	e8 a8 fc ff ff       	callq  400b36 <initCache>
  400e8e:	48 8b 05 2b 0e 20 00 	mov    0x200e2b(%rip),%rax        # 601cc0 <trace_file>
  400e95:	48 89 c7             	mov    %rax,%rdi
  400e98:	e8 65 fd ff ff       	callq  400c02 <replayTrace>
  400e9d:	b8 00 00 00 00       	mov    $0x0,%eax
  400ea2:	e8 01 fd ff ff       	callq  400ba8 <freeCache>
  400ea7:	8b 15 23 0e 20 00    	mov    0x200e23(%rip),%edx        # 601cd0 <eviction_count>
  400ead:	8b 0d 15 0e 20 00    	mov    0x200e15(%rip),%ecx        # 601cc8 <miss_count>
  400eb3:	8b 05 13 0e 20 00    	mov    0x200e13(%rip),%eax        # 601ccc <hit_count>
  400eb9:	89 ce                	mov    %ecx,%esi
  400ebb:	89 c7                	mov    %eax,%edi
  400ebd:	e8 07 00 00 00       	callq  400ec9 <printSummary>
  400ec2:	b8 00 00 00 00       	mov    $0x0,%eax
  400ec7:	c9                   	leaveq 
  400ec8:	c3                   	retq   

0000000000400ec9 <printSummary>:
  400ec9:	55                   	push   %rbp
  400eca:	48 89 e5             	mov    %rsp,%rbp
  400ecd:	48 83 ec 20          	sub    $0x20,%rsp
  400ed1:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400ed4:	89 75 e8             	mov    %esi,-0x18(%rbp)
  400ed7:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  400eda:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  400edd:	8b 55 e8             	mov    -0x18(%rbp),%edx
  400ee0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400ee3:	89 c6                	mov    %eax,%esi
  400ee5:	bf 58 16 40 00       	mov    $0x401658,%edi
  400eea:	b8 00 00 00 00       	mov    $0x0,%eax
  400eef:	e8 5c fa ff ff       	callq  400950 <printf@plt>
  400ef4:	be 78 16 40 00       	mov    $0x401678,%esi
  400ef9:	bf 7a 16 40 00       	mov    $0x40167a,%edi
  400efe:	e8 cd fa ff ff       	callq  4009d0 <fopen@plt>
  400f03:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400f07:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400f0c:	75 19                	jne    400f27 <printSummary+0x5e>
  400f0e:	b9 a7 16 40 00       	mov    $0x4016a7,%ecx
  400f13:	ba 15 00 00 00       	mov    $0x15,%edx
  400f18:	be 88 16 40 00       	mov    $0x401688,%esi
  400f1d:	bf 93 16 40 00       	mov    $0x401693,%edi
  400f22:	e8 39 fa ff ff       	callq  400960 <__assert_fail@plt>
  400f27:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  400f2a:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  400f2d:	8b 55 ec             	mov    -0x14(%rbp),%edx
  400f30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f34:	41 89 f0             	mov    %esi,%r8d
  400f37:	be 9d 16 40 00       	mov    $0x40169d,%esi
  400f3c:	48 89 c7             	mov    %rax,%rdi
  400f3f:	b8 00 00 00 00       	mov    $0x0,%eax
  400f44:	e8 67 fa ff ff       	callq  4009b0 <fprintf@plt>
  400f49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f4d:	48 89 c7             	mov    %rax,%rdi
  400f50:	e8 eb f9 ff ff       	callq  400940 <fclose@plt>
  400f55:	c9                   	leaveq 
  400f56:	c3                   	retq   

0000000000400f57 <initMatrix>:
  400f57:	55                   	push   %rbp
  400f58:	48 89 e5             	mov    %rsp,%rbp
  400f5b:	41 55                	push   %r13
  400f5d:	41 54                	push   %r12
  400f5f:	53                   	push   %rbx
  400f60:	48 83 ec 48          	sub    $0x48,%rsp
  400f64:	89 7d bc             	mov    %edi,-0x44(%rbp)
  400f67:	89 75 b8             	mov    %esi,-0x48(%rbp)
  400f6a:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
  400f6e:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  400f72:	8b 5d bc             	mov    -0x44(%rbp),%ebx
  400f75:	48 63 c3             	movslq %ebx,%rax
  400f78:	48 83 e8 01          	sub    $0x1,%rax
  400f7c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400f80:	48 63 c3             	movslq %ebx,%rax
  400f83:	49 89 c2             	mov    %rax,%r10
  400f86:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  400f8c:	44 8b 65 b8          	mov    -0x48(%rbp),%r12d
  400f90:	49 63 c4             	movslq %r12d,%rax
  400f93:	48 83 e8 01          	sub    $0x1,%rax
  400f97:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400f9b:	49 63 c4             	movslq %r12d,%rax
  400f9e:	49 89 c0             	mov    %rax,%r8
  400fa1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400fa7:	bf 00 00 00 00       	mov    $0x0,%edi
  400fac:	e8 0f fa ff ff       	callq  4009c0 <time@plt>
  400fb1:	89 c7                	mov    %eax,%edi
  400fb3:	e8 d8 f9 ff ff       	callq  400990 <srand@plt>
  400fb8:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  400fbf:	eb 75                	jmp    401036 <initMatrix+0xdf>
  400fc1:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
  400fc8:	eb 60                	jmp    40102a <initMatrix+0xd3>
  400fca:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400fcd:	48 63 d0             	movslq %eax,%rdx
  400fd0:	48 63 c3             	movslq %ebx,%rax
  400fd3:	48 0f af c2          	imul   %rdx,%rax
  400fd7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400fde:	00 
  400fdf:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400fe3:	4c 8d 2c 02          	lea    (%rdx,%rax,1),%r13
  400fe7:	e8 34 fa ff ff       	callq  400a20 <rand@plt>
  400fec:	89 c2                	mov    %eax,%edx
  400fee:	8b 45 d8             	mov    -0x28(%rbp),%eax
  400ff1:	48 98                	cltq   
  400ff3:	41 89 54 85 00       	mov    %edx,0x0(%r13,%rax,4)
  400ff8:	8b 45 d8             	mov    -0x28(%rbp),%eax
  400ffb:	48 63 d0             	movslq %eax,%rdx
  400ffe:	49 63 c4             	movslq %r12d,%rax
  401001:	48 0f af c2          	imul   %rdx,%rax
  401005:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40100c:	00 
  40100d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401011:	4c 8d 2c 02          	lea    (%rdx,%rax,1),%r13
  401015:	e8 06 fa ff ff       	callq  400a20 <rand@plt>
  40101a:	89 c2                	mov    %eax,%edx
  40101c:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40101f:	48 98                	cltq   
  401021:	41 89 54 85 00       	mov    %edx,0x0(%r13,%rax,4)
  401026:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
  40102a:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40102d:	3b 45 bc             	cmp    -0x44(%rbp),%eax
  401030:	7c 98                	jl     400fca <initMatrix+0x73>
  401032:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
  401036:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401039:	3b 45 b8             	cmp    -0x48(%rbp),%eax
  40103c:	7c 83                	jl     400fc1 <initMatrix+0x6a>
  40103e:	48 83 c4 48          	add    $0x48,%rsp
  401042:	5b                   	pop    %rbx
  401043:	41 5c                	pop    %r12
  401045:	41 5d                	pop    %r13
  401047:	5d                   	pop    %rbp
  401048:	c3                   	retq   

0000000000401049 <randMatrix>:
  401049:	55                   	push   %rbp
  40104a:	48 89 e5             	mov    %rsp,%rbp
  40104d:	41 54                	push   %r12
  40104f:	53                   	push   %rbx
  401050:	48 83 ec 20          	sub    $0x20,%rsp
  401054:	89 7d dc             	mov    %edi,-0x24(%rbp)
  401057:	89 75 d8             	mov    %esi,-0x28(%rbp)
  40105a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40105e:	8b 5d dc             	mov    -0x24(%rbp),%ebx
  401061:	48 63 c3             	movslq %ebx,%rax
  401064:	48 83 e8 01          	sub    $0x1,%rax
  401068:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40106c:	48 63 c3             	movslq %ebx,%rax
  40106f:	49 89 c0             	mov    %rax,%r8
  401072:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401078:	bf 00 00 00 00       	mov    $0x0,%edi
  40107d:	e8 3e f9 ff ff       	callq  4009c0 <time@plt>
  401082:	89 c7                	mov    %eax,%edi
  401084:	e8 07 f9 ff ff       	callq  400990 <srand@plt>
  401089:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401090:	eb 46                	jmp    4010d8 <randMatrix+0x8f>
  401092:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  401099:	eb 31                	jmp    4010cc <randMatrix+0x83>
  40109b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40109e:	48 63 d0             	movslq %eax,%rdx
  4010a1:	48 63 c3             	movslq %ebx,%rax
  4010a4:	48 0f af c2          	imul   %rdx,%rax
  4010a8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4010af:	00 
  4010b0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4010b4:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
  4010b8:	e8 63 f9 ff ff       	callq  400a20 <rand@plt>
  4010bd:	89 c2                	mov    %eax,%edx
  4010bf:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4010c2:	48 98                	cltq   
  4010c4:	41 89 14 84          	mov    %edx,(%r12,%rax,4)
  4010c8:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  4010cc:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4010cf:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  4010d2:	7c c7                	jl     40109b <randMatrix+0x52>
  4010d4:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  4010d8:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4010db:	3b 45 d8             	cmp    -0x28(%rbp),%eax
  4010de:	7c b2                	jl     401092 <randMatrix+0x49>
  4010e0:	48 83 c4 20          	add    $0x20,%rsp
  4010e4:	5b                   	pop    %rbx
  4010e5:	41 5c                	pop    %r12
  4010e7:	5d                   	pop    %rbp
  4010e8:	c3                   	retq   

00000000004010e9 <correctTrans>:
  4010e9:	55                   	push   %rbp
  4010ea:	48 89 e5             	mov    %rsp,%rbp
  4010ed:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4010f0:	89 75 d8             	mov    %esi,-0x28(%rbp)
  4010f3:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  4010f7:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  4010fb:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4010fe:	48 63 d0             	movslq %eax,%rdx
  401101:	48 83 ea 01          	sub    $0x1,%rdx
  401105:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  401109:	48 63 d0             	movslq %eax,%rdx
  40110c:	49 89 d2             	mov    %rdx,%r10
  40110f:	41 bb 00 00 00 00    	mov    $0x0,%r11d
  401115:	8b 55 d8             	mov    -0x28(%rbp),%edx
  401118:	48 63 ca             	movslq %edx,%rcx
  40111b:	48 83 e9 01          	sub    $0x1,%rcx
  40111f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  401123:	48 63 ca             	movslq %edx,%rcx
  401126:	49 89 c8             	mov    %rcx,%r8
  401129:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40112f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401136:	eb 6a                	jmp    4011a2 <correctTrans+0xb9>
  401138:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40113f:	eb 55                	jmp    401196 <correctTrans+0xad>
  401141:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401144:	48 63 f1             	movslq %ecx,%rsi
  401147:	48 63 c8             	movslq %eax,%rcx
  40114a:	48 0f af ce          	imul   %rsi,%rcx
  40114e:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
  401155:	00 
  401156:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40115a:	48 01 ce             	add    %rcx,%rsi
  40115d:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  401160:	48 63 c9             	movslq %ecx,%rcx
  401163:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
  401166:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  401169:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  40116c:	48 63 f1             	movslq %ecx,%rsi
  40116f:	48 63 ca             	movslq %edx,%rcx
  401172:	48 0f af ce          	imul   %rsi,%rcx
  401176:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
  40117d:	00 
  40117e:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  401182:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
  401186:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401189:	48 63 c9             	movslq %ecx,%rcx
  40118c:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  40118f:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
  401192:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401196:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  401199:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
  40119c:	7c a3                	jl     401141 <correctTrans+0x58>
  40119e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4011a2:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  4011a5:	3b 4d d8             	cmp    -0x28(%rbp),%ecx
  4011a8:	7c 8e                	jl     401138 <correctTrans+0x4f>
  4011aa:	5d                   	pop    %rbp
  4011ab:	c3                   	retq   

00000000004011ac <registerTransFunction>:
  4011ac:	55                   	push   %rbp
  4011ad:	48 89 e5             	mov    %rsp,%rbp
  4011b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4011b4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4011b8:	8b 05 16 0b 20 00    	mov    0x200b16(%rip),%eax        # 601cd4 <func_counter>
  4011be:	48 98                	cltq   
  4011c0:	48 c1 e0 05          	shl    $0x5,%rax
  4011c4:	48 8d 90 00 1d 60 00 	lea    0x601d00(%rax),%rdx
  4011cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011cf:	48 89 02             	mov    %rax,(%rdx)
  4011d2:	8b 05 fc 0a 20 00    	mov    0x200afc(%rip),%eax        # 601cd4 <func_counter>
  4011d8:	48 98                	cltq   
  4011da:	48 c1 e0 05          	shl    $0x5,%rax
  4011de:	48 8d 90 00 1d 60 00 	lea    0x601d00(%rax),%rdx
  4011e5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4011e9:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4011ed:	8b 05 e1 0a 20 00    	mov    0x200ae1(%rip),%eax        # 601cd4 <func_counter>
  4011f3:	48 98                	cltq   
  4011f5:	48 c1 e0 05          	shl    $0x5,%rax
  4011f9:	48 05 10 1d 60 00    	add    $0x601d10,%rax
  4011ff:	c6 00 00             	movb   $0x0,(%rax)
  401202:	8b 05 cc 0a 20 00    	mov    0x200acc(%rip),%eax        # 601cd4 <func_counter>
  401208:	48 98                	cltq   
  40120a:	48 c1 e0 05          	shl    $0x5,%rax
  40120e:	48 05 10 1d 60 00    	add    $0x601d10,%rax
  401214:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  40121b:	8b 05 b3 0a 20 00    	mov    0x200ab3(%rip),%eax        # 601cd4 <func_counter>
  401221:	48 98                	cltq   
  401223:	48 c1 e0 05          	shl    $0x5,%rax
  401227:	48 05 10 1d 60 00    	add    $0x601d10,%rax
  40122d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  401234:	8b 05 9a 0a 20 00    	mov    0x200a9a(%rip),%eax        # 601cd4 <func_counter>
  40123a:	48 98                	cltq   
  40123c:	48 c1 e0 05          	shl    $0x5,%rax
  401240:	48 05 10 1d 60 00    	add    $0x601d10,%rax
  401246:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
  40124d:	8b 05 81 0a 20 00    	mov    0x200a81(%rip),%eax        # 601cd4 <func_counter>
  401253:	83 c0 01             	add    $0x1,%eax
  401256:	89 05 78 0a 20 00    	mov    %eax,0x200a78(%rip)        # 601cd4 <func_counter>
  40125c:	5d                   	pop    %rbp
  40125d:	c3                   	retq   
  40125e:	66 90                	xchg   %ax,%ax

0000000000401260 <__libc_csu_init>:
  401260:	41 57                	push   %r15
  401262:	41 56                	push   %r14
  401264:	41 89 ff             	mov    %edi,%r15d
  401267:	41 55                	push   %r13
  401269:	41 54                	push   %r12
  40126b:	4c 8d 25 0e 07 20 00 	lea    0x20070e(%rip),%r12        # 601980 <__frame_dummy_init_array_entry>
  401272:	55                   	push   %rbp
  401273:	48 8d 2d 0e 07 20 00 	lea    0x20070e(%rip),%rbp        # 601988 <__init_array_end>
  40127a:	53                   	push   %rbx
  40127b:	49 89 f6             	mov    %rsi,%r14
  40127e:	49 89 d5             	mov    %rdx,%r13
  401281:	4c 29 e5             	sub    %r12,%rbp
  401284:	48 83 ec 08          	sub    $0x8,%rsp
  401288:	48 c1 fd 03          	sar    $0x3,%rbp
  40128c:	e8 4f f6 ff ff       	callq  4008e0 <_init>
  401291:	48 85 ed             	test   %rbp,%rbp
  401294:	74 20                	je     4012b6 <__libc_csu_init+0x56>
  401296:	31 db                	xor    %ebx,%ebx
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	4c 89 ea             	mov    %r13,%rdx
  4012a3:	4c 89 f6             	mov    %r14,%rsi
  4012a6:	44 89 ff             	mov    %r15d,%edi
  4012a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4012ad:	48 83 c3 01          	add    $0x1,%rbx
  4012b1:	48 39 eb             	cmp    %rbp,%rbx
  4012b4:	75 ea                	jne    4012a0 <__libc_csu_init+0x40>
  4012b6:	48 83 c4 08          	add    $0x8,%rsp
  4012ba:	5b                   	pop    %rbx
  4012bb:	5d                   	pop    %rbp
  4012bc:	41 5c                	pop    %r12
  4012be:	41 5d                	pop    %r13
  4012c0:	41 5e                	pop    %r14
  4012c2:	41 5f                	pop    %r15
  4012c4:	c3                   	retq   
  4012c5:	90                   	nop
  4012c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012cd:	00 00 00 

00000000004012d0 <__libc_csu_fini>:
  4012d0:	f3 c3                	repz retq 
  4012d2:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

00000000004012d4 <_fini>:
  4012d4:	48 83 ec 08          	sub    $0x8,%rsp
  4012d8:	48 83 c4 08          	add    $0x8,%rsp
  4012dc:	c3                   	retq   
