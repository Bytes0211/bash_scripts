# decrypt.py


from cryptography.fernet import Fernet
import os 

file = input("Enter file name to be decrypted: ")

# create file path and validate the file exist
path = os.getcwd()
file_path = path + "/" + file
if os.path.isfile(file_path): 
    try: 
        # get key
        with open('filekey.key', 'rb') as filekey:
            key = filekey.read()
            print(key)
        
        # use the generated key
        fernet = Fernet(key)
        
        path = os.getcwd()
        file_path = path + "/" + file
        print(f'FILE_PATH: {file_path}')
        
        # opening the encrypted file to decrypt
        with open(file_path, 'rb') as enc_file:
            encrypted = enc_file.read()
            
        
        # decrypt
        decrypt = fernet.decrypt(encrypted)
        print(f'THIS IS DECRYPT: {decrypt}')
        
        # write decrypted data to file
        with open(file_path, 'wb') as dec_file:
            dec_file.write(decrypt)
        print(f'File {file_path} has been decrypted.')
    except Exception as e:
        msg = f'An exception occurred decrypting file.\n{e}' 
        print(msg)
else:
    print(f'{file_path} does not exit.')