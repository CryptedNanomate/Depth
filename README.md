# Depth
Binary encrpytion and injection tool that bypasses windows defender using process hollowing + QueeUserAPC + ResumeThread written in c#, python, bash, and little bit of assembly.

U will need Mono C# compiler to run this one! on linux ofc.

As an input a program receives a raw binary file . Do not use hexed binary finaly - the program wont work. 
Program first encrypts the binary file with randomly generated AES 128 bit key and it uses pkcs7 padding. Then it encrypts the master key with another AES 128 + pkcs7 padding. These values are then echoed to the c# program using bash script and sed. The c# program will decrypt the master key and the payload and execute the payload inside virtually allocated memory space.

Before the program gets executed the entry point address of functions EtwEventWrite will be populated with xor rax,rax ret which will make the function return 0. Rax register holds the return value of the function if we xor it  and set it to 0 the function will return 0.
When the executable is downloaded inside windows enviorment windows will call AmsiScanString and when it is executed AmsiScanBuffer will be called thats why we are patching  the address of AmsiScanBuffer with 
xor eax, eax
add eax, 5
xor ecx, ecx
lea edx, [rcx-26h]
jmp qword ptr [rax+rdx*1]
nop

The effect of this code is that when AmsiScanBuffer is called, it will immediately jump to a different function based on the value in the RCX register. The function table is located at an address offset from the start of the module that contains the AmsiScanBuffer function which succesfuly bypasses the AmsiScanBuffer function. HOwever behaviour monitoring module of windows defender CAN FIND AND TERMINATE THE NEWLY malicious CREATED PROCESS so this tool wont work in every cases- this is becaouse no CreateToolhelp32Snapshot was previously called ( this is in todo list). 
with calling CreateToolhelp32Snapshot we can create snapshot of all runing proceses and loop thru all of them with simple for loop, we can then extract the address of the process with th same name as the hardcoded one at the line 151 and execute our bytes there.

. FIrst it will create a process ( hardcoded svchost.exe but feel free to change the line 151 to the any process u want).Once the process is created, the code allocates memory within the process using the VirtualAllocEx function and writes some byetes to that memory using WriteProcessMemory. Then, it queues a user-mode asynchronous procedure call (APC) to the thread using QueueUserAPC, and resumes the thread with ResumeThread which will let the RED TEAM operator to catch a reverse shell. Fell free to add ThreadSleep(numofseconds) to evade defender more. 
Bash script will cat the /dev/urandom and extract only alpha characters from it and swap the variable and function names with newly generated values each time, this way the portable executable will have different hash every time it gets generated. 



THIS IMPLEMENTATION HAS SOME KNOWN FLAWS. I WILL TRY TO FIX THEM IN THE FUTURE




