[x y z]=sphere;
x=[x+1 x+1 x+1];
y=[y+1 y+1 y+1];
z=[z+1 z+1 z+1];
sides=ones(size(x))*sq;
hline=surf(x,y,z);
shading interp
xline=surf(-sides,y,z);
yline=surf(x,-sides,z);
zline=surf(x,y,-sides);
snake3dapple
xdir=-2;
ydir=0;
zdir=0;
ch=0;
sline=text(.5*sq,0,0,'Press space to go!');
while ch~=32
    uiwait
    ch = get(fh,'Userdata');
    if ch == 27
        lif=0;
        return
    end
end
delete(sline)
while ch~=27
    pause(paus)
    ch = get(fh,'Userdata');
    if isempty(ch),
        ch=0;
    end
    switch ch
        case 31
            xdir=2;
            ydir=0;
            zdir=0;
        case 30
            xdir=-2;
            ydir=0;
            zdir=0;
        case 29
            ydir=2;
            xdir=0;
            zdir=0;
        case 28
            ydir=-2;
            xdir=0;
            zdir=0;
        case 32
            zdir=-2;
            xdir=0;
            ydir=0;
        case 119
            zdir=2;
            xdir=0;
            ydir=0;
            
    end
    delete(hline)
    delete(xline)
    delete(yline)
    delete(zline)
    snake3dplot
end
clear x y z xdir ydir zdir
delete(hline)
delete(aline)
delete(xline)
delete(yline)
delete(zline)
lif=lif-1;
delete(lifline);
lifline=uicontrol('Style','Text', ...
    'String',{'Lives Left:' num2str(lif)}, ...
    'Position',[.22*sw .85*sh .125*sw .075*sh], ...
    'ForegroundColor','b', ...
    'BackgroundColor','g', ...
    'FontSize', 15);
return