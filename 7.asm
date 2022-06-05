.386
.model flat, stdcall
	option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
 
.data
	sys_info STARTUPINFO <0>
	proc_info PROCESS_INFORMATION <0>
	cmd db "C:\Windows\WinSxS\wow64_microsoft-windows-calc_31bf3856ad364e35_10.0.22000.653_none_af5a7703d45fcb5b\calc.exe",0
.code
	start:
	 
	 mov sys_info.cb,size STARTUPINFO
	 invoke CreateProcess,0,offset cmd,0,0,1,0,0,0,offset sys_info,offset proc_info
	 
	end start