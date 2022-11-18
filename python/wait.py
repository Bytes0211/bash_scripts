# Without process.wait() the print command will execute before the ls -la 
# command is completed. The process.wait() explixitly "waits" on the prior
# command to finish

import subprocess
process = subprocess.Popen(["ls", "-la"])
process.wait()

print("Completed!")
