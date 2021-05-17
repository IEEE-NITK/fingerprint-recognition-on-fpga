ld r2, [r1], 0

add r0, r0, r2
subc r2, r2, 1
bne r10, r2, -3

st r0, [r3], -3