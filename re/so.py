d=[101, 43, 33, 38, 17, 56, 98, 10, 17, 33, 101, 28, 117, 19, 37, 38, 43, 49, 118, 44]
d=[bin((x^0x20)) for x in d]
def what(a,b):
	try:
		return (ord(a)^0xffffffff)|(ord(b)^0xffffffff)
	except:
		return (a^0xffffffff)|(b^0xffffffff)
s='this_is_not_flaggggg'
def encode(data):
	ret = [0 for _ in range(len(s))]
	for x in len(s):
		b1 = what(s[x],s[x])
		b2 = what(data[x],data[x])
		b3 = what(s[x],data[x])
		ret[x] = what(what(b1,b2),b3)
	return ret

