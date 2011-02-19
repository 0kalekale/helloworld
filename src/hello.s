.global _start
.text
_start:        
        mov     $1, %rax                
        mov     $1, %rdi                
        mov     $string, %rsi          
        mov     $13, %rdx              
        syscall                        
        mov     $60, %rax               
        xor     %rdi, %rdi              
        syscall                         
string:
	.ascii  "Do it for her.\n"

