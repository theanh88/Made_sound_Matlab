% My Heart Will Go Om
% Use guitar

clc
clear

Fs = 44100;

%frequency of notes
C3 = 130.81;
D3 = 146.83;
E3 = 164.81;
F3 = 174.61;
G3 = 196.00;
A3 = 220.00;
B3 = 246.94;

C4 = 261.63;
D4 = 293.66;
E4 = 329.63;
F4 = 349.23;
G4 = 392.00;
A4 = 440.00;
B4 = 493.88;

%loop filter:
B = [0.8995 0.1087];
A = [1 0.0136];
p = .9;  %pluck position

%getexcitesignal
e = audioread('excite-plucked-soft.wav');
e = e';

% not tron dur = 4s
% not trang dur = 2s
% not den dur = 1s
% not moc don dur = 0.5s
% not moc doi dur = 0.25s
% not trang cham dur = 3s
% not den cham dur = 1.5s

%Made notes
do31 = kspluck(C4, 0.5*2, e, A, B, p);
do32 = kspluck(C4, 0.25*2, e, A, B, p);
do33 = kspluck(C4, 0.125*2, e, A, B, p);

re30 = kspluck(D4, 1*2, e, A, B, p);
re31 = kspluck(D4, 0.5*2, e, A, B, p);
re32 = kspluck(D4, 0.25*2, e, A, B, p);

do20 = kspluck(C3, 1*2, e, A, B, p);
do21 = kspluck(C3, 0.5*2, e, A, B, p);
do22 = kspluck(C3, 0.25*2, e, A, B, p);
do23 = kspluck(C3, 0.125*2, e, A, B, p);

re200 = kspluck(D3, 2*2, e, A, B, p);
re20 = kspluck(D3, 1*2, e, A, B, p);
re21 = kspluck(D3, 0.5*2, e, A, B, p);
re22 = kspluck(D3, 0.25*2, e, A, B, p);
re23 = kspluck(D3, 0.125*2, e, A, B, p);

mi200 = kspluck(E3, 2*2, e, A, B, p);
mi21 = kspluck(E3, 0.5*2, e, A, B, p);
mi22 = kspluck(E3, 0.25*2, e, A, B, p);
mi23 = kspluck(E3, 0.125*2, e, A, B, p);

fa21 = kspluck(F3, 0.5*2, e, A, B, p);
fa22 = kspluck(F3, 0.25*2, e, A, B, p);
fa23 = kspluck(F3, 0.125*2, e, A, B, p);

sol200 = kspluck(G3, 2*2, e, A, B, p);
sol20 = kspluck(G3, 1*2, e, A, B, p);
sol21 = kspluck(G3, 0.5*2, e, A, B, p);
sol22 = kspluck(G3, 0.25*2, e, A, B, p);
sol23 = kspluck(G3, 0.125*2, e, A, B, p);

la200 = kspluck(A3, 2*2, e, A, B, p);
la20 = kspluck(A3, 1*2, e, A, B, p);
la21 = kspluck(A3, 0.5*2, e, A, B, p);
la22 = kspluck(A3, 0.25*2, e, A, B, p);
la23 = kspluck(A3, 0.125*2, e, A, B, p);

si20 = kspluck(B3, 1*2, e, A, B, p);
si21 = kspluck(B3, 0.5*2, e, A, B, p);
si22 = kspluck(B3, 0.25*2, e, A, B, p);
si23 = kspluck(B3, 0.125*2, e, A, B, p);

sol20_pt = kspluck(G3, 1.5*2, e, A, B, p);
si20_pt = kspluck(B3, 1.5*2, e, A, B, p);
re20_pt = kspluck(D3, 1.5*2, e, A, B, p);
mi30_pt = kspluck(E4, 1.5*2, e, A, B, p);
sol21_pt = kspluck(G3, 0.75*2, e, A, B, p);
la20_pt = kspluck(A3, 1.5*2, e, A, B, p);

line1 = [sol22 la22 si20 la22 sol22 la21 re30 do22 si22 sol20_pt mi21 re20_pt sol22 la22];
line2 = [si20_pt la22 sol22 la21 re30 si22 re32 mi30_pt re31 la200 sol21_pt sol22 sol21 sol21];
line3 = [fa21 sol20 fa21 fa21 sol20 la21 si20 la20 sol21_pt sol22 sol21 sol21 fa21 sol20 re21];
line4 = [re200 re200 sol21_pt sol22 sol21 sol21 fa21 sol20 fa21 fa21 sol20 la21];
line5 = [si20 la20 sol21_pt sol22 sol21 sol21 fa21 sol20 re21 re200 re200];
line6 = [sol200 la20_pt re21 re30 do31 si21 la20 si21 do31 si20 la21 sol21];
line7 = [fa21 sol20 fa21 mi200 re200 sol200 la20_pt re21];
line8 = [re30 do31 si21 la20 si21 do31 si20 la21 sol21 fa21 sol20 fa21 fa21 sol20 la21];
line9 = [si20 la20 sol200];

song = [line1 line2 line3 line4 line5 line6 line7 line8 line9];
%song = line1;
plot(song);
sound(song,Fs);
