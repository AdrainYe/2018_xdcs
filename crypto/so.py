import base64
import string
import numpy
d = 45423992503518826377284181164170102045570492747785499182285666099111359939693
n = 671324462536968428410014551513473347299601696475208812089294301468451027562593426238565048780993844277878626758177783412886023963328628465361357522066471764587243680938024258444846871399197189648025933880162906096727505785102913531352404570218756183874821476578841846597002366841706431519593337189767198532219
cipher_text = 'Apd+hjYzvXh6uYTvwosDHG1yVPqK7vCyLgy8mH7oxAE41RNll6RrPCCZDYn5AUv4rSR+Ffe67RXtKoA0fUm2k+myU2UdcEkDPB0tEZhL6bC+Q7eK1uAgDgwGQLQxpnLbYg/nCLIos9QDogySh5UeCFC7vf+UiD9BzVEZyoIYxHGk'
s = base64.b64decode(cipher_text)
with open('en', 'wb') as f:
	f.write(s)

enstr = base64.b64decode('eGwjU0NnZzxXDFofKm03ZHchLwUnAgZY')
f1 = [ord(x) for x in enstr]
m1=[[2,0,2,1],[1,1,1,3],[0,2,1,1],[1,2,2,2]]
# for x in range(0,6):
#     for i in range(0,4):
#         temp=0
#         for j in range(0,4):
#             temp+=(m1[i][j]*ord(flag[j+x*4]))
#         str1+=chr(temp%127)
string.printable='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_{}'
def foo(*args):
	for i in string.printable:
		for j in string.printable:
			for k in string.printable:
				for l in string.printable:
					print i,j,k,l
					p1 = (2*ord(i) + 0*ord(j) + 2*ord(k) + 1*ord(l))%127
					p2 = (1*ord(i) + 1*ord(j) + 1*ord(k) + 3*ord(l))%127
					p3 = (0*ord(i) + 2*ord(j) + 1*ord(k) + 1*ord(l))%127
					p4 = (1*ord(i) + 2*ord(j) + 2*ord(k) + 2*ord(l))%127
					if p1 == args[0] and p2 == args[1] and p3 == args[2] and p4 == args[3]:
						return i, j, k, l
A = numpy.array(m1)
s=''
for x in range(6):
	B = numpy.array([[f1[4*x+0]], [f1[4*x+1]],[f1[4*x+2]],[f1[4*x+3]]])
	t = numpy.linalg.solve(A, B)
	for i in t:
		p = int(i)
		while p < 0:
			p += 256
		s+=chr(p%256)
print s
