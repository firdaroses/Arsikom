
code.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 65 34 00 00 	mov    0x3465(%rip),%rax        # 140004480 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 66 34 00 00 	mov    0x3466(%rip),%rax        # 140004490 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 69 34 00 00 	mov    0x3469(%rip),%rax        # 1400044a0 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 2c 34 00 00 	mov    0x342c(%rip),%rax        # 140004470 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 140004340 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 f2 33 00 00 	mov    0x33f2(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   14000106e:	89 0d ac 5f 00 00    	mov    %ecx,0x5fac(%rip)        # 140007020 <managedapp>
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	74 46                	je     1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000107f:	e8 94 15 00 00       	call   140002618 <__set_app_type>
   140001084:	e8 17 16 00 00       	call   1400026a0 <__p__fmode>
   140001089:	48 8b 15 90 33 00 00 	mov    0x3390(%rip),%rdx        # 140004420 <.refptr._fmode>
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 f7 15 00 00       	call   140002690 <__p__commode>
   140001099:	48 8b 15 60 33 00 00 	mov    0x3360(%rip),%rdx        # 140004400 <.refptr._commode>
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 b7 05 00 00       	call   140001660 <_setargv>
   1400010a9:	48 8b 05 40 32 00 00 	mov    0x3240(%rip),%rax        # 1400042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010c5:	e8 4e 15 00 00       	call   140002618 <__set_app_type>
   1400010ca:	eb b8                	jmp    140001084 <pre_c_init+0x74>
   1400010cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010d9:	74 45                	je     140001120 <pre_c_init+0x110>
   1400010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010e0:	75 85                	jne    140001067 <pre_c_init+0x57>
   1400010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010e9:	0f 86 78 ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   1400010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010f5:	31 c9                	xor    %ecx,%ecx
   1400010f7:	85 d2                	test   %edx,%edx
   1400010f9:	0f 95 c1             	setne  %cl
   1400010fc:	e9 66 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   140001101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001108:	48 8b 0d 31 33 00 00 	mov    0x3331(%rip),%rcx        # 140004440 <.refptr._matherr>
   14000110f:	e8 fc 0b 00 00       	call   140001d10 <__mingw_setusermatherr>
   140001114:	31 c0                	xor    %eax,%eax
   140001116:	48 83 c4 28          	add    $0x28,%rsp
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001124:	0f 86 3d ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   14000112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001131:	31 c9                	xor    %ecx,%ecx
   140001133:	45 85 c0             	test   %r8d,%r8d
   140001136:	0f 95 c1             	setne  %cl
   140001139:	e9 29 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   14000113e:	66 90                	xchg   %ax,%ax

