clear all;
%serialportlist; do dykrywania otwartych portów
s = serialport("COM11",9600);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
write(s,240,'uint8')    %Kod do zakodowania podzielony po 8 bitów
x=[];
disp('Initialized succesfully')
%%
write(s,62000,'uint16') %wys³anie 16 bajtów, 8 próbek, tak ¿eby ka¿dego zakodowaæ
x=read(s,1,'uint16');      %oraz odbiór ka¿dego
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16') 
x=[x,read(s,1,'uint16')]
%%
write(s,48,'uint8')
write(s,57,'uint8')
x=[x,read(s,1,'uint16')];
disp('Runned DEBUG')