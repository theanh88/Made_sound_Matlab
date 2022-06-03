function output = rest(dur)

fs = 44100;
Ts = 1/fs;
dt = 0:Ts:dur;

output = 0*dt;

end