from base64 import b64encode, b64decode
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import hashlib
import random
import string
import sys
import os

key = os.urandom(16)
iv = os.urandom(16)
iv_str = b64encode(iv).decode('utf-8')
with open(sys.argv[1], 'rb') as f:
    plaintext = f.read()
cipher = AES.new(hashlib.sha256(key).digest(), AES.MODE_CBC, iv)
ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))
new_key = os.urandom(16)
new_iv = os.urandom(16)
new_cipher = AES.new(hashlib.sha256(new_key).digest(), AES.MODE_CBC, new_iv)
encrypted_key = new_cipher.encrypt(pad(key, AES.block_size))
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in new_key) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in new_iv) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in encrypted_key) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in ciphertext) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in iv) + ' };')

