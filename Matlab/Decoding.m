% by Jakub Kajzer

clear all;
[y, Fs] = audioread("output.wav",'native');
 % "conversion" from double to int16

ack='0000110'; % 'ACK' binary


sample_int=int16(y);
for i=1:length(sample_int)
   
    wynik(i)=mod(sample_int(i),2); %extraction of last bits
end
final = int2str(wynik);
final = final(~isspace(final));

final_string=string(final);
ack_string=string(ack);

where_is_code=strfind(final_string,ack_string);

ilosc_liter=(where_is_code(2)-where_is_code(1)-length(ack))/7;

for i=1 : length(where_is_code)-1
    
    if(where_is_code(i)+length(ack) < length(final))
        choppedText(i,:)=final(where_is_code(i)+length(ack):where_is_code(i+1)-1); %chars from ACK to next ACK 
    end
    
end

MoreChoppedText = vec2mat(choppedText,7);

MoreChoppedText=bin2dec(MoreChoppedText);
MoreChoppedText=char(MoreChoppedText);
MoreChoppedText=transpose(MoreChoppedText);
decoded= vec2mat(MoreChoppedText,ilosc_liter)
