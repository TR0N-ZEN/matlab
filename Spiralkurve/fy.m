function y_v = fy(y_m,u,r_start,r_zuwachs)
    %   Summary of this function goes here
    %   Detailed explanation goes here
    y_v = y_m + r(u,r_start,r_zuwachs) * sin(u);
end


