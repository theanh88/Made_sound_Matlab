function output = note_v2(f)
    fs = 44100;

    N = 60000;
    b = -0.99*[0.5 0.5];
    z = 1;

    D = fix(mod(fs,f));
    output = zeros(1,N); 
    dline = 2 * rand(1, D) - 1.0;
    ptr = 1;

    for n = 1:N,
    
        output(n) = dline(ptr);
        [dline(ptr), z] = filter(b, 1, output(n), z);
  
        % Increment Pointers & Check Limits

        ptr = ptr + 1;
        if ptr > D
            ptr = 1;
        end
    end

    max(abs(output));
    if max(abs(output)) > 0.95
        output = output./(max(abs(output))+0.1);
    end
end