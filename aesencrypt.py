from base64 import b64encode, b64decode
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import hashlib
import random
import string
import sys
import os

# Generate a random key with 3 uppercase letters, 3 lowercase letters, and 3 digits
# key = ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase + string.digits, k=128)).encode()
key = os.urandom(16)
iv = os.urandom(16)
iv_str = b64encode(iv).decode('utf-8')
# Read input file
with open(sys.argv[1], 'rb') as f:
    plaintext = f.read()

cipher = AES.new(hashlib.sha256(key).digest(), AES.MODE_CBC, iv)
ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))

# Encrypt the key with another AES key
new_key = os.urandom(16)
new_iv = os.urandom(16)
# new_iv_str = b64encode(new_iv).decode('utf-8')
new_cipher = AES.new(hashlib.sha256(new_key).digest(), AES.MODE_CBC, new_iv)
encrypted_key = new_cipher.encrypt(pad(key, AES.block_size))




print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in new_key) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in new_iv) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in encrypted_key) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in ciphertext) + ' };')
print('{ 0x' + ', 0x'.join(hex(x)[2:] for x in iv) + ' };')
# print('"{}";'.format(str(new_key, 'utf-8')))
# print(' "{}";'.format(str(b64encode(encrypted_key), 'utf-8')))
# print('"{}";'.format(new_iv_str))
# print(' "{}";'.format(str(b64encode(ciphertext), 'utf-8')))
# print('"{}";'.format(iv_str))

