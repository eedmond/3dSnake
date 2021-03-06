callstr = 'set(gcbf,''Userdata'',double(get(gcbf,''Currentcharacter''))) ; uiresume ' ;
fh = figure('keypressfcn',callstr, ...
    'windowstyle','modal',...
    'position',[0 0 1000 1000],...
    'Name','SpaceSnake', ...
    'userdata','timeout');
ch=0;
if a==1
    
    load snakescore
    Fs=8867;
    hitsound2=audioplayer(hitslef,Fs);
    applesound1=audioplayer(tasty,Fs);
    hitsound1=audioplayer(doh,Fs);
    applesound2=audioplayer(omnom,Fs);
    uicontrol('Style','Text', ...
        'String','(w)', ...
        'Position',[197.5 470 30 25], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'HorizontalAlignment','center', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String','(space)', ...
        'Position',[180 185 65 25], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String','<--', ...
        'Position',[265 122 30 25], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'HorizontalAlignment','center', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String','-->', ...
        'Position',[545 60 30 25], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'HorizontalAlignment','center', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String',' /\    |  |', ...
        'Position',[770 170 20 65], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'HorizontalAlignment','center', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String','  |    |  V', ...
        'Position',[660 65 20 60], ...
        'ForegroundColor','k', ...
        'BackgroundColor','m', ...
        'HorizontalAlignment','center', ...
        'FontSize', 13)
    uicontrol('Style','Text', ...
        'String','TRAINING', ...
        'Position',[0 685 300 70], ...
        'ForegroundColor',[0 1 1], ...
        'BackgroundColor','b', ...
        'FontSize', 42)
    uicontrol('Style','Text', ...
        'String','Press 1 to go back to the menu', ...
        'Position',[400 698 200 50], ...
        'ForegroundColor','w', ...
        'BackgroundColor','b', ...
        'FontSize', 15)
    paus=.08;
    sq=18;
    axes('XLim',[-sq sq],'YLim',[-sq sq],'ZLim',[-sq sq], ...
        'xTick',[],'yTick',[],'zTick',[])
    hold all
    a=-sq:sq;
    b=sq*ones(2*sq+1);
    plot3(b,b,a,'k');
    plot3(a,b,b,'k');
    plot3(b,a,b,'k');
    plot3(-b,-b,a,'--k');
    plot3(a,-b,-b,'--k');
    plot3(-b,a,-b,'--k');
    view(115,30)
    zoom(1)
    %%settings
    whitebg('g')
    set(gcf,'Color','b')
    [x y z]=sphere;
    x=[x+1 x+1 x+1];
    y=[y+1 y+1 y+1];
    z=[z+1 z+1 z+1];
    sides=ones(size(x))*sq;
    hline=surf(x,y,z);
    xline=surf(-sides,y,z);
    yline=surf(x,-sides,z);
    zline=surf(x,y,-sides);
    yapple=100;
    zapple=100;
    xapple=100;
    while ch~=49
        uiwait
        ch = get(fh,'Userdata');
        if isempty(ch),
            ch = 0;
        end
        xdir=0;
        ydir=0;
        zdir=0;
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
            case 49
                delete(fh)
                clear
                playsnake
        end
        delete(hline,xline,yline,zline)
        snake3dplot
    end
else
    uicontrol('Style','Text', ...
        'String','The programming super group known as DooKE is formed of three elite parts. All of them have their strengths, and none of them have weaknesses. Eric- his main job was writing the code in MatLab format, he knew the most commands and could put theory onto paper. He is a secret government project trying to breed a human being with a computer. With his glasses he can see through any non radio active material. Also he can run long distance in a short period of time. Jeff ? a master of theory, he can come up with an idea on how to solve a problem in basic programming form. He gives this idea to Eric, who then writes the code. Jeff is also a beast on the tennis court, likes long walks on the beach, and a good romance novel.  He is an expert at any type of back yard sport, and can also juggle very well. Ethan- an expert of sound effects and research. All of the sounds and ascetics were done by Ethan. Also, whenever there was a problem that Eric or Jeff couldn?t solve, Ethan would look until the answer was found. Even though he tore his ACL, he still works through the pain everyday to walk back and forth from the computer and the lab. We make all of our programs from scratch in our Engineering class in the High School. With the support, and funding, from our Teacher, Mr. Baker, we were able to complete our programs with ease. He is a great influence in our lives because he is always pushing us to exceed expectations, and is always there to help if we need it.  Explanation of the name: It was originally spelled Do?KE, and still pronounced Dookie. This however was to hard to search on the internet or any networking site. So we changed the spelling. The phrase ?Do?KE? is a physics joke. ?KE in physics means ?work.?  So Do?KE means Do Work. Which is a very popular saying amongst the youngsters these days.',...
        'Position',[0 0 1000 750], ...
        'ForegroundColor','y', ...
        'BackgroundColor','k', ...
        'FontSize', 17);
    uicontrol('Style','Text', ...
        'String','Press any key to go back to the menu', ...
        'Position',[400 100 200 50], ...
        'ForegroundColor','w', ...
        'BackgroundColor','k', ...
        'FontSize', 10)
    uiwait
    while ch~=0
        ch = get(fh,'Userdata');
    end
    delete(fh)
    clear
    playsnake
end