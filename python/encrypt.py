# encrypt.py


from cryptography.fernet import Fernet
import os 

file = input("Enter file name to encrypt: ")

# create file path and validate the file exist
path = os.getcwd()
file_path = path + "/" + file
key_path = path + "/filekey.key"
if os.path.isfile(file_path): 
    try: 
        # encrypt file
        with open(key_path, 'rb') as filekey:
            key = filekey.read()
        
        # use the generated key
        fernet = Fernet(key)
        
        # opening the original file to encrypt
        with open(file_path, 'rb') as file:
            original = file.read()
            
        # encrypt the file
        encrypted = fernet.encrypt(original)
        
        #opening the file in write mode and writing the encrypted data
        with open(file_path, 'wb') as encrypted_file:
            encrypted_file.write(encrypted)
        print(f'File {file_path} has been encrypted.')
    except Exception as e:
        msg = f'An exception occurred encrypting file.\n{e}' 
        print(msg)
else:
    print(f'{file_path} does not exit.')