function x_v = fx(x_m,u,r_start,r_zuwachs)
    %   Summary of this function goes here
    %   Detailed explanation goes here
    x_v = x_m + r(u,r_start,r_zuwachs) * cos(u);
end

