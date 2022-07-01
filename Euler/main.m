dt = 0.1;
t = 0:dt:300;
%s(1) = 0; % in Meter
%v(1) = 0; % in Meter pro Sekunde
%a(1) = 0; % in Meter pro Quadratsekunde
s = zeros(3001);
v = zeros(3001);
a = zeros(3001);

for i=1:1:length(t)-1
    if (0 <= s(i)) && (s(i) < 800)
        v_richt = 30;
    elseif (800 <= s(i)) && (s(i) < 1300)
        v_richt = 40;
    elseif (1300 <= s(i)) && (s(i) < 2500)
        v_richt = 25;
    elseif (2500 <= s(i)) && (s(i) < 3500)
        v_richt = 20;
    elseif (3500 <= s(i)) && (s(i) < 4000)
        v_richt = 15;
    elseif (4000 <= s(i)) && (s(i) < 5800)
        v_richt = 20;
    elseif (5800 <= s(i))
        v_richt = 0;
    else
        printf "LOL";
    end
    v_diff = v_richt - v(i);
    if v_diff < -10
        a(i+1) = -1;
    elseif (-10 < v_diff) && (v_diff < -0.1)
        a(i+1) = -0.8;
    elseif (-0.1 <= v_diff) && (v_diff < 0.1)
        a(i+1) = 0;
    elseif (0.1 <= v_diff) && (v_diff < 10)
        a(i+1) = 40;
    elseif 10 <= v_diff
        a(i+1) = 1.2;
    end
    v(i+1) = v(i) + a(i)*dt;
    s(i+1) = s(i) + v(i)*dt;
end
hold on
plot(s);
plot(v);

%subplot