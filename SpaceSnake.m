callstr = 'set(gcbf,''Userdata'',double(get(gcbf,''Currentcharacter''))) ; uiresume ' ;
fh = figure('keypressfcn',callstr, ...
    'windowstyle','modal',...    
    'position',[1 1 sw sh],...
    'Name','SpaceSnake', ...
    'userdata','timeout');
apples=0;
scoline=uicontrol('Style','Text', ...
    'String',{'Score:' num2str(apples)},...
    'Position',[.05*sw .85*sh .125*sw .075*sh], ...
    'ForegroundColor','b', ...
    'BackgroundColor','g', ...
    'FontSize', 15);
uicontrol('Style','Text', ...
    'String','Made By DOOKIE',...
    'Position',[.84*sw .38*sh .11*sw .02*sh], ...
    'ForegroundColor','r', ...
    'BackgroundColor','b', ...
    'FontWeight','bold', ...
    'FontSize', 10);
uicontrol('Style','Text', ...
    'String','Made By DOOKIE',...
    'Position',[.08*sw .38*sh .11*sw .02*sh], ...
    'ForegroundColor','r', ...
    'BackgroundColor','b', ...
    'FontWeight','bold', ...
    'FontSize', 10);
load snakescore
Fs=8867;
hitsound2=audioplayer(hitslef,Fs);
applesound1=audioplayer(tasty,Fs);
hitsound1=audioplayer(doh,Fs);
applesound2=audioplayer(omnom,Fs);
uicontrol('Style','Text', ...
    'String',{'Highscore:' num2str(highscore)},...
    'Position',[.78*sw .85*sh .125*sw .075*sh], ...
    'ForegroundColor','w', ...
    'BackgroundColor','k', ...
    'FontSize', 15);
uicontrol('Style','Text', ...
    'String',highscoren,...
    'Position',[.78*sw .8*sh .125*sw .05*sh], ...
    'ForegroundColor','w', ...
    'BackgroundColor','k', ...
    'FontSize', 15);
lif=3;
lifline=uicontrol('Style','Text', ...
    'String',{'Lives Left:' num2str(lif)}, ... 
    'Position',[.22*sw .85*sh .125*sw .075*sh], ...
    'ForegroundColor','b', ...
    'BackgroundColor','g', ...
    'FontSize', 15);
uicontrol('Style','Text', ...
    'String','SNAKE 3D', ...
    'Position',[.035*sw .4*sh .2*sw .19*sh], ...
    'ForegroundColor',[0 1 1], ...
    'BackgroundColor','b', ...
    'FontSize', 42)
uicontrol('Style','Text', ...
    'String','SNAKE 3D', ...
    'Position',[.795*sw .4*sh .2*sw .19*sh], ...
    'ForegroundColor',[0 1 1], ...
    'BackgroundColor','b', ...
    'FontSize', 42)
paus=.08; %% .08
sq=18; %% 18
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
snake3dending