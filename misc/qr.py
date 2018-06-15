d = open('qr.png', 'rb').read()
x0 = d[:0x2406]
x1 = d[0x2406:]
with open('x0', 'wb') as f:
	f.write(x0)
with open('x1', 'wb') as f:
	f.write(x1)