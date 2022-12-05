# Its important to reiterate that that pretty much everything in linux is a file
# Including stdin, stdout, stderr values

# This is where file descriptors come into play. A file descriptor is a value of
# a file that describes what the for is for and how to use it. We have already
# used $? to get the status status code of a command. Not realizing that the the
# value of that status is stored in a file named $?. WFD 1 value tells
# a command to use the StdOut. and here are the values for IO:

#   File    Valuue
#   FD 0    StdIn
#   FD 1    StdOut
#   FD 1    StdErr

# Demonstrate the FD value of StdIn (0)
read X < /etc/os-release
echo "This is X: ${X}"
read FD 0< /etc/os-release
echo "This is the File Desriptor: ${FD}"
# X and FD have the same value