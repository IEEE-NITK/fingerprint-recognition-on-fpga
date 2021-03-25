from bitarray import bitarray
from Crypto.Cipher import AES
def encrypt(instruction):
    k=bitarray(instruction)
    b=k.tobytes()
    a = [0x01, 0x04, 0x02, 0x03, 0x01, 0x03, 0x04, 0x0A, 0x09, 0x0B, 0x07, 0x0F, 0x0F, 0x06, 0x03, 0x00]
    s = ''
    for i in a:
        s += chr(i)
    key=s.encode()
    cipher = AES.new(key, AES.MODE_ECB)
    d=''
    pad = 12*[0x00]
    for i in pad:
        d += chr(i)
    for i in b:
        d += chr(i)
    enc = cipher.encrypt(d)
    bytes_as_bits = ''.join(format(ord(chr(byte)), '08b') for byte in enc)
   
    return bytes_as_bits