0000000140001140 <pre_cpp_init>:
   140001140:	48 83 ec 38          	sub    $0x38,%rsp
   140001144:	48 8b 05 05 33 00 00 	mov    0x3305(%rip),%rax        # 140004450 <.refptr._newmode>
   14000114b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007028 <envp>
   140001152:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007030 <argv>
   140001159:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007038 <argc>
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 b0 5e 00 00    	mov    %eax,0x5eb0(%rip)        # 140007018 <startinfo>
   140001168:	48 8d 05 a9 5e 00 00 	lea    0x5ea9(%rip),%rax        # 140007018 <startinfo>
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 95 32 00 00 	mov    0x3295(%rip),%rax        # 140004410 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 a5 14 00 00       	call   140002628 <__getmainargs>
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    $0x38,%rsp
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001190 <__tmainCRTStartup>:
   140001190:	41 55                	push   %r13
   140001192:	41 54                	push   %r12
   140001194:	55                   	push   %rbp
   140001195:	57                   	push   %rdi
   140001196:	56                   	push   %rsi
   140001197:	53                   	push   %rbx
   140001198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   1400011a4:	31 c0                	xor    %eax,%eax
   1400011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   1400011ab:	4c 89 c7             	mov    %r8,%rdi
   1400011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011b1:	48 8b 3d a8 32 00 00 	mov    0x32a8(%rip),%rdi        # 140004460 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 9c 02 00 00    	jne    140001460 <__tmainCRTStartup+0x2d0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 1400043a0 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 cb 6f 00 00 	mov    0x6fcb(%rip),%r12        # 1400081ac <__imp_Sleep>
   1400011e1:	eb 16                	jmp    1400011f9 <__tmainCRTStartup+0x69>
   1400011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011e8:	48 39 c6             	cmp    %rax,%rsi
   1400011eb:	0f 84 17 02 00 00    	je     140001408 <__tmainCRTStartup+0x278>
   1400011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011f6:	41 ff d4             	call   *%r12
   1400011f9:	48 89 e8             	mov    %rbp,%rax
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001201:	48 85 c0             	test   %rax,%rax
   140001204:	75 e2                	jne    1400011e8 <__tmainCRTStartup+0x58>
   140001206:	48 8b 35 a3 31 00 00 	mov    0x31a3(%rip),%rsi        # 1400043b0 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 05 02 00 00    	je     14000141f <__tmainCRTStartup+0x28f>
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 6c 02 00 00    	je     140001490 <__tmainCRTStartup+0x300>
   140001224:	c7 05 ee 5d 00 00 01 	movl   $0x1,0x5dee(%rip)        # 14000701c <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 fb 01 00 00    	je     140001434 <__tmainCRTStartup+0x2a4>
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 14 02 00 00    	je     140001455 <__tmainCRTStartup+0x2c5>
   140001241:	48 8b 05 e8 30 00 00 	mov    0x30e8(%rip),%rax        # 140004330 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 cf 07 00 00       	call   140001a30 <_pei386_runtime_relocator>
   140001261:	48 8b 0d c8 31 00 00 	mov    0x31c8(%rip),%rcx        # 140004430 <.refptr._gnu_exception_handler>
   140001268:	ff 15 36 6f 00 00    	call   *0x6f36(%rip)        # 1400081a4 <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 1b 31 00 00 	mov    0x311b(%rip),%rdx        # 140004390 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 ec 13 00 00       	call   140002670 <_set_invalid_parameter_handler>
   140001284:	e8 b7 05 00 00       	call   140001840 <_fpreset>
   140001289:	48 8b 05 b0 30 00 00 	mov    0x30b0(%rip),%rax        # 140004340 <.refptr.__image_base__>
   140001290:	48 89 05 79 5d 00 00 	mov    %rax,0x5d79(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001297:	e8 e4 13 00 00       	call   140002680 <__p__acmdln>
   14000129c:	31 c9                	xor    %ecx,%ecx
   14000129e:	48 8b 00             	mov    (%rax),%rax
   1400012a1:	48 85 c0             	test   %rax,%rax
   1400012a4:	75 1c                	jne    1400012c2 <__tmainCRTStartup+0x132>
   1400012a6:	eb 58                	jmp    140001300 <__tmainCRTStartup+0x170>
   1400012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400012af:	00 
   1400012b0:	84 d2                	test   %dl,%dl
   1400012b2:	74 45                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012b4:	83 e1 01             	and    $0x1,%ecx
   1400012b7:	74 27                	je     1400012e0 <__tmainCRTStartup+0x150>
   1400012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012be:	48 83 c0 01          	add    $0x1,%rax
   1400012c2:	0f b6 10             	movzbl (%rax),%edx
   1400012c5:	80 fa 20             	cmp    $0x20,%dl
   1400012c8:	7e e6                	jle    1400012b0 <__tmainCRTStartup+0x120>
   1400012ca:	41 89 c8             	mov    %ecx,%r8d
   1400012cd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012d1:	80 fa 22             	cmp    $0x22,%dl
   1400012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012d8:	eb e4                	jmp    1400012be <__tmainCRTStartup+0x12e>
   1400012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 15                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012ec:	48 83 c0 01          	add    $0x1,%rax
   1400012f0:	84 d2                	test   %dl,%dl
   1400012f2:	74 05                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012f4:	80 fa 20             	cmp    $0x20,%dl
   1400012f7:	7e ef                	jle    1400012e8 <__tmainCRTStartup+0x158>
   1400012f9:	48 89 05 08 5d 00 00 	mov    %rax,0x5d08(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e0 00 00 00    	jne    1400013f8 <__tmainCRTStartup+0x268>
   140001318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 140003000 <__data_start__>
   14000131e:	48 63 2d 13 5d 00 00 	movslq 0x5d13(%rip),%rbp        # 140007038 <argc>
   140001325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001329:	4d 63 e4             	movslq %r12d,%r12
   14000132c:	49 c1 e4 03          	shl    $0x3,%r12
   140001330:	4c 89 e1             	mov    %r12,%rcx
   140001333:	e8 80 12 00 00       	call   1400025b8 <malloc>
   140001338:	4c 8b 2d f1 5c 00 00 	mov    0x5cf1(%rip),%r13        # 140007030 <argv>
   14000133f:	48 89 c7             	mov    %rax,%rdi
   140001342:	85 ed                	test   %ebp,%ebp
   140001344:	7e 42                	jle    140001388 <__tmainCRTStartup+0x1f8>
   140001346:	31 db                	xor    %ebx,%ebx
   140001348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000134f:	00 
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 46 12 00 00       	call   1400025a0 <strlen>
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 52 12 00 00       	call   1400025b8 <malloc>
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	48 83 c3 01          	add    $0x1,%rbx
   140001379:	e8 32 12 00 00       	call   1400025b0 <memcpy>
   14000137e:	48 39 dd             	cmp    %rbx,%rbp
   140001381:	75 cd                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000138f:	48 89 3d 9a 5c 00 00 	mov    %rdi,0x5c9a(%rip)        # 140007030 <argv>
   140001396:	e8 95 02 00 00       	call   140001630 <__main>
   14000139b:	48 8b 05 ae 2f 00 00 	mov    0x2fae(%rip),%rax        # 140004350 <.refptr.__imp___initenv>
   1400013a2:	4c 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%r8        # 140007028 <envp>
   1400013a9:	8b 0d 89 5c 00 00    	mov    0x5c89(%rip),%ecx        # 140007038 <argc>
   1400013af:	48 8b 00             	mov    (%rax),%rax
   1400013b2:	4c 89 00             	mov    %r8,(%rax)
   1400013b5:	48 8b 15 74 5c 00 00 	mov    0x5c74(%rip),%rdx        # 140007030 <argv>
   1400013bc:	e8 7f 01 00 00       	call   140001540 <main>
   1400013c1:	8b 0d 59 5c 00 00    	mov    0x5c59(%rip),%ecx        # 140007020 <managedapp>
   1400013c7:	89 05 57 5c 00 00    	mov    %eax,0x5c57(%rip)        # 140007024 <mainret>
   1400013cd:	85 c9                	test   %ecx,%ecx
   1400013cf:	0f 84 d9 00 00 00    	je     1400014ae <__tmainCRTStartup+0x31e>
   1400013d5:	8b 15 41 5c 00 00    	mov    0x5c41(%rip),%edx        # 14000701c <has_cctor>
   1400013db:	85 d2                	test   %edx,%edx
   1400013dd:	0f 84 8d 00 00 00    	je     140001470 <__tmainCRTStartup+0x2e0>
   1400013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013ea:	5b                   	pop    %rbx
   1400013eb:	5e                   	pop    %rsi
   1400013ec:	5f                   	pop    %rdi
   1400013ed:	5d                   	pop    %rbp
   1400013ee:	41 5c                	pop    %r12
   1400013f0:	41 5d                	pop    %r13
   1400013f2:	c3                   	ret    
   1400013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013fd:	e9 16 ff ff ff       	jmp    140001318 <__tmainCRTStartup+0x188>
   140001402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001408:	48 8b 35 a1 2f 00 00 	mov    0x2fa1(%rip),%rsi        # 1400043b0 <.refptr.__native_startup_state>
   14000140f:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001414:	8b 06                	mov    (%rsi),%eax
   140001416:	83 f8 01             	cmp    $0x1,%eax
   140001419:	0f 85 fb fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   14000141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001424:	e8 df 11 00 00       	call   140002608 <_amsg_exit>
   140001429:	8b 06                	mov    (%rsi),%eax
   14000142b:	83 f8 01             	cmp    $0x1,%eax
   14000142e:	0f 85 05 fe ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   140001434:	48 8b 15 95 2f 00 00 	mov    0x2f95(%rip),%rdx        # 1400043d0 <.refptr.__xc_z>
   14000143b:	48 8b 0d 7e 2f 00 00 	mov    0x2f7e(%rip),%rcx        # 1400043c0 <.refptr.__xc_a>
   140001442:	e8 b1 11 00 00       	call   1400025f8 <_initterm>
   140001447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000144d:	85 ed                	test   %ebp,%ebp
   14000144f:	0f 85 ec fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   140001455:	31 c0                	xor    %eax,%eax
   140001457:	48 87 03             	xchg   %rax,(%rbx)
   14000145a:	e9 e2 fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   14000145f:	90                   	nop
   140001460:	4c 89 c1             	mov    %r8,%rcx
   140001463:	ff 15 23 6d 00 00    	call   *0x6d23(%rip)        # 14000818c <__imp_GetStartupInfoA>
   140001469:	e9 56 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000146e:	66 90                	xchg   %ax,%ax
   140001470:	e8 8b 11 00 00       	call   140002600 <_cexit>
   140001475:	8b 05 a9 5b 00 00    	mov    0x5ba9(%rip),%eax        # 140007024 <mainret>
   14000147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001482:	5b                   	pop    %rbx
   140001483:	5e                   	pop    %rsi
   140001484:	5f                   	pop    %rdi
   140001485:	5d                   	pop    %rbp
   140001486:	41 5c                	pop    %r12
   140001488:	41 5d                	pop    %r13
   14000148a:	c3                   	ret    
   14000148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001490:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 1400043f0 <.refptr.__xi_z>
   140001497:	48 8b 0d 42 2f 00 00 	mov    0x2f42(%rip),%rcx        # 1400043e0 <.refptr.__xi_a>
   14000149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014a4:	e8 4f 11 00 00       	call   1400025f8 <_initterm>
   1400014a9:	e9 80 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014ae:	89 c1                	mov    %eax,%ecx
   1400014b0:	e8 23 11 00 00       	call   1400025d8 <exit>
   1400014b5:	90                   	nop
   1400014b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014bd:	00 00 00 

00000001400014c0 <WinMainCRTStartup>:
   1400014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014c4 <.l_startw>:
   1400014c4:	48 8b 05 95 2f 00 00 	mov    0x2f95(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   1400014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014d1:	e8 ba fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014d6:	90                   	nop

00000001400014d7 <.l_endw>:
   1400014d7:	90                   	nop
   1400014d8:	48 83 c4 28          	add    $0x28,%rsp
   1400014dc:	c3                   	ret    
   1400014dd:	0f 1f 00             	nopl   (%rax)

00000001400014e0 <mainCRTStartup>:
   1400014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014e4 <.l_start>:
   1400014e4:	48 8b 05 75 2f 00 00 	mov    0x2f75(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   1400014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014f1:	e8 9a fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014f6:	90                   	nop

00000001400014f7 <.l_end>:
   1400014f7:	90                   	nop
   1400014f8:	48 83 c4 28          	add    $0x28,%rsp
   1400014fc:	c3                   	ret    
   1400014fd:	0f 1f 00             	nopl   (%rax)

0000000140001500 <atexit>:
   140001500:	48 83 ec 28          	sub    $0x28,%rsp
   140001504:	e8 e7 10 00 00       	call   1400025f0 <_onexit>
   140001509:	48 83 f8 01          	cmp    $0x1,%rax
   14000150d:	19 c0                	sbb    %eax,%eax
   14000150f:	48 83 c4 28          	add    $0x28,%rsp
   140001513:	c3                   	ret    
   140001514:	90                   	nop
   140001515:	90                   	nop
   140001516:	90                   	nop
   140001517:	90                   	nop
   140001518:	90                   	nop
   140001519:	90                   	nop
   14000151a:	90                   	nop
   14000151b:	90                   	nop
   14000151c:	90                   	nop
   14000151d:	90                   	nop
   14000151e:	90                   	nop
   14000151f:	90                   	nop

0000000140001520 <__gcc_register_frame>:
   140001520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001530 <__gcc_deregister_frame>
   140001527:	e9 d4 ff ff ff       	jmp    140001500 <atexit>
   14000152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001530 <__gcc_deregister_frame>:
   140001530:	c3                   	ret    
   140001531:	90                   	nop
   140001532:	90                   	nop
   140001533:	90                   	nop
   140001534:	90                   	nop
   140001535:	90                   	nop
   140001536:	90                   	nop
   140001537:	90                   	nop
   140001538:	90                   	nop
   140001539:	90                   	nop
   14000153a:	90                   	nop
   14000153b:	90                   	nop
   14000153c:	90                   	nop
   14000153d:	90                   	nop
   14000153e:	90                   	nop
   14000153f:	90                   	nop

0000000140001540 <main>:
   140001540:	55                   	push   %rbp
   140001541:	48 89 e5             	mov    %rsp,%rbp
   140001544:	48 83 ec 30          	sub    $0x30,%rsp
   140001548:	e8 e3 00 00 00       	call   140001630 <__main>
   14000154d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001554:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   14000155b:	eb 0a                	jmp    140001567 <main+0x27>
   14000155d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001560:	01 45 f8             	add    %eax,-0x8(%rbp)
   140001563:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001567:	81 7d fc f3 01 00 00 	cmpl   $0x1f3,-0x4(%rbp)
   14000156e:	7e ed                	jle    14000155d <main+0x1d>
   140001570:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140001573:	48 83 c4 30          	add    $0x30,%rsp
   140001577:	5d                   	pop    %rbp
   140001578:	c3                   	ret    
   140001579:	90                   	nop
   14000157a:	90                   	nop
   14000157b:	90                   	nop
   14000157c:	90                   	nop
   14000157d:	90                   	nop
   14000157e:	90                   	nop
   14000157f:	90                   	nop

0000000140001580 <__do_global_dtors>:
   140001580:	48 83 ec 28          	sub    $0x28,%rsp
   140001584:	48 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%rax        # 140003010 <p.0>
   14000158b:	48 8b 00             	mov    (%rax),%rax
   14000158e:	48 85 c0             	test   %rax,%rax
   140001591:	74 22                	je     1400015b5 <__do_global_dtors+0x35>
   140001593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001598:	ff d0                	call   *%rax
   14000159a:	48 8b 05 6f 1a 00 00 	mov    0x1a6f(%rip),%rax        # 140003010 <p.0>
   1400015a1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400015a5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400015a9:	48 89 15 60 1a 00 00 	mov    %rdx,0x1a60(%rip)        # 140003010 <p.0>
   1400015b0:	48 85 c0             	test   %rax,%rax
   1400015b3:	75 e3                	jne    140001598 <__do_global_dtors+0x18>
   1400015b5:	48 83 c4 28          	add    $0x28,%rsp
   1400015b9:	c3                   	ret    
   1400015ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015c0 <__do_global_ctors>:
   1400015c0:	56                   	push   %rsi
   1400015c1:	53                   	push   %rbx
   1400015c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015c6:	48 8b 15 33 2d 00 00 	mov    0x2d33(%rip),%rdx        # 140004300 <.refptr.__CTOR_LIST__>
   1400015cd:	48 8b 02             	mov    (%rdx),%rax
   1400015d0:	89 c1                	mov    %eax,%ecx
   1400015d2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015d5:	74 39                	je     140001610 <__do_global_ctors+0x50>
   1400015d7:	85 c9                	test   %ecx,%ecx
   1400015d9:	74 20                	je     1400015fb <__do_global_ctors+0x3b>
   1400015db:	89 c8                	mov    %ecx,%eax
   1400015dd:	83 e9 01             	sub    $0x1,%ecx
   1400015e0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015e4:	48 29 c8             	sub    %rcx,%rax
   1400015e7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015f0:	ff 13                	call   *(%rbx)
   1400015f2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015f6:	48 39 f3             	cmp    %rsi,%rbx
   1400015f9:	75 f5                	jne    1400015f0 <__do_global_ctors+0x30>
   1400015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001580 <__do_global_dtors>
   140001602:	48 83 c4 28          	add    $0x28,%rsp
   140001606:	5b                   	pop    %rbx
   140001607:	5e                   	pop    %rsi
   140001608:	e9 f3 fe ff ff       	jmp    140001500 <atexit>
   14000160d:	0f 1f 00             	nopl   (%rax)
   140001610:	31 c0                	xor    %eax,%eax
   140001612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001618:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000161c:	89 c1                	mov    %eax,%ecx
   14000161e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001623:	4c 89 c0             	mov    %r8,%rax
   140001626:	75 f0                	jne    140001618 <__do_global_ctors+0x58>
   140001628:	eb ad                	jmp    1400015d7 <__do_global_ctors+0x17>
   14000162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001630 <__main>:
   140001630:	8b 05 0a 5a 00 00    	mov    0x5a0a(%rip),%eax        # 140007040 <initialized>
   140001636:	85 c0                	test   %eax,%eax
   140001638:	74 06                	je     140001640 <__main+0x10>
   14000163a:	c3                   	ret    
   14000163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001640:	c7 05 f6 59 00 00 01 	movl   $0x1,0x59f6(%rip)        # 140007040 <initialized>
   140001647:	00 00 00 
   14000164a:	e9 71 ff ff ff       	jmp    1400015c0 <__do_global_ctors>
   14000164f:	90                   	nop

0000000140001650 <my_lconv_init>:
   140001650:	48 ff 25 9d 6b 00 00 	rex.W jmp *0x6b9d(%rip)        # 1400081f4 <__imp___lconv_init>
   140001657:	90                   	nop
   140001658:	90                   	nop
   140001659:	90                   	nop
   14000165a:	90                   	nop
   14000165b:	90                   	nop
   14000165c:	90                   	nop
   14000165d:	90                   	nop
   14000165e:	90                   	nop
   14000165f:	90                   	nop

0000000140001660 <_setargv>:
   140001660:	31 c0                	xor    %eax,%eax
   140001662:	c3                   	ret    
   140001663:	90                   	nop
   140001664:	90                   	nop
   140001665:	90                   	nop
   140001666:	90                   	nop
   140001667:	90                   	nop
   140001668:	90                   	nop
   140001669:	90                   	nop
   14000166a:	90                   	nop
   14000166b:	90                   	nop
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__dyn_tls_dtor>:
   140001670:	48 83 ec 28          	sub    $0x28,%rsp
   140001674:	83 fa 03             	cmp    $0x3,%edx
   140001677:	74 17                	je     140001690 <__dyn_tls_dtor+0x20>
   140001679:	85 d2                	test   %edx,%edx
   14000167b:	74 13                	je     140001690 <__dyn_tls_dtor+0x20>
   14000167d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001682:	48 83 c4 28          	add    $0x28,%rsp
   140001686:	c3                   	ret    
   140001687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000168e:	00 00 
   140001690:	e8 eb 09 00 00       	call   140002080 <__mingw_TLScallback>
   140001695:	b8 01 00 00 00       	mov    $0x1,%eax
   14000169a:	48 83 c4 28          	add    $0x28,%rsp
   14000169e:	c3                   	ret    
   14000169f:	90                   	nop

00000001400016a0 <__dyn_tls_init>:
   1400016a0:	56                   	push   %rsi
   1400016a1:	53                   	push   %rbx
   1400016a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016a6:	48 8b 05 33 2c 00 00 	mov    0x2c33(%rip),%rax        # 1400042e0 <.refptr._CRT_MT>
   1400016ad:	83 38 02             	cmpl   $0x2,(%rax)
   1400016b0:	74 06                	je     1400016b8 <__dyn_tls_init+0x18>
   1400016b2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400016b8:	83 fa 02             	cmp    $0x2,%edx
   1400016bb:	74 13                	je     1400016d0 <__dyn_tls_init+0x30>
   1400016bd:	83 fa 01             	cmp    $0x1,%edx
   1400016c0:	74 4e                	je     140001710 <__dyn_tls_init+0x70>
   1400016c2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016c7:	48 83 c4 28          	add    $0x28,%rsp
   1400016cb:	5b                   	pop    %rbx
   1400016cc:	5e                   	pop    %rsi
   1400016cd:	c3                   	ret    
   1400016ce:	66 90                	xchg   %ax,%ax
   1400016d0:	48 8d 1d 89 79 00 00 	lea    0x7989(%rip),%rbx        # 140009060 <__xd_z>
   1400016d7:	48 8d 35 82 79 00 00 	lea    0x7982(%rip),%rsi        # 140009060 <__xd_z>
   1400016de:	48 39 de             	cmp    %rbx,%rsi
   1400016e1:	74 df                	je     1400016c2 <__dyn_tls_init+0x22>
   1400016e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016e8:	48 8b 03             	mov    (%rbx),%rax
   1400016eb:	48 85 c0             	test   %rax,%rax
   1400016ee:	74 02                	je     1400016f2 <__dyn_tls_init+0x52>
   1400016f0:	ff d0                	call   *%rax
   1400016f2:	48 83 c3 08          	add    $0x8,%rbx
   1400016f6:	48 39 de             	cmp    %rbx,%rsi
   1400016f9:	75 ed                	jne    1400016e8 <__dyn_tls_init+0x48>
   1400016fb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001700:	48 83 c4 28          	add    $0x28,%rsp
   140001704:	5b                   	pop    %rbx
   140001705:	5e                   	pop    %rsi
   140001706:	c3                   	ret    
   140001707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000170e:	00 00 
   140001710:	e8 6b 09 00 00       	call   140002080 <__mingw_TLScallback>
   140001715:	b8 01 00 00 00       	mov    $0x1,%eax
   14000171a:	48 83 c4 28          	add    $0x28,%rsp
   14000171e:	5b                   	pop    %rbx
   14000171f:	5e                   	pop    %rsi
   140001720:	c3                   	ret    
   140001721:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001728:	00 00 00 00 
   14000172c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001730 <__tlregdtor>:
   140001730:	31 c0                	xor    %eax,%eax
   140001732:	c3                   	ret    
   140001733:	90                   	nop
   140001734:	90                   	nop
   140001735:	90                   	nop
   140001736:	90                   	nop
   140001737:	90                   	nop
   140001738:	90                   	nop
   140001739:	90                   	nop
   14000173a:	90                   	nop
   14000173b:	90                   	nop
   14000173c:	90                   	nop
   14000173d:	90                   	nop
   14000173e:	90                   	nop
   14000173f:	90                   	nop

0000000140001740 <_matherr>:
   140001740:	56                   	push   %rsi
   140001741:	53                   	push   %rbx
   140001742:	48 83 ec 78          	sub    $0x78,%rsp
   140001746:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000174b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001750:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001756:	83 39 06             	cmpl   $0x6,(%rcx)
   140001759:	0f 87 cd 00 00 00    	ja     14000182c <_matherr+0xec>
   14000175f:	8b 01                	mov    (%rcx),%eax
   140001761:	48 8d 15 1c 2a 00 00 	lea    0x2a1c(%rip),%rdx        # 140004184 <.rdata+0x124>
   140001768:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000176c:	48 01 d0             	add    %rdx,%rax
   14000176f:	ff e0                	jmp    *%rax
   140001771:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001778:	48 8d 1d 00 29 00 00 	lea    0x2900(%rip),%rbx        # 14000407f <.rdata+0x1f>
   14000177f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001785:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000178a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000178f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001793:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001798:	e8 a3 0e 00 00       	call   140002640 <__acrt_iob_func>
   14000179d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400017a4:	49 89 d8             	mov    %rbx,%r8
   1400017a7:	48 8d 15 aa 29 00 00 	lea    0x29aa(%rip),%rdx        # 140004158 <.rdata+0xf8>
   1400017ae:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400017b4:	48 89 c1             	mov    %rax,%rcx
   1400017b7:	49 89 f1             	mov    %rsi,%r9
   1400017ba:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017c0:	e8 0b 0e 00 00       	call   1400025d0 <fprintf>
   1400017c5:	90                   	nop
   1400017c6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400017cb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400017d0:	31 c0                	xor    %eax,%eax
   1400017d2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400017d8:	48 83 c4 78          	add    $0x78,%rsp
   1400017dc:	5b                   	pop    %rbx
   1400017dd:	5e                   	pop    %rsi
   1400017de:	c3                   	ret    
   1400017df:	90                   	nop
   1400017e0:	48 8d 1d 79 28 00 00 	lea    0x2879(%rip),%rbx        # 140004060 <.rdata>
   1400017e7:	eb 96                	jmp    14000177f <_matherr+0x3f>
   1400017e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017f0:	48 8d 1d c9 28 00 00 	lea    0x28c9(%rip),%rbx        # 1400040c0 <.rdata+0x60>
   1400017f7:	eb 86                	jmp    14000177f <_matherr+0x3f>
   1400017f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001800:	48 8d 1d 99 28 00 00 	lea    0x2899(%rip),%rbx        # 1400040a0 <.rdata+0x40>
   140001807:	e9 73 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000180c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001810:	48 8d 1d f9 28 00 00 	lea    0x28f9(%rip),%rbx        # 140004110 <.rdata+0xb0>
   140001817:	e9 63 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000181c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001820:	48 8d 1d c1 28 00 00 	lea    0x28c1(%rip),%rbx        # 1400040e8 <.rdata+0x88>
   140001827:	e9 53 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000182c:	48 8d 1d 13 29 00 00 	lea    0x2913(%rip),%rbx        # 140004146 <.rdata+0xe6>
   140001833:	e9 47 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   140001838:	90                   	nop
   140001839:	90                   	nop
   14000183a:	90                   	nop
   14000183b:	90                   	nop
   14000183c:	90                   	nop
   14000183d:	90                   	nop
   14000183e:	90                   	nop
   14000183f:	90                   	nop

0000000140001840 <_fpreset>:
   140001840:	db e3                	fninit 
   140001842:	c3                   	ret    
   140001843:	90                   	nop
   140001844:	90                   	nop
   140001845:	90                   	nop
   140001846:	90                   	nop
   140001847:	90                   	nop
   140001848:	90                   	nop
   140001849:	90                   	nop
   14000184a:	90                   	nop
   14000184b:	90                   	nop
   14000184c:	90                   	nop
   14000184d:	90                   	nop
   14000184e:	90                   	nop
   14000184f:	90                   	nop

0000000140001850 <__report_error>:
   140001850:	41 54                	push   %r12
   140001852:	53                   	push   %rbx
   140001853:	48 83 ec 38          	sub    $0x38,%rsp
   140001857:	49 89 cc             	mov    %rcx,%r12
   14000185a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000185f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001864:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001869:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000186e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001873:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001878:	e8 c3 0d 00 00       	call   140002640 <__acrt_iob_func>
   14000187d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001883:	ba 01 00 00 00       	mov    $0x1,%edx
   140001888:	48 8d 0d 11 29 00 00 	lea    0x2911(%rip),%rcx        # 1400041a0 <.rdata>
   14000188f:	49 89 c1             	mov    %rax,%r9
   140001892:	e8 29 0d 00 00       	call   1400025c0 <fwrite>
   140001897:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000189c:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400018a1:	e8 9a 0d 00 00       	call   140002640 <__acrt_iob_func>
   1400018a6:	4c 89 e2             	mov    %r12,%rdx
   1400018a9:	48 89 c1             	mov    %rax,%rcx
   1400018ac:	49 89 d8             	mov    %rbx,%r8
   1400018af:	e8 dc 0c 00 00       	call   140002590 <vfprintf>
   1400018b4:	e8 2f 0d 00 00       	call   1400025e8 <abort>
   1400018b9:	90                   	nop
   1400018ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400018c0 <mark_section_writable>:
   1400018c0:	41 54                	push   %r12
   1400018c2:	56                   	push   %rsi
   1400018c3:	53                   	push   %rbx
   1400018c4:	48 83 ec 50          	sub    $0x50,%rsp
   1400018c8:	48 63 1d e5 57 00 00 	movslq 0x57e5(%rip),%rbx        # 1400070b4 <maxSections>
   1400018cf:	49 89 cc             	mov    %rcx,%r12
   1400018d2:	85 db                	test   %ebx,%ebx
   1400018d4:	0f 8e 16 01 00 00    	jle    1400019f0 <mark_section_writable+0x130>
   1400018da:	48 8b 05 d7 57 00 00 	mov    0x57d7(%rip),%rax        # 1400070b8 <the_secs>
   1400018e1:	45 31 c9             	xor    %r9d,%r9d
   1400018e4:	48 83 c0 18          	add    $0x18,%rax
   1400018e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400018ef:	00 
   1400018f0:	4c 8b 00             	mov    (%rax),%r8
   1400018f3:	4d 39 e0             	cmp    %r12,%r8
   1400018f6:	77 13                	ja     14000190b <mark_section_writable+0x4b>
   1400018f8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018fc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018ff:	49 01 d0             	add    %rdx,%r8
   140001902:	4d 39 c4             	cmp    %r8,%r12
   140001905:	0f 82 8a 00 00 00    	jb     140001995 <mark_section_writable+0xd5>
   14000190b:	41 83 c1 01          	add    $0x1,%r9d
   14000190f:	48 83 c0 28          	add    $0x28,%rax
   140001913:	41 39 d9             	cmp    %ebx,%r9d
   140001916:	75 d8                	jne    1400018f0 <mark_section_writable+0x30>
   140001918:	4c 89 e1             	mov    %r12,%rcx
   14000191b:	e8 70 09 00 00       	call   140002290 <__mingw_GetSectionForAddress>
   140001920:	48 89 c6             	mov    %rax,%rsi
   140001923:	48 85 c0             	test   %rax,%rax
   140001926:	0f 84 e6 00 00 00    	je     140001a12 <mark_section_writable+0x152>
   14000192c:	48 8b 05 85 57 00 00 	mov    0x5785(%rip),%rax        # 1400070b8 <the_secs>
   140001933:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001937:	48 c1 e3 03          	shl    $0x3,%rbx
   14000193b:	48 01 d8             	add    %rbx,%rax
   14000193e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001942:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001948:	e8 73 0a 00 00       	call   1400023c0 <_GetPEImageBase>
   14000194d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001950:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001956:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000195a:	48 8b 05 57 57 00 00 	mov    0x5757(%rip),%rax        # 1400070b8 <the_secs>
   140001961:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001966:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000196b:	ff 15 53 68 00 00    	call   *0x6853(%rip)        # 1400081c4 <__imp_VirtualQuery>
   140001971:	48 85 c0             	test   %rax,%rax
   140001974:	0f 84 7d 00 00 00    	je     1400019f7 <mark_section_writable+0x137>
   14000197a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000197e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001981:	83 e2 bf             	and    $0xffffffbf,%edx
   140001984:	74 08                	je     14000198e <mark_section_writable+0xce>
   140001986:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001989:	83 e2 fb             	and    $0xfffffffb,%edx
   14000198c:	75 12                	jne    1400019a0 <mark_section_writable+0xe0>
   14000198e:	83 05 1f 57 00 00 01 	addl   $0x1,0x571f(%rip)        # 1400070b4 <maxSections>
   140001995:	48 83 c4 50          	add    $0x50,%rsp
   140001999:	5b                   	pop    %rbx
   14000199a:	5e                   	pop    %rsi
   14000199b:	41 5c                	pop    %r12
   14000199d:	c3                   	ret    
   14000199e:	66 90                	xchg   %ax,%ax
   1400019a0:	83 f8 02             	cmp    $0x2,%eax
   1400019a3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400019a8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400019ad:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1400019b3:	b8 40 00 00 00       	mov    $0x40,%eax
   1400019b8:	44 0f 45 c0          	cmovne %eax,%r8d
   1400019bc:	48 03 1d f5 56 00 00 	add    0x56f5(%rip),%rbx        # 1400070b8 <the_secs>
   1400019c3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400019c7:	49 89 d9             	mov    %rbx,%r9
   1400019ca:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400019ce:	ff 15 e8 67 00 00    	call   *0x67e8(%rip)        # 1400081bc <__imp_VirtualProtect>
   1400019d4:	85 c0                	test   %eax,%eax
   1400019d6:	75 b6                	jne    14000198e <mark_section_writable+0xce>
   1400019d8:	ff 15 a6 67 00 00    	call   *0x67a6(%rip)        # 140008184 <__imp_GetLastError>
   1400019de:	48 8d 0d 33 28 00 00 	lea    0x2833(%rip),%rcx        # 140004218 <.rdata+0x78>
   1400019e5:	89 c2                	mov    %eax,%edx
   1400019e7:	e8 64 fe ff ff       	call   140001850 <__report_error>
   1400019ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019f0:	31 db                	xor    %ebx,%ebx
   1400019f2:	e9 21 ff ff ff       	jmp    140001918 <mark_section_writable+0x58>
   1400019f7:	48 8b 05 ba 56 00 00 	mov    0x56ba(%rip),%rax        # 1400070b8 <the_secs>
   1400019fe:	8b 56 08             	mov    0x8(%rsi),%edx
   140001a01:	48 8d 0d d8 27 00 00 	lea    0x27d8(%rip),%rcx        # 1400041e0 <.rdata+0x40>
   140001a08:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001a0d:	e8 3e fe ff ff       	call   140001850 <__report_error>
   140001a12:	4c 89 e2             	mov    %r12,%rdx
   140001a15:	48 8d 0d a4 27 00 00 	lea    0x27a4(%rip),%rcx        # 1400041c0 <.rdata+0x20>
   140001a1c:	e8 2f fe ff ff       	call   140001850 <__report_error>
   140001a21:	90                   	nop
   140001a22:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001a29:	00 00 00 00 
   140001a2d:	0f 1f 00             	nopl   (%rax)

0000000140001a30 <_pei386_runtime_relocator>:
   140001a30:	55                   	push   %rbp
   140001a31:	41 57                	push   %r15
   140001a33:	41 56                	push   %r14
   140001a35:	41 55                	push   %r13
   140001a37:	41 54                	push   %r12
   140001a39:	57                   	push   %rdi
   140001a3a:	56                   	push   %rsi
   140001a3b:	53                   	push   %rbx
   140001a3c:	48 83 ec 38          	sub    $0x38,%rsp
   140001a40:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001a45:	8b 3d 65 56 00 00    	mov    0x5665(%rip),%edi        # 1400070b0 <was_init.0>
   140001a4b:	85 ff                	test   %edi,%edi
   140001a4d:	74 11                	je     140001a60 <_pei386_runtime_relocator+0x30>
   140001a4f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a53:	5b                   	pop    %rbx
   140001a54:	5e                   	pop    %rsi
   140001a55:	5f                   	pop    %rdi
   140001a56:	41 5c                	pop    %r12
   140001a58:	41 5d                	pop    %r13
   140001a5a:	41 5e                	pop    %r14
   140001a5c:	41 5f                	pop    %r15
   140001a5e:	5d                   	pop    %rbp
   140001a5f:	c3                   	ret    
   140001a60:	c7 05 46 56 00 00 01 	movl   $0x1,0x5646(%rip)        # 1400070b0 <was_init.0>
   140001a67:	00 00 00 
   140001a6a:	e8 a1 08 00 00       	call   140002310 <__mingw_GetSectionCount>
   140001a6f:	48 98                	cltq   
   140001a71:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a75:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a7c:	00 
   140001a7d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a81:	e8 ca 0a 00 00       	call   140002550 <___chkstk_ms>
   140001a86:	4c 8b 25 83 28 00 00 	mov    0x2883(%rip),%r12        # 140004310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a8d:	48 8b 1d 8c 28 00 00 	mov    0x288c(%rip),%rbx        # 140004320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a94:	c7 05 16 56 00 00 00 	movl   $0x0,0x5616(%rip)        # 1400070b4 <maxSections>
   140001a9b:	00 00 00 
   140001a9e:	48 29 c4             	sub    %rax,%rsp
   140001aa1:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001aa6:	48 89 05 0b 56 00 00 	mov    %rax,0x560b(%rip)        # 1400070b8 <the_secs>
   140001aad:	4c 89 e0             	mov    %r12,%rax
   140001ab0:	48 29 d8             	sub    %rbx,%rax
   140001ab3:	48 83 f8 07          	cmp    $0x7,%rax
   140001ab7:	7e 96                	jle    140001a4f <_pei386_runtime_relocator+0x1f>
   140001ab9:	8b 13                	mov    (%rbx),%edx
   140001abb:	48 83 f8 0b          	cmp    $0xb,%rax
   140001abf:	0f 8f 33 01 00 00    	jg     140001bf8 <_pei386_runtime_relocator+0x1c8>
   140001ac5:	8b 03                	mov    (%rbx),%eax
   140001ac7:	85 c0                	test   %eax,%eax
   140001ac9:	0f 85 a1 01 00 00    	jne    140001c70 <_pei386_runtime_relocator+0x240>
   140001acf:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ad2:	85 c0                	test   %eax,%eax
   140001ad4:	0f 85 96 01 00 00    	jne    140001c70 <_pei386_runtime_relocator+0x240>
   140001ada:	8b 53 08             	mov    0x8(%rbx),%edx
   140001add:	83 fa 01             	cmp    $0x1,%edx
   140001ae0:	0f 85 cb 01 00 00    	jne    140001cb1 <_pei386_runtime_relocator+0x281>
   140001ae6:	48 83 c3 0c          	add    $0xc,%rbx
   140001aea:	4c 39 e3             	cmp    %r12,%rbx
   140001aed:	0f 83 5c ff ff ff    	jae    140001a4f <_pei386_runtime_relocator+0x1f>
   140001af3:	4c 8b 2d 46 28 00 00 	mov    0x2846(%rip),%r13        # 140004340 <.refptr.__image_base__>
   140001afa:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001b01:	ff ff ff 
   140001b04:	eb 38                	jmp    140001b3e <_pei386_runtime_relocator+0x10e>
   140001b06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001b0d:	00 00 00 
   140001b10:	0f b6 16             	movzbl (%rsi),%edx
   140001b13:	49 89 d1             	mov    %rdx,%r9
   140001b16:	49 81 c9 00 ff ff ff 	or     $0xffffffffffffff00,%r9
   140001b1d:	84 d2                	test   %dl,%dl
   140001b1f:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001b23:	48 29 c2             	sub    %rax,%rdx
   140001b26:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001b2a:	48 89 f1             	mov    %rsi,%rcx
   140001b2d:	e8 8e fd ff ff       	call   1400018c0 <mark_section_writable>
   140001b32:	44 88 3e             	mov    %r15b,(%rsi)
   140001b35:	48 83 c3 0c          	add    $0xc,%rbx
   140001b39:	4c 39 e3             	cmp    %r12,%rbx
   140001b3c:	73 62                	jae    140001ba0 <_pei386_runtime_relocator+0x170>
   140001b3e:	8b 03                	mov    (%rbx),%eax
   140001b40:	8b 73 04             	mov    0x4(%rbx),%esi
   140001b43:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
   140001b47:	4c 01 e8             	add    %r13,%rax
   140001b4a:	4c 01 ee             	add    %r13,%rsi
   140001b4d:	48 8b 08             	mov    (%rax),%rcx
   140001b50:	83 fa 20             	cmp    $0x20,%edx
   140001b53:	0f 84 e7 00 00 00    	je     140001c40 <_pei386_runtime_relocator+0x210>
   140001b59:	0f 87 b9 00 00 00    	ja     140001c18 <_pei386_runtime_relocator+0x1e8>
   140001b5f:	83 fa 08             	cmp    $0x8,%edx
   140001b62:	74 ac                	je     140001b10 <_pei386_runtime_relocator+0xe0>
   140001b64:	83 fa 10             	cmp    $0x10,%edx
   140001b67:	0f 85 38 01 00 00    	jne    140001ca5 <_pei386_runtime_relocator+0x275>
   140001b6d:	0f b7 16             	movzwl (%rsi),%edx
   140001b70:	49 89 d1             	mov    %rdx,%r9
   140001b73:	49 81 c9 00 00 ff ff 	or     $0xffffffffffff0000,%r9
   140001b7a:	66 85 d2             	test   %dx,%dx
   140001b7d:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001b81:	48 83 c3 0c          	add    $0xc,%rbx
   140001b85:	48 29 c2             	sub    %rax,%rdx
   140001b88:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001b8c:	48 89 f1             	mov    %rsi,%rcx
   140001b8f:	e8 2c fd ff ff       	call   1400018c0 <mark_section_writable>
   140001b94:	66 44 89 3e          	mov    %r15w,(%rsi)
   140001b98:	4c 39 e3             	cmp    %r12,%rbx
   140001b9b:	72 a1                	jb     140001b3e <_pei386_runtime_relocator+0x10e>
   140001b9d:	0f 1f 00             	nopl   (%rax)
   140001ba0:	8b 15 0e 55 00 00    	mov    0x550e(%rip),%edx        # 1400070b4 <maxSections>
   140001ba6:	85 d2                	test   %edx,%edx
   140001ba8:	0f 8e a1 fe ff ff    	jle    140001a4f <_pei386_runtime_relocator+0x1f>
   140001bae:	48 8b 35 07 66 00 00 	mov    0x6607(%rip),%rsi        # 1400081bc <__imp_VirtualProtect>
   140001bb5:	31 db                	xor    %ebx,%ebx
   140001bb7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001bbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bc0:	48 8b 05 f1 54 00 00 	mov    0x54f1(%rip),%rax        # 1400070b8 <the_secs>
   140001bc7:	48 01 d8             	add    %rbx,%rax
   140001bca:	44 8b 00             	mov    (%rax),%r8d
   140001bcd:	45 85 c0             	test   %r8d,%r8d
   140001bd0:	74 0d                	je     140001bdf <_pei386_runtime_relocator+0x1af>
   140001bd2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001bd6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001bda:	4d 89 e1             	mov    %r12,%r9
   140001bdd:	ff d6                	call   *%rsi
   140001bdf:	83 c7 01             	add    $0x1,%edi
   140001be2:	48 83 c3 28          	add    $0x28,%rbx
   140001be6:	3b 3d c8 54 00 00    	cmp    0x54c8(%rip),%edi        # 1400070b4 <maxSections>
   140001bec:	7c d2                	jl     140001bc0 <_pei386_runtime_relocator+0x190>
   140001bee:	e9 5c fe ff ff       	jmp    140001a4f <_pei386_runtime_relocator+0x1f>
   140001bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bf8:	85 d2                	test   %edx,%edx
   140001bfa:	75 74                	jne    140001c70 <_pei386_runtime_relocator+0x240>
   140001bfc:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bff:	89 c1                	mov    %eax,%ecx
   140001c01:	0b 4b 08             	or     0x8(%rbx),%ecx
   140001c04:	0f 85 c8 fe ff ff    	jne    140001ad2 <_pei386_runtime_relocator+0xa2>
   140001c0a:	48 83 c3 0c          	add    $0xc,%rbx
   140001c0e:	e9 b2 fe ff ff       	jmp    140001ac5 <_pei386_runtime_relocator+0x95>
   140001c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c18:	83 fa 40             	cmp    $0x40,%edx
   140001c1b:	0f 85 84 00 00 00    	jne    140001ca5 <_pei386_runtime_relocator+0x275>
   140001c21:	4c 8b 3e             	mov    (%rsi),%r15
   140001c24:	49 29 c7             	sub    %rax,%r15
   140001c27:	49 01 cf             	add    %rcx,%r15
   140001c2a:	48 89 f1             	mov    %rsi,%rcx
   140001c2d:	e8 8e fc ff ff       	call   1400018c0 <mark_section_writable>
   140001c32:	4c 89 3e             	mov    %r15,(%rsi)
   140001c35:	e9 fb fe ff ff       	jmp    140001b35 <_pei386_runtime_relocator+0x105>
   140001c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c40:	8b 16                	mov    (%rsi),%edx
   140001c42:	49 89 d0             	mov    %rdx,%r8
   140001c45:	4c 09 f2             	or     %r14,%rdx
   140001c48:	45 85 c0             	test   %r8d,%r8d
   140001c4b:	49 0f 49 d0          	cmovns %r8,%rdx
   140001c4f:	48 29 c2             	sub    %rax,%rdx
   140001c52:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001c56:	48 89 f1             	mov    %rsi,%rcx
   140001c59:	e8 62 fc ff ff       	call   1400018c0 <mark_section_writable>
   140001c5e:	44 89 3e             	mov    %r15d,(%rsi)
   140001c61:	e9 cf fe ff ff       	jmp    140001b35 <_pei386_runtime_relocator+0x105>
   140001c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c6d:	00 00 00 
   140001c70:	4c 39 e3             	cmp    %r12,%rbx
   140001c73:	0f 83 d6 fd ff ff    	jae    140001a4f <_pei386_runtime_relocator+0x1f>
   140001c79:	4c 8b 35 c0 26 00 00 	mov    0x26c0(%rip),%r14        # 140004340 <.refptr.__image_base__>
   140001c80:	8b 73 04             	mov    0x4(%rbx),%esi
   140001c83:	44 8b 2b             	mov    (%rbx),%r13d
   140001c86:	48 83 c3 08          	add    $0x8,%rbx
   140001c8a:	4c 01 f6             	add    %r14,%rsi
   140001c8d:	44 03 2e             	add    (%rsi),%r13d
   140001c90:	48 89 f1             	mov    %rsi,%rcx
   140001c93:	e8 28 fc ff ff       	call   1400018c0 <mark_section_writable>
   140001c98:	44 89 2e             	mov    %r13d,(%rsi)
   140001c9b:	4c 39 e3             	cmp    %r12,%rbx
   140001c9e:	72 e0                	jb     140001c80 <_pei386_runtime_relocator+0x250>
   140001ca0:	e9 fb fe ff ff       	jmp    140001ba0 <_pei386_runtime_relocator+0x170>
   140001ca5:	48 8d 0d cc 25 00 00 	lea    0x25cc(%rip),%rcx        # 140004278 <.rdata+0xd8>
   140001cac:	e8 9f fb ff ff       	call   140001850 <__report_error>
   140001cb1:	48 8d 0d 88 25 00 00 	lea    0x2588(%rip),%rcx        # 140004240 <.rdata+0xa0>
   140001cb8:	e8 93 fb ff ff       	call   140001850 <__report_error>
   140001cbd:	90                   	nop
   140001cbe:	90                   	nop
   140001cbf:	90                   	nop

0000000140001cc0 <__mingw_raise_matherr>:
   140001cc0:	48 83 ec 58          	sub    $0x58,%rsp
   140001cc4:	48 8b 05 f5 53 00 00 	mov    0x53f5(%rip),%rax        # 1400070c0 <stUserMathErr>
   140001ccb:	48 85 c0             	test   %rax,%rax
   140001cce:	74 2c                	je     140001cfc <__mingw_raise_matherr+0x3c>
   140001cd0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001cd7:	00 00 
   140001cd9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001cdd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001ce2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001ce7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001ced:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001cf3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001cf9:	ff d0                	call   *%rax
   140001cfb:	90                   	nop
   140001cfc:	48 83 c4 58          	add    $0x58,%rsp
   140001d00:	c3                   	ret    
   140001d01:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001d08:	00 00 00 00 
   140001d0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001d10 <__mingw_setusermatherr>:
   140001d10:	48 89 0d a9 53 00 00 	mov    %rcx,0x53a9(%rip)        # 1400070c0 <stUserMathErr>
   140001d17:	e9 f4 08 00 00       	jmp    140002610 <__setusermatherr>
   140001d1c:	90                   	nop
   140001d1d:	90                   	nop
   140001d1e:	90                   	nop
   140001d1f:	90                   	nop

0000000140001d20 <_gnu_exception_handler>:
   140001d20:	41 54                	push   %r12
   140001d22:	48 83 ec 20          	sub    $0x20,%rsp
   140001d26:	48 8b 11             	mov    (%rcx),%rdx
   140001d29:	8b 02                	mov    (%rdx),%eax
   140001d2b:	49 89 cc             	mov    %rcx,%r12
   140001d2e:	89 c1                	mov    %eax,%ecx
   140001d30:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d36:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d3c:	0f 84 be 00 00 00    	je     140001e00 <_gnu_exception_handler+0xe0>
   140001d42:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d47:	0f 87 9a 00 00 00    	ja     140001de7 <_gnu_exception_handler+0xc7>
   140001d4d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d52:	76 44                	jbe    140001d98 <_gnu_exception_handler+0x78>
   140001d54:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d59:	83 f8 09             	cmp    $0x9,%eax
   140001d5c:	77 2a                	ja     140001d88 <_gnu_exception_handler+0x68>
   140001d5e:	48 8d 15 4b 25 00 00 	lea    0x254b(%rip),%rdx        # 1400042b0 <.rdata>
   140001d65:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d69:	48 01 d0             	add    %rdx,%rax
   140001d6c:	ff e0                	jmp    *%rax
   140001d6e:	66 90                	xchg   %ax,%ax
   140001d70:	ba 01 00 00 00       	mov    $0x1,%edx
   140001d75:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001d7a:	e8 29 08 00 00       	call   1400025a8 <signal>
   140001d7f:	e8 bc fa ff ff       	call   140001840 <_fpreset>
   140001d84:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001d8d:	48 83 c4 20          	add    $0x20,%rsp
   140001d91:	41 5c                	pop    %r12
   140001d93:	c3                   	ret    
   140001d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d98:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001d9d:	0f 84 dd 00 00 00    	je     140001e80 <_gnu_exception_handler+0x160>
   140001da3:	76 3b                	jbe    140001de0 <_gnu_exception_handler+0xc0>
   140001da5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001daa:	74 dc                	je     140001d88 <_gnu_exception_handler+0x68>
   140001dac:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001db1:	75 34                	jne    140001de7 <_gnu_exception_handler+0xc7>
   140001db3:	31 d2                	xor    %edx,%edx
   140001db5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dba:	e8 e9 07 00 00       	call   1400025a8 <signal>
   140001dbf:	48 83 f8 01          	cmp    $0x1,%rax
   140001dc3:	0f 84 e3 00 00 00    	je     140001eac <_gnu_exception_handler+0x18c>
   140001dc9:	48 85 c0             	test   %rax,%rax
   140001dcc:	74 19                	je     140001de7 <_gnu_exception_handler+0xc7>
   140001dce:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dd3:	ff d0                	call   *%rax
   140001dd5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001dda:	eb b1                	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001ddc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001de0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001de5:	74 a1                	je     140001d88 <_gnu_exception_handler+0x68>
   140001de7:	48 8b 05 f2 52 00 00 	mov    0x52f2(%rip),%rax        # 1400070e0 <__mingw_oldexcpt_handler>
   140001dee:	48 85 c0             	test   %rax,%rax
   140001df1:	74 1d                	je     140001e10 <_gnu_exception_handler+0xf0>
   140001df3:	4c 89 e1             	mov    %r12,%rcx
   140001df6:	48 83 c4 20          	add    $0x20,%rsp
   140001dfa:	41 5c                	pop    %r12
   140001dfc:	48 ff e0             	rex.W jmp *%rax
   140001dff:	90                   	nop
   140001e00:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e04:	0f 85 38 ff ff ff    	jne    140001d42 <_gnu_exception_handler+0x22>
   140001e0a:	e9 79 ff ff ff       	jmp    140001d88 <_gnu_exception_handler+0x68>
   140001e0f:	90                   	nop
   140001e10:	31 c0                	xor    %eax,%eax
   140001e12:	48 83 c4 20          	add    $0x20,%rsp
   140001e16:	41 5c                	pop    %r12
   140001e18:	c3                   	ret    
   140001e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001e20:	31 d2                	xor    %edx,%edx
   140001e22:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e27:	e8 7c 07 00 00       	call   1400025a8 <signal>
   140001e2c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e30:	0f 84 3a ff ff ff    	je     140001d70 <_gnu_exception_handler+0x50>
   140001e36:	48 85 c0             	test   %rax,%rax
   140001e39:	74 ac                	je     140001de7 <_gnu_exception_handler+0xc7>
   140001e3b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e40:	ff d0                	call   *%rax
   140001e42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e47:	e9 41 ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001e4c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e50:	31 d2                	xor    %edx,%edx
   140001e52:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e57:	e8 4c 07 00 00       	call   1400025a8 <signal>
   140001e5c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e60:	75 d4                	jne    140001e36 <_gnu_exception_handler+0x116>
   140001e62:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e67:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e6c:	e8 37 07 00 00       	call   1400025a8 <signal>
   140001e71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e76:	e9 12 ff ff ff       	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001e80:	31 d2                	xor    %edx,%edx
   140001e82:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e87:	e8 1c 07 00 00       	call   1400025a8 <signal>
   140001e8c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e90:	74 31                	je     140001ec3 <_gnu_exception_handler+0x1a3>
   140001e92:	48 85 c0             	test   %rax,%rax
   140001e95:	0f 84 4c ff ff ff    	je     140001de7 <_gnu_exception_handler+0xc7>
   140001e9b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ea0:	ff d0                	call   *%rax
   140001ea2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001ea7:	e9 e1 fe ff ff       	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001eac:	ba 01 00 00 00       	mov    $0x1,%edx
   140001eb1:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eb6:	e8 ed 06 00 00       	call   1400025a8 <signal>
   140001ebb:	83 c8 ff             	or     $0xffffffff,%eax
   140001ebe:	e9 ca fe ff ff       	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001ec3:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ec8:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ecd:	e8 d6 06 00 00       	call   1400025a8 <signal>
   140001ed2:	83 c8 ff             	or     $0xffffffff,%eax
   140001ed5:	e9 b3 fe ff ff       	jmp    140001d8d <_gnu_exception_handler+0x6d>
   140001eda:	90                   	nop
   140001edb:	90                   	nop
   140001edc:	90                   	nop
   140001edd:	90                   	nop
   140001ede:	90                   	nop
   140001edf:	90                   	nop

0000000140001ee0 <__mingwthr_run_key_dtors.part.0>:
   140001ee0:	41 55                	push   %r13
   140001ee2:	41 54                	push   %r12
   140001ee4:	57                   	push   %rdi
   140001ee5:	56                   	push   %rsi
   140001ee6:	53                   	push   %rbx
   140001ee7:	48 83 ec 20          	sub    $0x20,%rsp
   140001eeb:	4c 8d 2d 2e 52 00 00 	lea    0x522e(%rip),%r13        # 140007120 <__mingwthr_cs>
   140001ef2:	4c 89 e9             	mov    %r13,%rcx
   140001ef5:	ff 15 81 62 00 00    	call   *0x6281(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140001efb:	48 8b 1d fe 51 00 00 	mov    0x51fe(%rip),%rbx        # 140007100 <key_dtor_list>
   140001f02:	48 85 db             	test   %rbx,%rbx
   140001f05:	74 35                	je     140001f3c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f07:	48 8b 3d a6 62 00 00 	mov    0x62a6(%rip),%rdi        # 1400081b4 <__imp_TlsGetValue>
   140001f0e:	48 8b 35 6f 62 00 00 	mov    0x626f(%rip),%rsi        # 140008184 <__imp_GetLastError>
   140001f15:	0f 1f 00             	nopl   (%rax)
   140001f18:	8b 0b                	mov    (%rbx),%ecx
   140001f1a:	ff d7                	call   *%rdi
   140001f1c:	49 89 c4             	mov    %rax,%r12
   140001f1f:	ff d6                	call   *%rsi
   140001f21:	85 c0                	test   %eax,%eax
   140001f23:	75 0e                	jne    140001f33 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f25:	4d 85 e4             	test   %r12,%r12
   140001f28:	74 09                	je     140001f33 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f2a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001f2e:	4c 89 e1             	mov    %r12,%rcx
   140001f31:	ff d0                	call   *%rax
   140001f33:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f37:	48 85 db             	test   %rbx,%rbx
   140001f3a:	75 dc                	jne    140001f18 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f3c:	4c 89 e9             	mov    %r13,%rcx
   140001f3f:	48 83 c4 20          	add    $0x20,%rsp
   140001f43:	5b                   	pop    %rbx
   140001f44:	5e                   	pop    %rsi
   140001f45:	5f                   	pop    %rdi
   140001f46:	41 5c                	pop    %r12
   140001f48:	41 5d                	pop    %r13
   140001f4a:	48 ff 25 4b 62 00 00 	rex.W jmp *0x624b(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   140001f51:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001f58:	00 00 00 00 
   140001f5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001f60 <___w64_mingwthr_add_key_dtor>:
   140001f60:	41 54                	push   %r12
   140001f62:	57                   	push   %rdi
   140001f63:	56                   	push   %rsi
   140001f64:	53                   	push   %rbx
   140001f65:	48 83 ec 28          	sub    $0x28,%rsp
   140001f69:	8b 05 99 51 00 00    	mov    0x5199(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140001f6f:	89 cf                	mov    %ecx,%edi
   140001f71:	48 89 d6             	mov    %rdx,%rsi
   140001f74:	85 c0                	test   %eax,%eax
   140001f76:	75 10                	jne    140001f88 <___w64_mingwthr_add_key_dtor+0x28>
   140001f78:	48 83 c4 28          	add    $0x28,%rsp
   140001f7c:	5b                   	pop    %rbx
   140001f7d:	5e                   	pop    %rsi
   140001f7e:	5f                   	pop    %rdi
   140001f7f:	41 5c                	pop    %r12
   140001f81:	c3                   	ret    
   140001f82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001f88:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f8d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f92:	e8 49 06 00 00       	call   1400025e0 <calloc>
   140001f97:	48 89 c3             	mov    %rax,%rbx
   140001f9a:	48 85 c0             	test   %rax,%rax
   140001f9d:	74 3d                	je     140001fdc <___w64_mingwthr_add_key_dtor+0x7c>
   140001f9f:	4c 8d 25 7a 51 00 00 	lea    0x517a(%rip),%r12        # 140007120 <__mingwthr_cs>
   140001fa6:	89 38                	mov    %edi,(%rax)
   140001fa8:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001fac:	4c 89 e1             	mov    %r12,%rcx
   140001faf:	ff 15 c7 61 00 00    	call   *0x61c7(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140001fb5:	48 8b 05 44 51 00 00 	mov    0x5144(%rip),%rax        # 140007100 <key_dtor_list>
   140001fbc:	4c 89 e1             	mov    %r12,%rcx
   140001fbf:	48 89 1d 3a 51 00 00 	mov    %rbx,0x513a(%rip)        # 140007100 <key_dtor_list>
   140001fc6:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001fca:	ff 15 cc 61 00 00    	call   *0x61cc(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   140001fd0:	31 c0                	xor    %eax,%eax
   140001fd2:	48 83 c4 28          	add    $0x28,%rsp
   140001fd6:	5b                   	pop    %rbx
   140001fd7:	5e                   	pop    %rsi
   140001fd8:	5f                   	pop    %rdi
   140001fd9:	41 5c                	pop    %r12
   140001fdb:	c3                   	ret    
   140001fdc:	83 c8 ff             	or     $0xffffffff,%eax
   140001fdf:	eb 97                	jmp    140001f78 <___w64_mingwthr_add_key_dtor+0x18>
   140001fe1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001fe8:	00 00 00 00 
   140001fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001ff0 <___w64_mingwthr_remove_key_dtor>:
   140001ff0:	41 54                	push   %r12
   140001ff2:	53                   	push   %rbx
   140001ff3:	48 83 ec 28          	sub    $0x28,%rsp
   140001ff7:	8b 05 0b 51 00 00    	mov    0x510b(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140001ffd:	89 cb                	mov    %ecx,%ebx
   140001fff:	85 c0                	test   %eax,%eax
   140002001:	75 0d                	jne    140002010 <___w64_mingwthr_remove_key_dtor+0x20>
   140002003:	31 c0                	xor    %eax,%eax
   140002005:	48 83 c4 28          	add    $0x28,%rsp
   140002009:	5b                   	pop    %rbx
   14000200a:	41 5c                	pop    %r12
   14000200c:	c3                   	ret    
   14000200d:	0f 1f 00             	nopl   (%rax)
   140002010:	4c 8d 25 09 51 00 00 	lea    0x5109(%rip),%r12        # 140007120 <__mingwthr_cs>
   140002017:	4c 89 e1             	mov    %r12,%rcx
   14000201a:	ff 15 5c 61 00 00    	call   *0x615c(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140002020:	48 8b 0d d9 50 00 00 	mov    0x50d9(%rip),%rcx        # 140007100 <key_dtor_list>
   140002027:	48 85 c9             	test   %rcx,%rcx
   14000202a:	74 27                	je     140002053 <___w64_mingwthr_remove_key_dtor+0x63>
   14000202c:	31 d2                	xor    %edx,%edx
   14000202e:	eb 0b                	jmp    14000203b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002030:	48 89 ca             	mov    %rcx,%rdx
   140002033:	48 85 c0             	test   %rax,%rax
   140002036:	74 1b                	je     140002053 <___w64_mingwthr_remove_key_dtor+0x63>
   140002038:	48 89 c1             	mov    %rax,%rcx
   14000203b:	8b 01                	mov    (%rcx),%eax
   14000203d:	39 d8                	cmp    %ebx,%eax
   14000203f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002043:	75 eb                	jne    140002030 <___w64_mingwthr_remove_key_dtor+0x40>
   140002045:	48 85 d2             	test   %rdx,%rdx
   140002048:	74 26                	je     140002070 <___w64_mingwthr_remove_key_dtor+0x80>
   14000204a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000204e:	e8 75 05 00 00       	call   1400025c8 <free>
   140002053:	4c 89 e1             	mov    %r12,%rcx
   140002056:	ff 15 40 61 00 00    	call   *0x6140(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   14000205c:	31 c0                	xor    %eax,%eax
   14000205e:	48 83 c4 28          	add    $0x28,%rsp
   140002062:	5b                   	pop    %rbx
   140002063:	41 5c                	pop    %r12
   140002065:	c3                   	ret    
   140002066:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000206d:	00 00 00 
   140002070:	48 89 05 89 50 00 00 	mov    %rax,0x5089(%rip)        # 140007100 <key_dtor_list>
   140002077:	eb d5                	jmp    14000204e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002080 <__mingw_TLScallback>:
   140002080:	53                   	push   %rbx
   140002081:	48 83 ec 20          	sub    $0x20,%rsp
   140002085:	83 fa 02             	cmp    $0x2,%edx
   140002088:	74 46                	je     1400020d0 <__mingw_TLScallback+0x50>
   14000208a:	77 2c                	ja     1400020b8 <__mingw_TLScallback+0x38>
   14000208c:	85 d2                	test   %edx,%edx
   14000208e:	74 50                	je     1400020e0 <__mingw_TLScallback+0x60>
   140002090:	8b 05 72 50 00 00    	mov    0x5072(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002096:	85 c0                	test   %eax,%eax
   140002098:	0f 84 b2 00 00 00    	je     140002150 <__mingw_TLScallback+0xd0>
   14000209e:	c7 05 60 50 00 00 01 	movl   $0x1,0x5060(%rip)        # 140007108 <__mingwthr_cs_init>
   1400020a5:	00 00 00 
   1400020a8:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020ad:	48 83 c4 20          	add    $0x20,%rsp
   1400020b1:	5b                   	pop    %rbx
   1400020b2:	c3                   	ret    
   1400020b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400020b8:	83 fa 03             	cmp    $0x3,%edx
   1400020bb:	75 eb                	jne    1400020a8 <__mingw_TLScallback+0x28>
   1400020bd:	8b 05 45 50 00 00    	mov    0x5045(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020c3:	85 c0                	test   %eax,%eax
   1400020c5:	74 e1                	je     1400020a8 <__mingw_TLScallback+0x28>
   1400020c7:	e8 14 fe ff ff       	call   140001ee0 <__mingwthr_run_key_dtors.part.0>
   1400020cc:	eb da                	jmp    1400020a8 <__mingw_TLScallback+0x28>
   1400020ce:	66 90                	xchg   %ax,%ax
   1400020d0:	e8 6b f7 ff ff       	call   140001840 <_fpreset>
   1400020d5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020da:	48 83 c4 20          	add    $0x20,%rsp
   1400020de:	5b                   	pop    %rbx
   1400020df:	c3                   	ret    
   1400020e0:	8b 05 22 50 00 00    	mov    0x5022(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020e6:	85 c0                	test   %eax,%eax
   1400020e8:	75 56                	jne    140002140 <__mingw_TLScallback+0xc0>
   1400020ea:	8b 05 18 50 00 00    	mov    0x5018(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020f0:	83 f8 01             	cmp    $0x1,%eax
   1400020f3:	75 b3                	jne    1400020a8 <__mingw_TLScallback+0x28>
   1400020f5:	48 8b 1d 04 50 00 00 	mov    0x5004(%rip),%rbx        # 140007100 <key_dtor_list>
   1400020fc:	48 85 db             	test   %rbx,%rbx
   1400020ff:	74 18                	je     140002119 <__mingw_TLScallback+0x99>
   140002101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002108:	48 89 d9             	mov    %rbx,%rcx
   14000210b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000210f:	e8 b4 04 00 00       	call   1400025c8 <free>
   140002114:	48 85 db             	test   %rbx,%rbx
   140002117:	75 ef                	jne    140002108 <__mingw_TLScallback+0x88>
   140002119:	48 8d 0d 00 50 00 00 	lea    0x5000(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002120:	48 c7 05 d5 4f 00 00 	movq   $0x0,0x4fd5(%rip)        # 140007100 <key_dtor_list>
   140002127:	00 00 00 00 
   14000212b:	c7 05 d3 4f 00 00 00 	movl   $0x0,0x4fd3(%rip)        # 140007108 <__mingwthr_cs_init>
   140002132:	00 00 00 
   140002135:	ff 15 39 60 00 00    	call   *0x6039(%rip)        # 140008174 <__IAT_start__>
   14000213b:	e9 68 ff ff ff       	jmp    1400020a8 <__mingw_TLScallback+0x28>
   140002140:	e8 9b fd ff ff       	call   140001ee0 <__mingwthr_run_key_dtors.part.0>
   140002145:	eb a3                	jmp    1400020ea <__mingw_TLScallback+0x6a>
   140002147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000214e:	00 00 
   140002150:	48 8d 0d c9 4f 00 00 	lea    0x4fc9(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002157:	ff 15 37 60 00 00    	call   *0x6037(%rip)        # 140008194 <__imp_InitializeCriticalSection>
   14000215d:	e9 3c ff ff ff       	jmp    14000209e <__mingw_TLScallback+0x1e>
   140002162:	90                   	nop
   140002163:	90                   	nop
   140002164:	90                   	nop
   140002165:	90                   	nop
   140002166:	90                   	nop
   140002167:	90                   	nop
   140002168:	90                   	nop
   140002169:	90                   	nop
   14000216a:	90                   	nop
   14000216b:	90                   	nop
   14000216c:	90                   	nop
   14000216d:	90                   	nop
   14000216e:	90                   	nop
   14000216f:	90                   	nop

0000000140002170 <_ValidateImageBase>:
   140002170:	31 c0                	xor    %eax,%eax
   140002172:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002177:	75 0f                	jne    140002188 <_ValidateImageBase+0x18>
   140002179:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000217d:	48 01 d1             	add    %rdx,%rcx
   140002180:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002186:	74 08                	je     140002190 <_ValidateImageBase+0x20>
   140002188:	c3                   	ret    
   140002189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002190:	31 c0                	xor    %eax,%eax
   140002192:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002198:	0f 94 c0             	sete   %al
   14000219b:	c3                   	ret    
   14000219c:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021a0 <_FindPESection>:
   1400021a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400021a4:	48 01 c1             	add    %rax,%rcx
   1400021a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400021ab:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400021b0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   1400021b4:	85 c9                	test   %ecx,%ecx
   1400021b6:	74 2d                	je     1400021e5 <_FindPESection+0x45>
   1400021b8:	83 e9 01             	sub    $0x1,%ecx
   1400021bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400021bf:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400021c8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021cc:	4c 89 c1             	mov    %r8,%rcx
   1400021cf:	49 39 d0             	cmp    %rdx,%r8
   1400021d2:	77 08                	ja     1400021dc <_FindPESection+0x3c>
   1400021d4:	03 48 08             	add    0x8(%rax),%ecx
   1400021d7:	48 39 d1             	cmp    %rdx,%rcx
   1400021da:	77 0b                	ja     1400021e7 <_FindPESection+0x47>
   1400021dc:	48 83 c0 28          	add    $0x28,%rax
   1400021e0:	4c 39 c8             	cmp    %r9,%rax
   1400021e3:	75 e3                	jne    1400021c8 <_FindPESection+0x28>
   1400021e5:	31 c0                	xor    %eax,%eax
   1400021e7:	c3                   	ret    
   1400021e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021ef:	00 

00000001400021f0 <_FindPESectionByName>:
   1400021f0:	41 54                	push   %r12
   1400021f2:	56                   	push   %rsi
   1400021f3:	53                   	push   %rbx
   1400021f4:	48 83 ec 20          	sub    $0x20,%rsp
   1400021f8:	48 89 cb             	mov    %rcx,%rbx
   1400021fb:	e8 a0 03 00 00       	call   1400025a0 <strlen>
   140002200:	48 83 f8 08          	cmp    $0x8,%rax
   140002204:	77 7a                	ja     140002280 <_FindPESectionByName+0x90>
   140002206:	48 8b 15 33 21 00 00 	mov    0x2133(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   14000220d:	45 31 e4             	xor    %r12d,%r12d
   140002210:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002215:	75 57                	jne    14000226e <_FindPESectionByName+0x7e>
   140002217:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   14000221b:	48 01 d0             	add    %rdx,%rax
   14000221e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002224:	75 48                	jne    14000226e <_FindPESectionByName+0x7e>
   140002226:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000222c:	75 40                	jne    14000226e <_FindPESectionByName+0x7e>
   14000222e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002232:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002237:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   14000223b:	85 c0                	test   %eax,%eax
   14000223d:	74 41                	je     140002280 <_FindPESectionByName+0x90>
   14000223f:	83 e8 01             	sub    $0x1,%eax
   140002242:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002246:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   14000224b:	eb 0c                	jmp    140002259 <_FindPESectionByName+0x69>
   14000224d:	0f 1f 00             	nopl   (%rax)
   140002250:	49 83 c4 28          	add    $0x28,%r12
   140002254:	49 39 f4             	cmp    %rsi,%r12
   140002257:	74 27                	je     140002280 <_FindPESectionByName+0x90>
   140002259:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000225f:	48 89 da             	mov    %rbx,%rdx
   140002262:	4c 89 e1             	mov    %r12,%rcx
   140002265:	e8 2e 03 00 00       	call   140002598 <strncmp>
   14000226a:	85 c0                	test   %eax,%eax
   14000226c:	75 e2                	jne    140002250 <_FindPESectionByName+0x60>
   14000226e:	4c 89 e0             	mov    %r12,%rax
   140002271:	48 83 c4 20          	add    $0x20,%rsp
   140002275:	5b                   	pop    %rbx
   140002276:	5e                   	pop    %rsi
   140002277:	41 5c                	pop    %r12
   140002279:	c3                   	ret    
   14000227a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002280:	45 31 e4             	xor    %r12d,%r12d
   140002283:	4c 89 e0             	mov    %r12,%rax
   140002286:	48 83 c4 20          	add    $0x20,%rsp
   14000228a:	5b                   	pop    %rbx
   14000228b:	5e                   	pop    %rsi
   14000228c:	41 5c                	pop    %r12
   14000228e:	c3                   	ret    
   14000228f:	90                   	nop

0000000140002290 <__mingw_GetSectionForAddress>:
   140002290:	48 8b 15 a9 20 00 00 	mov    0x20a9(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   140002297:	31 c0                	xor    %eax,%eax
   140002299:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000229e:	75 10                	jne    1400022b0 <__mingw_GetSectionForAddress+0x20>
   1400022a0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400022a4:	49 01 d0             	add    %rdx,%r8
   1400022a7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400022ae:	74 08                	je     1400022b8 <__mingw_GetSectionForAddress+0x28>
   1400022b0:	c3                   	ret    
   1400022b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022b8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400022bf:	75 ef                	jne    1400022b0 <__mingw_GetSectionForAddress+0x20>
   1400022c1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022c6:	48 29 d1             	sub    %rdx,%rcx
   1400022c9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   1400022ce:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022d3:	85 d2                	test   %edx,%edx
   1400022d5:	74 2e                	je     140002305 <__mingw_GetSectionForAddress+0x75>
   1400022d7:	83 ea 01             	sub    $0x1,%edx
   1400022da:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022de:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400022e8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022ec:	4c 89 c2             	mov    %r8,%rdx
   1400022ef:	4c 39 c1             	cmp    %r8,%rcx
   1400022f2:	72 08                	jb     1400022fc <__mingw_GetSectionForAddress+0x6c>
   1400022f4:	03 50 08             	add    0x8(%rax),%edx
   1400022f7:	48 39 d1             	cmp    %rdx,%rcx
   1400022fa:	72 b4                	jb     1400022b0 <__mingw_GetSectionForAddress+0x20>
   1400022fc:	48 83 c0 28          	add    $0x28,%rax
   140002300:	4c 39 c8             	cmp    %r9,%rax
   140002303:	75 e3                	jne    1400022e8 <__mingw_GetSectionForAddress+0x58>
   140002305:	31 c0                	xor    %eax,%eax
   140002307:	c3                   	ret    
   140002308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000230f:	00 

0000000140002310 <__mingw_GetSectionCount>:
   140002310:	48 8b 05 29 20 00 00 	mov    0x2029(%rip),%rax        # 140004340 <.refptr.__image_base__>
   140002317:	45 31 c0             	xor    %r8d,%r8d
   14000231a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000231f:	75 0f                	jne    140002330 <__mingw_GetSectionCount+0x20>
   140002321:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002325:	48 01 d0             	add    %rdx,%rax
   140002328:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000232e:	74 08                	je     140002338 <__mingw_GetSectionCount+0x28>
   140002330:	44 89 c0             	mov    %r8d,%eax
   140002333:	c3                   	ret    
   140002334:	0f 1f 40 00          	nopl   0x0(%rax)
   140002338:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000233e:	75 f0                	jne    140002330 <__mingw_GetSectionCount+0x20>
   140002340:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002345:	44 89 c0             	mov    %r8d,%eax
   140002348:	c3                   	ret    
   140002349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002350 <_FindPESectionExec>:
   140002350:	4c 8b 05 e9 1f 00 00 	mov    0x1fe9(%rip),%r8        # 140004340 <.refptr.__image_base__>
   140002357:	31 c0                	xor    %eax,%eax
   140002359:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000235f:	75 0f                	jne    140002370 <_FindPESectionExec+0x20>
   140002361:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002365:	4c 01 c2             	add    %r8,%rdx
   140002368:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000236e:	74 08                	je     140002378 <_FindPESectionExec+0x28>
   140002370:	c3                   	ret    
   140002371:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002378:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000237e:	75 f0                	jne    140002370 <_FindPESectionExec+0x20>
   140002380:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002384:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002389:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000238d:	85 d2                	test   %edx,%edx
   14000238f:	74 27                	je     1400023b8 <_FindPESectionExec+0x68>
   140002391:	83 ea 01             	sub    $0x1,%edx
   140002394:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002398:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000239d:	0f 1f 00             	nopl   (%rax)
   1400023a0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400023a4:	74 09                	je     1400023af <_FindPESectionExec+0x5f>
   1400023a6:	48 85 c9             	test   %rcx,%rcx
   1400023a9:	74 c5                	je     140002370 <_FindPESectionExec+0x20>
   1400023ab:	48 83 e9 01          	sub    $0x1,%rcx
   1400023af:	48 83 c0 28          	add    $0x28,%rax
   1400023b3:	48 39 d0             	cmp    %rdx,%rax
   1400023b6:	75 e8                	jne    1400023a0 <_FindPESectionExec+0x50>
   1400023b8:	31 c0                	xor    %eax,%eax
   1400023ba:	c3                   	ret    
   1400023bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400023c0 <_GetPEImageBase>:
   1400023c0:	48 8b 05 79 1f 00 00 	mov    0x1f79(%rip),%rax        # 140004340 <.refptr.__image_base__>
   1400023c7:	45 31 c0             	xor    %r8d,%r8d
   1400023ca:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023cf:	75 0f                	jne    1400023e0 <_GetPEImageBase+0x20>
   1400023d1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400023d5:	48 01 c2             	add    %rax,%rdx
   1400023d8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400023de:	74 08                	je     1400023e8 <_GetPEImageBase+0x28>
   1400023e0:	4c 89 c0             	mov    %r8,%rax
   1400023e3:	c3                   	ret    
   1400023e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400023e8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400023ee:	4c 0f 44 c0          	cmove  %rax,%r8
   1400023f2:	4c 89 c0             	mov    %r8,%rax
   1400023f5:	c3                   	ret    
   1400023f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023fd:	00 00 00 

0000000140002400 <_IsNonwritableInCurrentImage>:
   140002400:	48 8b 15 39 1f 00 00 	mov    0x1f39(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   140002407:	31 c0                	xor    %eax,%eax
   140002409:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000240e:	75 10                	jne    140002420 <_IsNonwritableInCurrentImage+0x20>
   140002410:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002414:	49 01 d0             	add    %rdx,%r8
   140002417:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000241e:	74 08                	je     140002428 <_IsNonwritableInCurrentImage+0x28>
   140002420:	c3                   	ret    
   140002421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002428:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000242f:	75 ef                	jne    140002420 <_IsNonwritableInCurrentImage+0x20>
   140002431:	48 29 d1             	sub    %rdx,%rcx
   140002434:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002439:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000243e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002443:	45 85 c0             	test   %r8d,%r8d
   140002446:	74 d8                	je     140002420 <_IsNonwritableInCurrentImage+0x20>
   140002448:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000244c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002450:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002455:	0f 1f 00             	nopl   (%rax)
   140002458:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   14000245c:	4c 89 c0             	mov    %r8,%rax
   14000245f:	4c 39 c1             	cmp    %r8,%rcx
   140002462:	72 08                	jb     14000246c <_IsNonwritableInCurrentImage+0x6c>
   140002464:	03 42 08             	add    0x8(%rdx),%eax
   140002467:	48 39 c1             	cmp    %rax,%rcx
   14000246a:	72 14                	jb     140002480 <_IsNonwritableInCurrentImage+0x80>
   14000246c:	48 83 c2 28          	add    $0x28,%rdx
   140002470:	4c 39 ca             	cmp    %r9,%rdx
   140002473:	75 e3                	jne    140002458 <_IsNonwritableInCurrentImage+0x58>
   140002475:	31 c0                	xor    %eax,%eax
   140002477:	c3                   	ret    
   140002478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000247f:	00 
   140002480:	8b 42 24             	mov    0x24(%rdx),%eax
   140002483:	f7 d0                	not    %eax
   140002485:	c1 e8 1f             	shr    $0x1f,%eax
   140002488:	c3                   	ret    
   140002489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002490 <__mingw_enum_import_library_names>:
   140002490:	4c 8b 1d a9 1e 00 00 	mov    0x1ea9(%rip),%r11        # 140004340 <.refptr.__image_base__>
   140002497:	45 31 c9             	xor    %r9d,%r9d
   14000249a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400024a0:	75 10                	jne    1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024a2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400024a6:	4d 01 d8             	add    %r11,%r8
   1400024a9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024b0:	74 0e                	je     1400024c0 <__mingw_enum_import_library_names+0x30>
   1400024b2:	4c 89 c8             	mov    %r9,%rax
   1400024b5:	c3                   	ret    
   1400024b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024bd:	00 00 00 
   1400024c0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024c7:	75 e9                	jne    1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024c9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024d0:	85 c0                	test   %eax,%eax
   1400024d2:	74 de                	je     1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024d4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024d9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024de:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400024e3:	45 85 c0             	test   %r8d,%r8d
   1400024e6:	74 ca                	je     1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024e8:	41 83 e8 01          	sub    $0x1,%r8d
   1400024ec:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024f0:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024f5:	0f 1f 00             	nopl   (%rax)
   1400024f8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024fc:	4d 89 c8             	mov    %r9,%r8
   1400024ff:	4c 39 c8             	cmp    %r9,%rax
   140002502:	72 09                	jb     14000250d <__mingw_enum_import_library_names+0x7d>
   140002504:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002508:	4c 39 c0             	cmp    %r8,%rax
   14000250b:	72 13                	jb     140002520 <__mingw_enum_import_library_names+0x90>
   14000250d:	48 83 c2 28          	add    $0x28,%rdx
   140002511:	49 39 d2             	cmp    %rdx,%r10
   140002514:	75 e2                	jne    1400024f8 <__mingw_enum_import_library_names+0x68>
   140002516:	45 31 c9             	xor    %r9d,%r9d
   140002519:	4c 89 c8             	mov    %r9,%rax
   14000251c:	c3                   	ret    
   14000251d:	0f 1f 00             	nopl   (%rax)
   140002520:	4c 01 d8             	add    %r11,%rax
   140002523:	eb 0a                	jmp    14000252f <__mingw_enum_import_library_names+0x9f>
   140002525:	0f 1f 00             	nopl   (%rax)
   140002528:	83 e9 01             	sub    $0x1,%ecx
   14000252b:	48 83 c0 14          	add    $0x14,%rax
   14000252f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002533:	45 85 c0             	test   %r8d,%r8d
   140002536:	75 07                	jne    14000253f <__mingw_enum_import_library_names+0xaf>
   140002538:	8b 50 0c             	mov    0xc(%rax),%edx
   14000253b:	85 d2                	test   %edx,%edx
   14000253d:	74 d7                	je     140002516 <__mingw_enum_import_library_names+0x86>
   14000253f:	85 c9                	test   %ecx,%ecx
   140002541:	7f e5                	jg     140002528 <__mingw_enum_import_library_names+0x98>
   140002543:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002547:	4d 01 d9             	add    %r11,%r9
   14000254a:	4c 89 c8             	mov    %r9,%rax
   14000254d:	c3                   	ret    
   14000254e:	90                   	nop
   14000254f:	90                   	nop

0000000140002550 <___chkstk_ms>:
   140002550:	51                   	push   %rcx
   140002551:	50                   	push   %rax
   140002552:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002558:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000255d:	72 19                	jb     140002578 <___chkstk_ms+0x28>
   14000255f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002566:	48 83 09 00          	orq    $0x0,(%rcx)
   14000256a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002570:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002576:	77 e7                	ja     14000255f <___chkstk_ms+0xf>
   140002578:	48 29 c1             	sub    %rax,%rcx
   14000257b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000257f:	58                   	pop    %rax
   140002580:	59                   	pop    %rcx
   140002581:	c3                   	ret    
   140002582:	90                   	nop
   140002583:	90                   	nop
   140002584:	90                   	nop
   140002585:	90                   	nop
   140002586:	90                   	nop
   140002587:	90                   	nop
   140002588:	90                   	nop
   140002589:	90                   	nop
   14000258a:	90                   	nop
   14000258b:	90                   	nop
   14000258c:	90                   	nop
   14000258d:	90                   	nop
   14000258e:	90                   	nop
   14000258f:	90                   	nop

0000000140002590 <vfprintf>:
   140002590:	ff 25 06 5d 00 00    	jmp    *0x5d06(%rip)        # 14000829c <__imp_vfprintf>
   140002596:	90                   	nop
   140002597:	90                   	nop

0000000140002598 <strncmp>:
   140002598:	ff 25 f6 5c 00 00    	jmp    *0x5cf6(%rip)        # 140008294 <__imp_strncmp>
   14000259e:	90                   	nop
   14000259f:	90                   	nop

00000001400025a0 <strlen>:
   1400025a0:	ff 25 e6 5c 00 00    	jmp    *0x5ce6(%rip)        # 14000828c <__imp_strlen>
   1400025a6:	90                   	nop
   1400025a7:	90                   	nop

00000001400025a8 <signal>:
   1400025a8:	ff 25 d6 5c 00 00    	jmp    *0x5cd6(%rip)        # 140008284 <__imp_signal>
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <memcpy>:
   1400025b0:	ff 25 c6 5c 00 00    	jmp    *0x5cc6(%rip)        # 14000827c <__imp_memcpy>
   1400025b6:	90                   	nop
   1400025b7:	90                   	nop

00000001400025b8 <malloc>:
   1400025b8:	ff 25 b6 5c 00 00    	jmp    *0x5cb6(%rip)        # 140008274 <__imp_malloc>
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <fwrite>:
   1400025c0:	ff 25 a6 5c 00 00    	jmp    *0x5ca6(%rip)        # 14000826c <__imp_fwrite>
   1400025c6:	90                   	nop
   1400025c7:	90                   	nop

00000001400025c8 <free>:
   1400025c8:	ff 25 96 5c 00 00    	jmp    *0x5c96(%rip)        # 140008264 <__imp_free>
   1400025ce:	90                   	nop
   1400025cf:	90                   	nop

00000001400025d0 <fprintf>:
   1400025d0:	ff 25 86 5c 00 00    	jmp    *0x5c86(%rip)        # 14000825c <__imp_fprintf>
   1400025d6:	90                   	nop
   1400025d7:	90                   	nop

00000001400025d8 <exit>:
   1400025d8:	ff 25 76 5c 00 00    	jmp    *0x5c76(%rip)        # 140008254 <__imp_exit>
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <calloc>:
   1400025e0:	ff 25 66 5c 00 00    	jmp    *0x5c66(%rip)        # 14000824c <__imp_calloc>
   1400025e6:	90                   	nop
   1400025e7:	90                   	nop

00000001400025e8 <abort>:
   1400025e8:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 140008244 <__imp_abort>
   1400025ee:	90                   	nop
   1400025ef:	90                   	nop

00000001400025f0 <_onexit>:
   1400025f0:	ff 25 46 5c 00 00    	jmp    *0x5c46(%rip)        # 14000823c <__imp__onexit>
   1400025f6:	90                   	nop
   1400025f7:	90                   	nop

00000001400025f8 <_initterm>:
   1400025f8:	ff 25 36 5c 00 00    	jmp    *0x5c36(%rip)        # 140008234 <__imp__initterm>
   1400025fe:	90                   	nop
   1400025ff:	90                   	nop

0000000140002600 <_cexit>:
   140002600:	ff 25 16 5c 00 00    	jmp    *0x5c16(%rip)        # 14000821c <__imp__cexit>
   140002606:	90                   	nop
   140002607:	90                   	nop

0000000140002608 <_amsg_exit>:
   140002608:	ff 25 06 5c 00 00    	jmp    *0x5c06(%rip)        # 140008214 <__imp__amsg_exit>
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <__setusermatherr>:
   140002610:	ff 25 ee 5b 00 00    	jmp    *0x5bee(%rip)        # 140008204 <__imp___setusermatherr>
   140002616:	90                   	nop
   140002617:	90                   	nop

0000000140002618 <__set_app_type>:
   140002618:	ff 25 de 5b 00 00    	jmp    *0x5bde(%rip)        # 1400081fc <__imp___set_app_type>
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <__lconv_init>:
   140002620:	ff 25 ce 5b 00 00    	jmp    *0x5bce(%rip)        # 1400081f4 <__imp___lconv_init>
   140002626:	90                   	nop
   140002627:	90                   	nop

0000000140002628 <__getmainargs>:
   140002628:	ff 25 ae 5b 00 00    	jmp    *0x5bae(%rip)        # 1400081dc <__imp___getmainargs>
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <__C_specific_handler>:
   140002630:	ff 25 9e 5b 00 00    	jmp    *0x5b9e(%rip)        # 1400081d4 <__imp___C_specific_handler>
   140002636:	90                   	nop
   140002637:	90                   	nop
   140002638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000263f:	00 

0000000140002640 <__acrt_iob_func>:
   140002640:	53                   	push   %rbx
   140002641:	48 83 ec 20          	sub    $0x20,%rsp
   140002645:	89 cb                	mov    %ecx,%ebx
   140002647:	e8 64 00 00 00       	call   1400026b0 <__iob_func>
   14000264c:	89 d9                	mov    %ebx,%ecx
   14000264e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002652:	48 c1 e2 04          	shl    $0x4,%rdx
   140002656:	48 01 d0             	add    %rdx,%rax
   140002659:	48 83 c4 20          	add    $0x20,%rsp
   14000265d:	5b                   	pop    %rbx
   14000265e:	c3                   	ret    
   14000265f:	90                   	nop

0000000140002660 <_get_invalid_parameter_handler>:
   140002660:	48 8b 05 29 4b 00 00 	mov    0x4b29(%rip),%rax        # 140007190 <handler>
   140002667:	c3                   	ret    
   140002668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000266f:	00 

0000000140002670 <_set_invalid_parameter_handler>:
   140002670:	48 89 c8             	mov    %rcx,%rax
   140002673:	48 87 05 16 4b 00 00 	xchg   %rax,0x4b16(%rip)        # 140007190 <handler>
   14000267a:	c3                   	ret    
   14000267b:	90                   	nop
   14000267c:	90                   	nop
   14000267d:	90                   	nop
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <__p__acmdln>:
   140002680:	48 8b 05 d9 1c 00 00 	mov    0x1cd9(%rip),%rax        # 140004360 <.refptr.__imp__acmdln>
   140002687:	48 8b 00             	mov    (%rax),%rax
   14000268a:	c3                   	ret    
   14000268b:	90                   	nop
   14000268c:	90                   	nop
   14000268d:	90                   	nop
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <__p__commode>:
   140002690:	48 8b 05 d9 1c 00 00 	mov    0x1cd9(%rip),%rax        # 140004370 <.refptr.__imp__commode>
   140002697:	48 8b 00             	mov    (%rax),%rax
   14000269a:	c3                   	ret    
   14000269b:	90                   	nop
   14000269c:	90                   	nop
   14000269d:	90                   	nop
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <__p__fmode>:
   1400026a0:	48 8b 05 d9 1c 00 00 	mov    0x1cd9(%rip),%rax        # 140004380 <.refptr.__imp__fmode>
   1400026a7:	48 8b 00             	mov    (%rax),%rax
   1400026aa:	c3                   	ret    
   1400026ab:	90                   	nop
   1400026ac:	90                   	nop
   1400026ad:	90                   	nop
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <__iob_func>:
   1400026b0:	ff 25 36 5b 00 00    	jmp    *0x5b36(%rip)        # 1400081ec <__imp___iob_func>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop
   1400026b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026bf:	00 

00000001400026c0 <VirtualQuery>:
   1400026c0:	ff 25 fe 5a 00 00    	jmp    *0x5afe(%rip)        # 1400081c4 <__imp_VirtualQuery>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <VirtualProtect>:
   1400026c8:	ff 25 ee 5a 00 00    	jmp    *0x5aee(%rip)        # 1400081bc <__imp_VirtualProtect>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <TlsGetValue>:
   1400026d0:	ff 25 de 5a 00 00    	jmp    *0x5ade(%rip)        # 1400081b4 <__imp_TlsGetValue>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <Sleep>:
   1400026d8:	ff 25 ce 5a 00 00    	jmp    *0x5ace(%rip)        # 1400081ac <__imp_Sleep>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <SetUnhandledExceptionFilter>:
   1400026e0:	ff 25 be 5a 00 00    	jmp    *0x5abe(%rip)        # 1400081a4 <__imp_SetUnhandledExceptionFilter>
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop

00000001400026e8 <LeaveCriticalSection>:
   1400026e8:	ff 25 ae 5a 00 00    	jmp    *0x5aae(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop

00000001400026f0 <InitializeCriticalSection>:
   1400026f0:	ff 25 9e 5a 00 00    	jmp    *0x5a9e(%rip)        # 140008194 <__imp_InitializeCriticalSection>
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop

00000001400026f8 <GetStartupInfoA>:
   1400026f8:	ff 25 8e 5a 00 00    	jmp    *0x5a8e(%rip)        # 14000818c <__imp_GetStartupInfoA>
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop

0000000140002700 <GetLastError>:
   140002700:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 140008184 <__imp_GetLastError>
   140002706:	90                   	nop
   140002707:	90                   	nop

0000000140002708 <EnterCriticalSection>:
   140002708:	ff 25 6e 5a 00 00    	jmp    *0x5a6e(%rip)        # 14000817c <__imp_EnterCriticalSection>
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <DeleteCriticalSection>:
   140002710:	ff 25 5e 5a 00 00    	jmp    *0x5a5e(%rip)        # 140008174 <__IAT_start__>
   140002716:	90                   	nop
   140002717:	90                   	nop
   140002718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000271f:	00 

0000000140002720 <register_frame_ctor>:
   140002720:	e9 fb ed ff ff       	jmp    140001520 <__gcc_register_frame>
   140002725:	90                   	nop
   140002726:	90                   	nop
   140002727:	90                   	nop
   140002728:	90                   	nop
   140002729:	90                   	nop
   14000272a:	90                   	nop
   14000272b:	90                   	nop
   14000272c:	90                   	nop
   14000272d:	90                   	nop
   14000272e:	90                   	nop
   14000272f:	90                   	nop

0000000140002730 <__CTOR_LIST__>:
   140002730:	ff                   	(bad)  
   140002731:	ff                   	(bad)  
   140002732:	ff                   	(bad)  
   140002733:	ff                   	(bad)  
   140002734:	ff                   	(bad)  
   140002735:	ff                   	(bad)  
   140002736:	ff                   	(bad)  
   140002737:	ff                   	.byte 0xff

0000000140002738 <.ctors.65535>:
   140002738:	20 27                	and    %ah,(%rdi)
   14000273a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002748 <__DTOR_LIST__>:
   140002748:	ff                   	(bad)  
   140002749:	ff                   	(bad)  
   14000274a:	ff                   	(bad)  
   14000274b:	ff                   	(bad)  
   14000274c:	ff                   	(bad)  
   14000274d:	ff                   	(bad)  
   14000274e:	ff                   	(bad)  
   14000274f:	ff 00                	incl   (%rax)
   140002751:	00 00                	add    %al,(%rax)
   140002753:	00 00                	add    %al,(%rax)
   140002755:	00 00                	add    %al,(%rax)
	...
