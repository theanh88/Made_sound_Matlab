clc
clear

Fs = 44100;

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

C5 = 523.35;
D5 = 587.33;
E5 = 659.26;

% not tron dur = 4s, decay = 20e-2
% not trang dur = 2s, decay = 20e-3
% not den dur = 1s, decay = 20e-4
% not moc don = 0.5s, decay = 20e-6
% not moc doi = 0.25, decay = 20e-10 
% not trang cham = 3s, decay = 15e-2
% not den cham = 1.5s, decay = 20e-3

do31 = note(C5, 1, 20e-4, 0.5*2);
do32 = note(C5, 1, 20e-6, 0.25*2);
do33 = note(C5, 1, 20e-10, 0.125*2);

re30 = note(D5, 1, 20e-3, 1*2);
re31 = note(D5, 1, 20e-4, 0.5*2);
re32 = note(D5, 1, 20e-6, 0.25*2);

do20 = note(C4, 1, 20e-3, 1*2);
do21 = note(C4, 1, 20e-4, 0.5*2);
do22 = note(C4, 1, 20e-6, 0.25*2);
do23 = note(C4, 1, 20e-10, 0.125*2);

re200 = note(D4, 1,20e-2, 2*2);
re20 = note(D4, 1, 20e-3, 1*2);
re21 = note(D4, 1, 20e-4, 0.5*2);
re22 = note(D4, 1, 20e-6, 0.25*2);
re23 = note(D4, 1, 20e-10, 0.125*2);

mi200 = note(E4, 1, 20e-2, 2*2);
mi21 = note(E4, 1, 20e-4, 0.5*2);
mi22 = note(E4, 1, 20e-6, 0.25*2);
mi23 = note(E4, 1, 20e-10, 0.125*2);

fa21 = note(F4, 1, 20e-4, 0.5*2);
fa22 = note(F4, 1, 20e-6, 0.25*2);
fa23 = note(F4, 1, 20e-10, 0.125*2);

sol200 = note(G4, 1, 20e-2, 2*2);
sol20 = note(G4, 1, 20e-3, 1*2);
sol21 = note(G4, 1, 20e-4, 0.5*2);
sol22 = note(G4, 1, 20e-6, 0.25*2);
sol23 = note(G4, 1, 20e-10, 0.125*2);

la200 = note(A4, 1, 20e-2, 2*2);
la20 = note(A4, 1, 20e-3, 1*2);
la21 = note(A4, 1, 20e-4, 0.5*2);
la22 = note(A4, 1, 20e-6, 0.25*2);
la23 = note(A4, 1, 20e-10, 0.125*2);

si20 = note(B4, 1, 20e-3, 1*2);
si21 = note(B4, 1, 20e-4, 0.5*2);
si22 = note(B4, 1, 20e-6, 0.25*2);
si23 = note(B4, 1, 20e-10, 0.125*2);

do11 = note(C3, 1, 20e-4, 0.5*2);
do12 = note(C3, 1, 20e-6, 0.25*2);
do13 = note(C3, 1, 20e-10, 0.125*2);

re100 = note(D3, 1, 20e-2, 2*2);
re11 = note(D3, 1, 20e-4, 0.5*2);
re12 = note(D3, 1, 20e-6, 0.25*2);
re13 = note(D3, 1, 20e-10, 0.125*2);

mi100 = note(E3, 1, 20e-2, 2*2);
mi11 = note(E3, 1, 20e-4, 0.5*2);
mi12 = note(E3, 1, 20e-6, 0.25*2);
mi13 = note(E3, 1, 20e-10, 0.125*2);

fa11 = note(F3, 1, 20e-4, 0.5*2);
fa12 = note(F3, 1, 20e-6, 0.25*2);
fa13 = note(F3, 1, 20e-10, 0.125*2);

sol100 = note(G3, 1, 20e-2, 2*2);
sol10 = note(G3, 1, 20e-3, 1*2);
sol11 = note(G3, 1, 20e-4, 0.5*2);
sol12 = note(G3, 1, 20e-6, 0.25*2);
sol13 = note(G3, 1, 20e-10, 0.125*2);

la100 = note(A3, 1, 20e-2, 2*2);
la10 = note(A3, 1, 20e-3, 1*2);
la11 = note(A3, 1, 20e-4, 0.5*2);
la12 = note(A3, 1, 20e-6, 0.25*2);
la13 = note(A3, 1, 20e-10, 0.125*2);

si10 = note(B3, 1, 20e-3, 1*2);
si11 = note(B3, 1, 20e-4, 0.5*2);
si12 = note(B3, 1, 20e-6, 0.25*2);
si13 = note(B3, 1, 20e-10, 0.125*2);


rest1 = rest(4);
rest2 = rest(2);
rest3 = rest(1);
rest4 = rest(0.5);
rest5 = rest(0.25);

sol20_pt = note(G4, 1, 15e-2, 1.5*2);
si20_pt = note(B4, 1, 15e-2, 1.5*2);
re20_pt = note(D4, 1, 15e-2, 1.5*2);
mi30_pt = note(E5, 1, 15e-2, 1.5*2);
sol21_pt = note(G4, 1,20e-3, 0.75*2);
la20_pt = note(A4, 1, 15e-2, 1.5*2);

line1 = [sol22 la22 si20 la22 sol22 la21 re30 do22 si22 sol20_pt mi21 re20_pt sol22 la22];
line2 = [si20_pt la22 sol22 la21 re30 si22 re32 mi30_pt re31 la200 sol21_pt sol22 sol21 sol21];
line3 = [fa21 sol20 fa21 fa21 sol20 la21 si20 la20 sol21_pt sol22 sol21 sol21 fa21 sol20 re21];
line4 = [re200 re200 sol21_pt sol22 sol21 sol21 fa21 sol20 fa21 fa21 sol20 la21];
line5 = [si20 la20 sol21_pt sol22 sol21 sol21 fa21 sol20 re21 re200 re200];
line6 = [sol200 la20_pt re21 re30 do31 si21 la20 si21 do31 si20 la21 sol21];
line7 = [fa21 sol20 fa21 mi200 re200 sol200 la20_pt re21];
line8 = [re30 do31 si21 la20 si21 do31 si20 la21 sol21 fa21 sol20 fa21 fa21 sol20 la21];
line9 = [si20 la20 sol200];

%song = [line1 line2 line3 line4 line5 line6 line7 line8 line9];
song = line1;
plot(song);
sound(song,Fs);
