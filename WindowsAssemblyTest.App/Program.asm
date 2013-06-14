
;Check tutors folder 


.586
.model flat,stdcall
.stack 4096

extrn ExitProcess@4 : proc
extrn MessageBoxA@16 : proc
.data
	MessageText db "Hellow world!",0
	AppTitle db "Test app",0

.code
	main:nop
		;Push stack with paramters for MessageBoxA http://msdn.microsoft.com/en-us/library/windows/desktop/ms645505(v=vs.85).aspx
		push 0 ;window handle

		lea eax,AppTitle ; pointer to message box caption
		push eax

		lea eax,MessageText ; pointer to messagebox text
		push eax
				
		push 0 ; type of the message box  0 means MB_OK 'Ok'

		call MessageBoxA@16 ; Call windows function

		push 0 ; Paramter for exit process
		call ExitProcess@4 ; Call windows function

	end main
	

