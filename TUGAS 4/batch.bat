%~d0
cd “%~dp0”
gcc -o0 -c code_o0.c
gcc -o1 -c code_o1.c
gcc -o2 -c code_o2.c
gcc -o3 -c code_o3.c
gcc -os -c code_os.c
gcc -ofast -c code_ofast.c
objdump -d code_o0.o > code_o0.s
objdump -d code_o1.o > code_o1.s
objdump -d code_o2.o > code_o2.s
objdump -d code_o3.o > code_o3.s
objdump -d code_os.o > code_os.s
objdump -d code_ofast.o > code_ofast.s
pause
