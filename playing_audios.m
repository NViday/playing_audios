% N'Vida A. Yotcho 
% June 2016

% matlab code 
% to play multiple audios 
% an example of 
% reading textfile line by line



function [fine ] = playing_audios( textfile ) 

% Open the text file 
fid = fopen(textfile);

% Playing the audios

audio = fgetl(fid);

while ischar(audio)
    
   disp(audio) % printing filename
   
   
   [y, fs] = audioread(audio);
   
   player = audioplayer(y, fs);
   
   disp( ' about to play ' ) %just checking
   
   play (player);
   
   
   pause(10); % 10 seconds
   
   disp ( ' done ' ) 
   
   audio = fgetl(fid);
end

fine = 0; % code works fine if file exist and contains audio file name only
end 


