import subprocess
import json 
#result = subprocess.run(["echo", "Hello, World!"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
result = subprocess.run(["docker", "images"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
#result = subprocess.run(["docker", "ps", "-a"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
print(result.stdout)
subprocess.run(["sleep", "0.5"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
image = input("Enter the Image ID:")
result2 = subprocess.run(["docker", "image", "inspect", image], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
temp = result2.stdout
json_obj = json.loads(temp)
if (json_obj[0]["ContainerConfig"]["Cmd"]):
    cmd_len = len(json_obj[0]["ContainerConfig"]["Cmd"]) - 1
    cmd = json_obj[0]["ContainerConfig"]["Cmd"][cmd_len]
else:
    cmd = "N/A"
    
if (json_obj[0]["ContainerConfig"]["Entrypoint"]):
    entrypoint = json_obj[0]["ContainerConfig"]["Entrypoint"][0]
else:
    entrypoint = "N/A"
              
output = f'ID: {json_obj[0]["Id"]}\nEntryPoint: {entrypoint}\nCMD: {cmd}\n\
Created: {json_obj[0]["Created"]} \nOS: {json_obj[0]["Os"]}\nMetaData: {json_obj[0]["Metadata"]}'

print(output)
