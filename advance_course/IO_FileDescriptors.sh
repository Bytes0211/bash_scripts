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
#Note Debian assumes StdIn when "<" is used 
echo -e "UNDERSTANDING IO_FILEDESCRIPTION\n"
read X < /etc/os-release
echo "This is X: ${X}"
# Explictly refer to StdIn with 0
sleep 2
read FD 0< /etc/os-release
echo "This is the File Desriptor: ${FD}"
# X and FD have the same value

# Deomonstrate the FD value fo StdOut (1)
echo "${UID}" > uid-implicit
echo "Implicit value of UID displayed..."
sleep 2
cat uid-implicit
echo "${UID}" 1> uid-explicit
echo "Explict valud of UID displayed..."
sleep 2
cat uid-explicit
# Demonstrate the FD value of StdErr
# show the first line of passwd file, the host file and a file that doesnt exist
echo "show the first line of passwd file, the host file and a file that doesnt exist:"
sleep 2
head -n1 /etc/passwd /etc/hosts /etc/noneexist > StdOut
sleep 2
echo -e "\nredirect the output to file and show content of the file:\n"
sleep 2
cat StdOut
# Note that the error fo the nonexist file did not write to the file
# To do that you need to explicit call StdErr 
sleep 2 
echo -e "\nNote that the error of the nonexist file did not write to the file"
sleep 0.5
echo "To do that you need to explicit call StdErr use the File Director 2"
head -n1 /etc/passwd /etc/hosts /etc/noneexist 2> StdErr
sleep 2
echo -e "\nThe StdOut prints to the screen"
echo "The StdErr is sent to a file since I used >2"
echo "The error file content:"
cat StdErr
sleep 2
echo -e "\nYou can send the StdOut to a StdOutfile and the StdErr to StdErrfile"
head -n1 /etc/passwd /etc/hosts /etc/noneexist 2> noneexisterr.txt > StdOut 2> StdErr
sleep 2
echo -e "The StdOut file:\n"
cat StdOut 
sleep 2
echo -e "\nThe StdErr file:\n"
cat StdErr 
sleep 3
# NOTE
# So far I have only over written files
# You can append StdOut ">>", Or StdIn "<<" or StdErr "2>>"

# Writing both StdOut and StdErr to the same file
echo -e "\nYou can send StdOut and StdErr to the same file with: $> <filename>\n"
sleep 2
head -n1 /etc/passwd /etc/hosts /etc/noneexist $> bothStdOutStdErr
cat bothStdOutStdErr





