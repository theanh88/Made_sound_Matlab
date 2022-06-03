function output = note(f, amp, decay, dur)
fs = 44100;
Ts = 1/fs;
dt = 0:Ts:dur;

y = amp*sin(2*pi*f*dt);

output = y.*(amp*decay.^dt);
end
