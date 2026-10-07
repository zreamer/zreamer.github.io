const content=`
<meta name="description" content="Zhubuntu is a web Android desktop environment that imitated Ubuntu GNOME desktop environment's user interface">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, minimum-scale=0.25, viewport-fit=cover, interactive-widget=overlays-content">
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="screen-orientation" content="portrait">
<meta name="x5-orientation" content="portrait">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="mobile-web-app-capable" content="yes">
<meta lang="en">

<div onclick="window.open('weixin://')">Chatting List<br></div><hr>
<div onclick="window.open('weixin://dl/scan')">QR Code Scanning<br></div><hr>
<div onclick="window.open('weixin://dl/moments')">Moments<br></div><hr>
<div onclick="window.open('weixin://dl/add')">Add Friends<br></div>
`;
window.quitApp=function quitApp(){
const content='';
document.getElementById('lyappwindow').style.display='none';document.getElementById('applist').style.display='block';
document.getElementById('lyappwindow').style.width='85vw';
d=0;
document.getElementById('lyappwindow').style.left='15vw';
};
runInWindow(content,'WeChat');
