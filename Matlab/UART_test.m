% by Jakub Kajzer

clear all;
%serialportlist; searching for open COM ports
s = serialport("COM16",115200);
s.Parity = "even"; %if you want to change this or baudrate, you need to change it in FPGA too!	
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
write(s,0x55,'uint8')    %In binary 11110000, easy for debug
x=[];
disp('Initialized succesfully')
%% 
write(s,-5,'int16') % Writing 8 samples
write(s,43,'int16')
write(s,123,'int16')
write(s,-143,'int16')
write(s,32767,'int16')
write(s,0,'int16')
write(s,0,'int16')
write(s,0,'int16')
x=read(s,8,'int16'); % read 8 samples
x=transpose(x); % to see everything better :)
disp("Data ACK");