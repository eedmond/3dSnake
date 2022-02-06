x=circshift(x, [0 21]);
x(1:21,1:21)=x(1:21,22:42)+xdir;
y=circshift(y, [0 21]);
y(1:21,1:21)=y(1:21,22:42)+ydir;
z=circshift(z, [0 21]);
z(1:21,1:21)=z(1:21,22:42)+zdir;
sides=ones(size(x))*sq;
hline=surf(x,y,z);
xline=surf(-sides,y,z);
yline=surf(x,-sides,z);
zline=surf(x,y,-sides);
shading interp
ch=0;
if (xdir==-2 && min(min(x))<=-sq-2) || (xdir==2 && max(max(x))>=sq+2) || (ydir==-2 && min(min(y))<=-sq-2) || (ydir==2 && max(max(y))>=sq+2) || (zdir==-2 && min(min(z))<=-sq-2) || (zdir==2 && max(max(z))>=sq+2)
    play(hitsound1)
    enline=text(.5*sq,0,0,'You hit the wall...');
    pause(2)
    delete(enline)
    ch=27;
    return
end
for c=1:(size(x,2)/21)-1
    if x(1,1)==x(1,1+21*c) && y(1,1)==y(1,1+21*c) && z(1,1)==z(1,1+21*c)
        play(hitsound2)
        enline=text(.5*sq,0,0,'You hit yourself...');
        pause(2)
        delete(enline)
        ch=27;
    end
    if x(1,1)==xapple(1,1) && y(1,1)==yapple(1,1) && z(1,1)==zapple(1,1)
        delete(aline)
        apples=apples+1;
        delete(scoline);
        scoline=uicontrol('Style','Text', ...
            'String',{'Score:' num2str(apples)},...
            'Position',[100 680 100 50], ...
            'ForegroundColor','b', ...
            'BackgroundColor','g', ...
            'FontSize', 15);
        if aps==0
            play(applesound1);
        else
            play(applesound2);
        end
        snake3dapple
    end
end
return