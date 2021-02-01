signal = TouchToneDialler;
teleKeys=[]; % To store output number
len = length(signal);
% No of digits in phone number
digitCount =  floor(len/2000);
l=1;
b=0;


for i=1:1:digitCount
    
keys_i = dtmf_decode(signal(l:2000*b+2000));
b=b+1;
l=l+2000;
teleKeys=[teleKeys keys_i];
end

dtmf_decode(signal);
disp('The digit count is : ');
disp(digitCount);

disp('Entered number on Touch Tone Keypad: ');
disp(teleKeys);
Number = teleKeys;