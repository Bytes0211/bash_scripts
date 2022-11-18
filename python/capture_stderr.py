# Read the contents of a file OR echos file not found stderr
# if file is missing

import subprocess
result = subprocess.run(["cat", "test_file.txt"], stderr=subprocess.PIPE, text=True)
print(result.stderr)
