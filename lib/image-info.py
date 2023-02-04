import subprocess
import json 
import time
# user subprocess to run bash command to get a list of docker images
result = subprocess.run(["docker", "images"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
print(result.stdout)

subprocess.run(["sleep", "0.5"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
print("Get docker image details..")
time.sleep(1.5)
init = 0
while init != 1:
    image = input("Enter the Image ID, or enter 'exit' to quit:")
    if image.lower() != "exit":

        result2 = subprocess.run(["docker", "image", "inspect", image], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        temp = result2.stdout
        json_obj = json.loads(temp)
        if (json_obj[0]["ContainerConfig"]["Cmd"]):
            cmd_len = len(json_obj[0]["ContainerConfig"]["Cmd"]) - 1
            cmd = json_obj[0]["ContainerConfig"]["Cmd"][cmd_len]
        else:
            cmd = "N/A"
        # entrypoint   
        if (json_obj[0]["ContainerConfig"]["Entrypoint"]):
            entrypoint = json_obj[0]["ContainerConfig"]["Entrypoint"][0]
        else:
            entrypoint = "N/A"

        #volumes    
        if (json_obj[0]["ContainerConfig"]["Volumes"]):
            volumes = json_obj[0]["ContainerConfig"]["Volumes"]
        else:
            volumes = "N/A"

        # workingdir
        if (json_obj[0]["ContainerConfig"]["WorkingDir"]):
            workingdir = json_obj[0]["ContainerConfig"]["WorkingDir"]
        else:
            workingdir = "N/A"
            
        # exposedports
        if "ExposedPorts" in json_obj[0]["Config"].keys():
            if (json_obj[0]["Config"]["ExposedPorts"]):
                exposedports = json_obj[0]["Config"]["ExposedPorts"]
            else:
                exposedports = "N/A"
        else:
            exposedports = "N/A"
            
        output = f'ID: {json_obj[0]["Id"]}\nEntryPoint: {entrypoint}\nCMD: {cmd}\nCreated: {json_obj[0]["Created"]}\nOS: {json_obj[0]["Os"]}\nWorkingDir: {workingdir}\nVolumes: {volumes}\nExposedPorts: {exposedports}'
        print(output)
    else:
        init = 1
