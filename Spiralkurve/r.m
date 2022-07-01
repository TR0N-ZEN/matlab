function radius = r(u,r_start,r_zuwachs)
    %   Summary of this function goes here
    %   Detailed explanation goes here
    radius = r_start + u * (r_zuwachs/(2*pi));
end

