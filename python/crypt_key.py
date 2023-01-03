# crypt_key.py

from cryptography.fernet import Fernet

# create a key
key = Fernet.generate_key()
print(f'GENERATED KEY:\n{key}')

# string the key in a file 
with open('filekey.key', 'wb') as filekey:
    filekey.write(key)