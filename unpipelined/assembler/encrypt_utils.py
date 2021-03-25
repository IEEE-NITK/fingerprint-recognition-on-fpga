from bitarray import bitarray
from Crypto.Cipher import AES
def encrypt(instruction):
    
    a = [0x01, 0x04, 0x02, 0x03, 0x01, 0x03, 0x04, 0x0A, 0x09, 0x0B, 0x07, 0x0F, 0x0F, 0x06, 0x03, 0x00]
    s = ''
    for i in a:
        s += chr(i)
    key=s.encode('utf-8')
    cipher = AES.new(key, AES.MODE_ECB)

    k=bitarray(instruction)
    b=k.tobytes()
    pad = 12*[0x00]
    pad = bytes(pad)
    s=pad+b
    enc = cipher.encrypt(s)
    bytes_as_bits = ''.join(format(ord(chr(byte)), '08b') for byte in enc)
   
    return bytes_as_bits