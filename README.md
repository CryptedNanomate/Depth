# Depth
Binary encrpytion and injection tool that bypasses windows defender using process hollowing + QueeUserAPC + ResumeThread written in c#, python, bash, and little bit of assembly.

U will need Mono C# compiler to run this one! on linux ofc.

As an input a program receives a raw binary file . Do not use hexed binary file - the program wont work. 
Program first encrypts the binary file with randomly generated AES 128 bit key and it uses pkcs7 padding. Then it encrypts the master key with another AES 128 + pkcs7 padding. These values are then echoed to the c# program using bash script and sed. The c# program will decrypt the master key and the payload and execute the payload inside virtually allocated memory space.

Before the program gets executed the entry point address of functions EtwEventWrite will be populated with xor rax,rax ret which will make the function return 0. Rax register holds the return value of the function if we xor it  and set it to 0 the function will return 0.
When the executable is downloaded inside windows enviorment windows will call AmsiScanString and when it is executed AmsiScanBuffer will be called thats why we are patching  the address of AmsiScanBuffer with 
xor eax, eax
add eax, 5
xor ecx, ecx
lea edx, [rcx-26h]
jmp qword ptr [rax+rdx*1]
nop

The effect of this code is that when AmsiScanBuffer is called, it will immediately jump to a different function based on the value in the RCX register. The function table is located at an address offset from the start of the module that contains the AmsiScanBuffer function which succesfuly bypasses the AmsiScanBuffer function. HOwever behaviour monitoring module of windows defender CAN FIND AND TERMINATE THE NEWLY malicious CREATED PROCESS so this tool wont work in all  cases- this is becaouse no CreateToolhelp32Snapshot was previously called ( this is in todo list). 
with calling CreateToolhelp32Snapshot we can create snapshot of all runing proceses and loop thru all of them with simple for loop, we can then extract the address of the process with th same name as the hardcoded one at the line 151 and execute our bytes there. but will the mem location have enought space or will address space layouar randomisation or data execution prevention stop that?

. FIrst it will create a process ( hardcoded svchost.exe but feel free to change the line 151 to the any process u want).Once the process is created, the code allocates memory within the process using the VirtualAllocEx function and writes some byetes to that memory using WriteProcessMemory. Then, it queues a user-mode asynchronous procedure call (APC) to the thread using QueueUserAPC, and resumes the thread with ResumeThread which will let the RED TEAM operator to catch a reverse shell. Fell free to add ThreadSleep(numofseconds) to evade defender more. 
Bash script will cat the /dev/urandom and extract only alpha characters from it and swap the variable and function names with newly generated values each time, this way the portable executable will have different hash every time it gets generated. 



THIS IMPLEMENTATION HAS SOME KNOWN FLAWS. I WILL TRY TO FIX THEM IN THE FUTURE


After the portable executable gets downloaded windows defender wont alert as seen below:
![download](https://user-images.githubusercontent.com/95345669/229934339-daa7e4bf-7821-4cd1-b09c-53af07f33604.png)


One of the code lines look like this, all the code lines look simular btw. ( these randomly looking values will be different in every iteration)


![screen](https://user-images.githubusercontent.com/95345669/230502957-8a61f3df-d199-4099-af3c-722a4d1c1f05.png)



if we  execute the portable executable we can see that reverse shell came back:
![shell](https://user-images.githubusercontent.com/95345669/229934578-3e21c0bc-8591-4dc6-8b44-859fd57655d5.png)

and that we can execute arbitary commands: 

![commands](https://user-images.githubusercontent.com/95345669/229934750-fa1b2d0d-0c80-40b3-b9df-1e0fa4172df3.png)

Process is alive:
![process](https://user-images.githubusercontent.com/95345669/229935192-fd4ccd5b-a7cd-4c6b-b9a8-8d83d269947b.png)




TODO LIST: 
1: Add the feature - AddressOfEntryPointHijack 
2: Make the Try statement in decr function fails on purpose, decrypt the payload inside catch statement to evade defender more. - Done
3: Loop thru all proceses with CreateToolhelp32Snapshot
4: SIgn the executable with stolen signature of regular .exe.
5: CORRECT THE PROGRAM NOT TO USE VIRTUALPROTECT AT ALL!!
