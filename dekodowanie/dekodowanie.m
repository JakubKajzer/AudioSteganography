clear all;
format longg;
[y, Fs] = audioread("output.wav",'native');
%zbic bity w bajty i zmieniæ na double

%y=y.*10000;
for i=1:13074*8
   
    readed(i)=mod(y(i),2);
end

zbitek= reshape(readed,[],8);


for j=1:length(zbitek)
    temp=0;
    for u=1:8
        temp=temp + (2.^(u-1))*zbitek(j,9-u);
    end
    zbitek2(j)= temp;
end

ostatecznie = transpose(double(zbitek2));
fileID = fopen('obraz.png','w');
fwrite(fileID,ostatecznie);
fclose(fileID);



