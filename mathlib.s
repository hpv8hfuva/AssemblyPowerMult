	;; parameter 1 (in rdi) first input
	;; parameter 2 (in rsi) second input
	global product
	global power
	section .text

product:
	xor	rax, rax	;set rax to zero
	xor	r10, r10	;set r10 to zero
start:	
	cmp 	r10, rsi	;check if r10 == rsi
	je 	done		; finish (exit)
	add	rax, rdi	; add rdi(base) into rax
	inc 	r10		;increase the iterator 
	jmp	start		;goes back to the top
done:
	ret			;return

power:
	mov 	rax, 1		;rax = 1
	mov 	r11, rsi	;r11 = rsi (base)
starto:
	mov 	rsi, rdi	;make rsi = rdi (base) 
	cmp	r11, 0		;check r11 == 0 
	je	doneo		;finish (exit)
	push 	rdi		;moves the base value onto the stack
	mov	rdi, rax	;move the rax value onto the rdi
	call	product		;product of rax * rdi
	pop 	rdi		;brings back the rdi from the stack
	dec 	r11		;decreases the exponent 
	jmp 	starto		;jmps to the beginning
		
doneo:
	ret			;return 
