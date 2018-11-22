;;; Jessica SHaughnessy
;;; 	jis6cd
;;; 11/13/2017
;;; threexplusone.s
;;; I used these optimizations: I used fewer instructions in my subroutines and I reduced pushing and popping ( I removed a lot of them, my TA said they were unnecessary where I had them).

	global threexplusone
	section .text

threexplusone:
;;; if (x==1)
;;; return 0;
	cmp rdi, 1
	je end1

	mov rdx, 0
	mov rax, rdi
	mov rbx, 2
	div rbx

;;; if (x%2 == 0)
;;; return 1 + threexplusone(x/2)
	cmp rdx, 0
	je even

;;; if (x%2 == 1 )
;;; long new_x = 3x+1;
;;; return 1+threexplusone(new_x)
	cmp rdx, 1
	je odd

	
even:
;;; return 1 + threexplusone(x/2)
	mov rdi, rax
	call threexplusone
	add rax, 1
	ret

	
odd:
;;; long new_x = 3x+1
;;; return 1+threexplusone(new_x)

	mov rax, rdi
	mov r12, 3
	mul r12
	add rax, 1
	mov rdi, rax
	call threexplusone
	add rax, 1
	ret

	
end1:
;;; return 0
	mov rax, 0
	ret
