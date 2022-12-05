import subprocess
import json 
# listall local images
result = subprocess.run(["docker", "images"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
print(result.stdout)
subprocess.run(["sleep", "0.5"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

# User copy/paste ImageID from list above
image = input("Enter the Image ID:")

# Inspect the entered ImageID
result2 = subprocess.run(["docker", "image", "inspect", image], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

# Convert the ImageID inspection to a json object to grab the info I want
temp = result2.stdout
json_obj = json.loads(temp)

# CMD is not always present in an image. Check to see if it exist
# If so get its value
if (json_obj[0]["ContainerConfig"]["Cmd"]):
    cmd_len = len(json_obj[0]["ContainerConfig"]["Cmd"]) - 1
    cmd = json_obj[0]["ContainerConfig"]["Cmd"][cmd_len]
else:
    cmd = "N/A"

# EntryPoint is not always present in an image. Check to see if it exist
# If so get its value   
if (json_obj[0]["ContainerConfig"]["Entrypoint"]):
    entrypoint = json_obj[0]["ContainerConfig"]["Entrypoint"][0]
else:
    entrypoint = "N/A"
 
# print              
output = f'ID: {json_obj[0]["Id"]}\nEntryPoint: {entrypoint}\nCMD: {cmd}\n\
Created: {json_obj[0]["Created"]} \nOS: {json_obj[0]["Os"]}\nMetaData: {json_obj[0]["Metadata"]}'
print(output)
