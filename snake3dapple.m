for c=1:3
    x(1:21, end+1:end+21)=x(1:21, end-20:end);
    y(1:21, end+1:end+21)=y(1:21, end-20:end);
    z(1:21, end+1:end+21)=z(1:21, end-20:end);
end
[xapple yapple zapple] = sphere;
xloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
yloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
zloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
xapple=xapple+xloc;
yapple=yapple+yloc;
zapple=zapple+zloc;
for c=1:(size(x,2)/21)-1
    while xapple(1,1)==x(1,1+21*c) && yapple(1,1)==y(1,1+21*c) && zapple(1,1)==z(1,1+21*c)
        xloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
        yloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
        zloc=(2*fix(2*rand)-1)*(2*fix(.5*sq*rand)+1);
        xapple=xapple+xloc;
        yapple=yapple+yloc;
        zapple=zapple+zloc;
        c=1;
    end
end
aline=surf(xapple,yapple,zapple,zapple);
shading interp
aps=fix(2*rand);