// Code generated by command: go run asm.go -out sum.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Sum(xs []uint64) uint64
TEXT ·Sum(SB), NOSPLIT, $0-32
	MOVQ xs_base(FP), AX
	MOVQ xs_len+8(FP), CX

	// Initialize sum register to zero.
	XORQ DX, DX

loop:
	// Loop until zero bytes remain.
	CMPQ CX, $0x00
	JE   done

	// Load from pointer and add to running sum.
	ADDQ (AX), DX

	// Advance pointer, decrement byte count.
	ADDQ $0x08, AX
	DECQ CX
	JMP  loop

done:
	// Store sum to return value.
	MOVQ DX, ret+24(FP)
	RET
