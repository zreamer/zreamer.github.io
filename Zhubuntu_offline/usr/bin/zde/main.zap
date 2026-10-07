<!-- 桌面主界面 独立screen，所有桌面子元素全部包含在内 -->
<meta name="description" content="Zhubuntu is a web Android desktop environment that imitated Ubuntu GNOME desktop environment's user interface">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, minimum-scale=0.25, viewport-fit=cover, interactive-widget=overlays-content">
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="screen-orientation" content="portrait">
<meta name="x5-orientation" content="portrait">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="mobile-web-app-capable" content="yes">
<meta lang="en"><link rel="stylesheet" href="../style.css"><div class="screen" style="display:block;background:#bae1ff;transition:all 0.3s ease" id="desktop"><style>@font-face{
font-family: u1;
src:url('https://fonts.gstatic.com/s/ubuntu/v21/4iCs6KVjbNBYlgoKfw72nU6AFw.woff2') format('woff2');font-display: swap;
}
@font-face{
font-family: u2;
src:url('https://fonts.gstatic.com/s/ubuntu/v21/4iCv6KVjbNBYlgoCxCvjsGyNPYZvgw.woff2') format('woff2');font-display: swap;
}
#applist div{
margin-top:2vh;

}
body,html{
height: 100%;
margin: 0;
overflow: hidden;
transition: all 0.3s ease;
font-family: u1;
box-sizing: border-box;
}
.signIn:hover{
width:9vh;height:4vh;border-radius:10px;border:2px solid #fff;background-color:rgba(255,255,255,0.8);color:white;font-size:1.5rem
}
.startingChoice{
width: 100%;
padding:8px 0;
cursor:pointer;
}
.startingChoice:hover{
background: #ffffff ;
}
.screen{
height: 100vh;width: 100vw;
display: flex;transition: all 0.3s ease;position: absolute;
width: 100vw;
height: 100vh;
overflow: hidden;
top:0;left:0;
}
.center {
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
height: 100vh;
gap: 20px;transition: all 0.3s ease;
}
.button-row {
width: 100%;
text-align: center;transition: all 0.3s ease;
}
.icon {
height: auto;
width: 110px;
margin: 15px;
display: flex;
flex-direction: column;
gap: 30px;
cursor: pointer;
position: relative;transition: all 0.3s ease;
}
.icon:hover{
height: auto;
width: 115px;
margin: 15px;
display: flex;
flex-direction: column;
gap: 30px;
cursor: pointer;
position: relative;transition: all 0.3s ease;
background: rgba(255,255,255,0.3);border-radius: 5px;box-shadow: 0px 2px 4px rgba(0,0,0,0.1);
}
.icon img {
height: 90px;
width: 90px;
border-radius: 5px;transition: all 0.3s ease;
position: relative;
top: 9.5px;left: 9.5px;
}
.icon p {
text-align: center;
margin: 0;
font-size: 20px;
color: #000;
width: 100%;
position: static;transition: all 0.3s ease;
}
.dockIcon{
    width:90%;aspect-ratio: 1 / 1;background:rgba(255,255,255,0);border-radius:1%;transition:all 0.3s ease;margin:2.5%;padding:2.5%;
    
}
.dockIcon img{
    width:100%;height:100%;transition:all 0.3s ease;border-radius:5px;
}
.icons {
height: auto;
width: 40px;
margin: 5px;
flex-direction: column;
gap: 0px;
cursor: pointer;
position: relative;transition: all 0.3s ease;
}
.icons img {
height: 40px;
width: 40px;
border-radius: 5px;transition: all 0.3s ease;
}
.icons p {
text-align: center;
margin: 0;
font-size: 15px;
color: #000;
overflow: hidden;
text-overflow: ellipsis;
position: static;transition: all 0.3s ease;
}
.window{
height: 70%;
width: 70%;
position: absolute;
top:50px;
left:50px;
box-shadow: 5px 8px 10px rgba(0,0,0,0.3);transition: all 0.3s ease;
padding:none;
}
.windowl{
height: 80%;
width: 60%;
position: absolute;
top:50px;
left:50px;
box-shadow: 5px 8px 10px rgba(0,0,0,0.3);transition: all 0.3s ease;
padding:none;
}
.alertBox{
padding: 0px;
 background: rgba(255, 255, 255, 0.4);transition: all 0.3s ease;
z-index: 200;
 display: none;
height: 30vh;
 width: 60vw;
position: absolute;
 top :30%;
left:15%;
 border-radius: 5px;
box-shadow: 0px 2px 4px rgba(0,0,0,0.1);
 padding: 10px;
}/*
 .alertBox:hover{
 padding: 0px;
 background: rgba(220, 243, 255, 0.6);transition: all 0.3s ease;
 z-index: 200;
 display: block;
 height: 60vh;
 width: 60vw;
 position: absolute;
 top :10%;
 left:10%;
 border-radius: 5px;
 box-shadow: 0px 2px 4px rgba(0,0,0,0.1);padding: 15px;
 }*/
 .alertBox div{
position: absolute;height: 3vh;width: 60vw;bottom:0;background:rgba(0, 0, 60, 0.1);border-radius: 0 0 5px 5px;transition: all 0.3s ease;
 }
 .alertBox div button{
background: #447799;color: white;border: none;border-radius: 5px;margin: 10px;width: 100%;height: 1.8vh;font-size:1vh;transition: all 0.3s ease;
 }
 .alertBox div button:hover{
background: #447799;color: white;border: none;border-radius: 5px;margin: 10px;position: absolute;right:0;bottom:0;width: 100px;height: 1.8vh;font-size:1vh;transition: all 0.3s ease;
 }
 .windowControl{
height:3vh;width: 3vh;background: #dddddd;position: absolute;border-radius: 50%;border: none;margin: 3px;top:0;font-size: 1vh;transition: all 0.3s ease;box-shadow:1px 1px 1px 2px rgba(255,255,255,0.3)
 }
 .windowl button{
height:2vw;width: 2vw;background: #bae1ff;position: absolute;border-radius: 50%;border: none;margin: 3px;top:0;font-size: 1.5vh;transition: all 0.3s ease;box-shadow:1px 1px 1px 2px rgba(255,255,255,0.3)
 }
 .windowControl button:hover{
height:3vh;width: 3vh;background: #bbbbbb;position: absolute;border-radius: 50%;border: none;margin: 3px;top:0;font-size: 1vh;transition: all 0.3s ease;
 }
 .bar{
background: 0;width: 50vw;height: 5vh;position: absolute;margin: 0px;bottom:0;left:25vw;transition: all 0.3s ease;
 }
 .bar:hover{
background: rgba(225,225,255,0.1);width: 52vw;height: 5vh;position: absolute;margin: 0px;bottom:0;left:25vw;transition: all 0.3s ease;padding: 0 10px 10px 10px;
 }
 .start{
height:4vh;width: 4vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;font-size: 5px;
 }
 .start:hover{
height:4.5vh;width: 4.5vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;font-size: 5px;
 }
 .startdb{
height:4vh;width: 4vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;left: 5vh;font-size: 5px;transition: all 0.3s ease;
 }
 .startdb:hover{
height:4.5vh;width: 4.5vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;left: 5vh;font-size: 5px;transition: all 0.3s ease;
 }
 .startdb img{width: 4vh;height: 4vh;transition: all 0.3s ease;}
 .tb{
height:4vh;width: 4vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;left: 10vh;font-size: 5px;transition: all 0.3s ease;
 }
 .tb:hover{
height:4.5vh;width: 4.5vh;background: 0;position: absolute;border: none;margin: 1px 0 0 0;top:0;left: 10vh;font-size: 5px;transition: all 0.3s ease;
 }
 .tb img{width: 4vh;height: 4vh;transition: all 0.3s ease;}
 .bar button img{width: 4vh;height: 4vh;transition: all 0.3s ease;}
 .time{
background:#E7F5FF;position: absolute;border: none;margin: 1px 0 0 0;top:0;font-size: 15px; right:0;padding: 10px;border-radius: 50vh;height: 4vh;
 }
 .startSelection{
background: #E7F5FF;margin: 6vh;width: 50vw;height: 50vh;position: absolute;left:calc(25vw - 6vh);bottom:0;border-radius: 5px;padding: 5px;display:none;box-shadow: 0px 2px 4px rgba(0,0,0,0.1);transition: all 0.3s ease;
 }
 .startSelection:hover{
background: #E7F5FF;margin: 6vh;width: 53vw;height: 53vh;position: absolute;left:calc(25vw - 6vh);bottom:0;border-radius: 5px;padding: 5px;display:none;box-shadow: 0px 2px 4px rgba(0,0,0,0.4);transition: all 0.3s ease;
 }
 .closeStart{
border-radius: 5px;height: 30px;margin: 8px;background: #d7e5ee;position: absolute;top:0;right:0;border: none;transition: all 0.3s ease;
 }
 .closeStart:hover{
border-radius: 5px;height: 40px;margin: 8px;background: #d7e5ff;position: absolute;top:0;right:0;border: none;transition: all 0.3s ease;
 }
 .sc{
height: 2vh;
font-size: 1.5vh;
width:2vh;
background: #bae1ff;
position: absolute;
border-radius: 50%;
border: none;
margin: 3px;
top:0;
transition: all 0.3s ease;
box-shadow:1px 1px 1px 2px rgba(255,255,255,0.3);
 }
 .appmore{
 height: auto;
 width: 99%;
 padding: 8px;
 cursor: pointer;
 }
 .opt{font-family:u1;transition:all 0.3s ease}
 .opt:hover{background:gray;transition:all 0.3s ease}
 /* 弹窗遮罩统一样式 */
 .modal-mask{
position:absolute;
inset:0;
background:rgba(0,0,0,0.2);
z-index:999;
display:none;
height:100vh;
width:100vw;
top:0;
left:0;
 }
 .modal-box{
position:absolute;
top:30%;
left:10%;
height:30%;
width:80%;
background:#fff;
border-radius:8px;
box-shadow:0 0 8px #0000ff22;
overflow:hidden;
 }
 .modal-header{
width:100%;
height:2vh;
background:#449944;
color:#fff;
text-align:center;
line-height:2vh;
 }
 .modal-headerl{
width:100%;
height:8vh;
background:#449944;
color:#fff;
text-align:center;
line-height:4vh;
 }
 .modal-contentl{
width:100%;
height:calc(98% - 10px);
padding:10px;
box-sizing:border-box;

 }
.dockIcon:hover{
background-color:#ffffff33;

}
 .modekey{
     width:22%;
     height:auto;
     margin-left:2%;
     margin-top:5px;
 }
 
 
/* #lyappwindow button{
 height:6vh;
        border-radius:2vh;
        border:none;
        background-color:#dddddd;
 font-weight: bold;
 
 
 }
 */
 
 
 </style>
<!-- 顶部状态栏 -->
<div style="height:2vh;width:100vw;position:absolute;top:0;right:0;background:#111121;padding:8px;transition:all 0.3s ease;color:white">
<div style="position:absolute;top:8px;right:8px;transition:all 0.3s ease;fint-size:1vh;padding:0.5vh;" id="time" onclick="options()">00:00</div>
<!-- <div style="position:absolute;top:8px;transition:all 0.3s ease;background-color: #bae1ff;" id="act" onclick="document.getElementById('maskAllList').style.display='block';getItem(1, res => {
document.getElementById('alst').innerHTML= res;
});">Applications</div> -->
<div style="position:absolute;top:8px;transition:all 0.3s ease"  ></div>
</div>

<!-- 左侧应用栏 -->
<div style="height:98vh;width:15vw;overflow:auto;transition:all 0.3s ease;background-color:#111121;position:absolute;top:2vh;" id="applist">
    <div style="position:fixed;bottom:6vh;left:1vw;width:4vw;height:4vw" onclick="openAndRun('/usr/bin/applicationsList/main.zap')">    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" onclick="openAndRun('/usr/bin/applicationsList/main.zap')" viewBox="0 0 767.40668 738.31421" style="height:13vw;width:13vw;" ><defs><style>.cls-1{fill:#bae1ff;}</style></defs><circle class="cls-1" cx="109.02696" cy="348.09412" r="109.02696"/><circle class="cls-1" cx="563.08369" cy="109.02698" r="109.02698"/><path class="cls-1" d="M492.48194,1336.66577a265.52505,265.52505,0,0,1-181.0712-138.09814,156.94784,156.94784,0,0,1-93.21911,11.45825,354.93524,354.93524,0,0,0,255.53723,214.16455,359.20777,359.20777,0,0,0,77.41949,7.967,156.00313,156.00313,0,0,1-31.92236-91.15466C510.24622,1340.00525,501.27735,1338.548,492.48194,1336.66577Z" transform="translate(-137.56155 -707.97998)"/><circle class="cls-1" cx="538.52046" cy="629.28723" r="109.02698"/><path class="cls-1" d="M827.798,1297.22095A356.70056,356.70056,0,0,0,845.67283,878.702a157.14441,157.14441,0,0,1-61.30975,71.8031,267.293,267.293,0,0,1-8.73688,265.4884A156.34677,156.34677,0,0,1,827.798,1297.22095Z" transform="translate(-137.56155 -707.97998)"/><path class="cls-1" d="M238.17644,899.71906q4.1505-.22779,8.30533-.22553A157.34626,157.34626,0,0,1,329.16416,923.039,265.90653,265.90653,0,0,1,543.27238,808.52966a158.0877,158.0877,0,0,1,33.076-88.42022C439.24549,709.25177,306.02421,780.001,238.17644,899.71906Z" transform="translate(-137.56155 -707.97998)"/></svg></div>
</div>





<div id="lyappwindow" style="position:absolute;left:15vw;top: calc(2vh + 16px);width:85vw;height:calc(98vh - 16px);display:none;">
<div style="width:100%;height:6%;background:#ffffff;color:black;padding:0px;box-sizing:border-box;border-radius:5px 5px 0 0;">
    <center id="windowTitle">Untitled</center>
  </div>
  <button type="button" onclick="quitApp();document.getElementById('applist').style.display='block';" style="right:0;height: 3vh;" class="windowControl"><b>╳</b></button>
  <button type="button" onclick="hideDock()" style="left:0;height: 3vh;" class="windowControl"><b><</b></button>
  </div>
<div id="opt" style="width:50vw;background:white;position:absolute;top:5vh;right:5vw;display:none;border-radius:5px;z-index:900;"><img src="img/hide.png" class="modekey" onclick="hide()"><!--
<button style="border:none;width:100%;transition:all 0.3s ease" onclick="window.open('index.html')">Log Out</button>--><img src="img/lock.png" class="modekey" onclick="lc();hide();">
<img src="img/settings.png" class="modekey" onclick="opn('settings','Settings');hide();"><img src="img/landscape.png" class="modekey" onclick="window.open('landscape.html');hide();">
<p>Brightness<input type="range" name="name" id="y" style="width:80%"></p>
<p>Voice<input type="range" name="name" id="y2" style="width:80%" min="0" max="100"></p>
</div>
</div>
<!-- 应用窗口 -->
<div class="window" id="wd" style="display:none;background-color:#bae1ff99"><div style="width:100%;height:6%;background:#449944;color:white;padding:0px;box-sizing:border-box;border-radius:5px 5px 0 0;font-size:4vh;">
    <center id="windowTitle"></center>
  </div>
<iframe src="" style="height:94%;width:100%;border-radius:0 0 5px 5px;border:none;position: absolute;left:0;top:6%;" id="wds" ></iframe>
<button type="button" onmouseup="mv()" style="right:6vh"><b>M</b></button>
<button type="button" onmouseup="mv()" style="left:0"><b>M</b></button>
<button type="button" onclick="closeWindow()" style="right:0"><b>╳</b></button>
<button type="button" onclick="fullWindow()" style="left:3vh"><b>□</b></button>
<button type="button" onclick="unfullWindow()" style="right:3vh"><b>▅</b></button>
</div>

<!-- 右上角下拉菜单 --><!--
<div style="width:50vw;background:white;position:absolute;top:5vh;right:5vw;display:none;border-radius:5px;z-index:900;">
<img src="img/hide.png" class="modekey" onclick="hide()">
<button style="border:none;width:100%;transition:all 0.3s ease" onclick="window.open('index.html')">Log Out</button><img src="http://song.zreamer.top/zubuntu/img/lock.png" class="modekey" onclick="openAndRun('/usr/bin/lockscreen/main.zap')">
<img src="img/settings.png" class="modekey" onclick="openAndRun('/usr/bin/settings.zap');hide();"><img src="img/landscape.png" class="modekey" onclick="hide();">
<p>Brightness<input type="range" name="name" id="y" style="width:80%"></p>
<p>Voice<input type="range" name="name" id="y2" style="width:80%" min="0" max="100"></p>
</div>-->
</div> <!-- 桌面screen闭合 -->

<!-- 全局弹窗 -->
<!-- 设置背景弹窗 -->

<!-- 删除应用确认弹窗 -->

<!-- 【新增】Lanyue应用删除确认弹窗 匹配JS函数 -->
<div class="modal-mask" id="maskRemoveAppLanyue">
<div class="modal-box" id="raaLanyue" style="height:30%;top:35%">
<div class="modal-header">Remove Lanyue Application</div>
<div class="modal-content">
Are you sure you want to remove this Lanyue application?<br>
This will delete both the desktop icon and the application package data.
<br>
<button style="width: 48%;" onclick="removeAppYesLanyue()">Yes</button>
<button style="width: 48%;" onclick="document.getElementById('maskRemoveAppLanyue').style.display='none';">Cancel</button>
</div>
<button type="button" class="sc" onclick="document.getElementById('maskRemoveAppLanyue').style.display='none';" style="right:0"><b>╳</b></button>
</div>
</div>

<!-- 锁屏界面 -->
<div class="screen" style="z-index:4999;background-color:#bae1ff;display:none;text-align:center;justify-content:center;align-items:center;font-size:8vh;transition:all 0.3s ease" id="lockscreen" onclick="ulc()">
<div style="display:block">
<p id="tme">00:00</p>
<br>
<p style="font-size:1rem;">Press anywhere or any key to unlock</p>
</div>
</div>

<!-- 全局半透明遮罩 -->
<div style="height:100vh;width:100vw;z-index:5000;pointer-events:none;background-color:rgba(255,255,180,0.1);position:absolute;top:0;left:0;transition:all 0.3s ease"></div>
<!-- 全局Alert弹窗 -->
<div style="position:fixed;inset:0;height:100vh;width:100vw;z-index:15000;display:none;box-sizing:border-box;
display:flex;justify-content:center;align-items:center;background:rgba(0,0,0,0.2);" id="allt">
<div style="width:80%;max-width:450px;background:white;box-shadow:3px 3px 8px #00000044;border-radius:8px;
position:relative;box-sizing:border-box;padding:16px;min-height:120px;">
<p style="width:100%;box-sizing:border-box;margin:0 0 20px 0;word-break:break-all;" id="alltctt">Content...</p>
<button style="width:100%;color:black;background:#eeeeee;padding:10px;border-radius:5px;border:none;box-sizing:border-box;" onclick="clsalt()" id="alltcttbtn"><center>OK</center></button>
</div>

</div><audio id="speaker" type="audio/oga"></audio>

<script>window.openAndRun = function(path){
    dbGet(path,res=>{
        if(res===null){
            showAlert("File does not exist: "+path);
            return;
        }document.getElementById('lyappwindow').style.backgroundColor='none';
        decodeAndRun(res);
    });
};
document.getElementById('time').addEventListener('click',(e)=>{options();});// 页面加载执行

if (navigator.virtualKeyboard) {
    navigator.virtualKeyboard.overlaysContent = true;
}
// 全局变量提前声明
let m = 0;
let x = 0;
let dragStatus = 0;
let ir;
let ctt;
let removingAppName;
let removingAppURI;
let removingAppIco;
let removingAppPath;











document.getElementById('allt').style.display = 'none';

const defaltApp=`<div onclick="openAndRun('/usr/bin/applicationsList/main.zap')" style="position:fixed;bottom:6vh;left:1vw;width:4vw;height:4vw">    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 767.40668 738.31421" style="height:13vw;width:13vw;" ><defs><style>.cls-1{fill:#bae1ff;}</style></defs><circle class="cls-1" cx="109.02696" cy="348.09412" r="109.02696"/><circle class="cls-1" cx="563.08369" cy="109.02698" r="109.02698"/><path class="cls-1" d="M492.48194,1336.66577a265.52505,265.52505,0,0,1-181.0712-138.09814,156.94784,156.94784,0,0,1-93.21911,11.45825,354.93524,354.93524,0,0,0,255.53723,214.16455,359.20777,359.20777,0,0,0,77.41949,7.967,156.00313,156.00313,0,0,1-31.92236-91.15466C510.24622,1340.00525,501.27735,1338.548,492.48194,1336.66577Z" transform="translate(-137.56155 -707.97998)"/><circle class="cls-1" cx="538.52046" cy="629.28723" r="109.02698"/><path class="cls-1" d="M827.798,1297.22095A356.70056,356.70056,0,0,0,845.67283,878.702a157.14441,157.14441,0,0,1-61.30975,71.8031,267.293,267.293,0,0,1-8.73688,265.4884A156.34677,156.34677,0,0,1,827.798,1297.22095Z" transform="translate(-137.56155 -707.97998)"/><path class="cls-1" d="M238.17644,899.71906q4.1505-.22779,8.30533-.22553A157.34626,157.34626,0,0,1,329.16416,923.039,265.90653,265.90653,0,0,1,543.27238,808.52966a158.0877,158.0877,0,0,1,33.076-88.42022C439.24549,709.25177,306.02421,780.001,238.17644,899.71906Z" transform="translate(-137.56155 -707.97998)"/></svg></div>`
const lyappWindow=document.getElementById('lyappwindow');
// 默认应用模板（和删除模板严格保持格式一致）
window.clsalt=function clsalt(){document.getElementById('allt').style.display='none';}
// 读取壁纸
        dbGet('/usr/zdesktop/preference/desktop_background_image.var', res => {
    if (!(res == '')) {document.getElementById('desktop').style.backgroundImage = res;
        document.getElementById('desktop').style.backgroundRepeat = 'no-repeat';
        document.getElementById('desktop').style.backgroundSize = 'cover';document.getElementById('desktop').style.backgroundPosition = 'center center';
    }
});
dbGet('/etc/zdesktop/preference/desktop_dock_icon.dat',res=>{document.getElementById('applist').innerHTML=res;});

// 开启拖拽标记
function mv() {
    setTimeout(() => { m = 1; }, 100);
}
document.addEventListener('click', function (e) {
    if (m == 1) {
        wd.style.top = e.clientY + 'px';
        wd.style.left = e.clientX + 'px';
        m = 0;
    }
});

// 时间更新定时器
setInterval(() => {
    const now = new Date();
    ir = now.getMinutes();
    if (ir < 10) {
        document.getElementById('time').innerHTML = `${now.getHours()}:0${now.getMinutes()}`;
        document.getElementById('tme').innerHTML = `${now.getHours()}:0${now.getMinutes()}`;
    } else {
        document.getElementById('time').innerHTML = `${now.getHours()}:${now.getMinutes()}`;
        document.getElementById('tme').innerHTML = `${now.getHours()}:${now.getMinutes()}`;
    }
}, 1000);

// 设置面板开关
window.options=function options() {
    document.getElementById('opt').style.display = 'block';
};

   window.hide=function hide() {
    document.getElementById('opt').style.display = 'none';};
// 锁屏解锁

// 全局弹窗提示
window.showAlert=function showAlert(a,b,c) {
    document.getElementById('allt').style.display = 'flex';
    dbGet(`/usr/share/sounds/dialog-${c}.oga.base64`,(res)=>{document.getElementById('speaker').src=res;document.getElementById('speaker').play();});
    document.getElementById('alltctt').innerHTML = a;document.getElementById('alltcttbtn').innerHTML = b;console.log(`/usr/share/sounds/dialog-${c}.oga.base64`);
}
function clsalt() {
    document.getElementById('allt').style.display = 'none';
}

// ===== IndexedDB 存储 =====
function dbSet(id, val) {
    const request = indexedDB.open("Zhubuntu", 1);
    request.onupgradeneeded = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            db.createObjectStore("main", { keyPath: "id" });
        }
    };
    request.onsuccess = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) return;
        const tx = db.transaction("main", "readwrite");
        const store = tx.objectStore("main");
        store.put({ id, data: val });
    };
    request.onerror = (err) => console.error("dbSet 数据库打开失败", err);
}

function dbGet(id, cb) {
    const request = indexedDB.open("Zhubuntu", 1);
    request.onupgradeneeded = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            db.createObjectStore("main", { keyPath: "id" });
        }
    };
    request.onsuccess = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            cb(null);
            return;
        }
        const tx = db.transaction("main");
        const store = tx.objectStore("main");
        const query = store.get(id);
        query.onsuccess = () => cb(query.result?.data ?? null);
    };
    request.onerror = (err) => console.error("dbGet 数据库打开失败", err);
}

// ===== localStorage 存储 =====

// 添加自定义应用
// 初始化渲染应用列表
dbGet('/etc/zdesktop/preference/desktop_dock_icon.dat', res => {
    document.getElementById('applist').innerHTML = defaltApp + res;
});

// 普通应用右键删除
function removeSelection(event, uri, name, ico) {
    event.preventDefault();
    removingAppURI = uri;
    removingAppName = name;
    removingAppIco = ico;
    document.getElementById('maskRemoveApp').style.display = 'block';
}
// 普通应用确认删除
// 普通应用确认删除【重写修复版】
function removeAppYes() {
    // 构建不带换行的匹配文本，去除所有换行、空格干扰
    const searchHtml = `
<div style="width:90%;aspect-ratio: 1 / 1;background:rgba(255,255,255,0.1);border-radius:50%;transition:all 0.3s ease;" oncontextmenu="removeSelection(event,&quot;${removingAppURI}&quot;,&quot;${removingAppName}&quot;,&quot;${removingAppIco}&quot;)">
<img src="${removingAppIco}" style="width:100%;height:100%;object-fit:contain;transition:all 0.3s ease;border-radius:50%;" alt="${removingAppName}" onclick="${removingAppURI}">
</div>`.replace(/[\r\n\s]+/g," ");

    dbGet('/etc/zdesktop/preference/desktop_dock_icon.dat', acti => {
        // 将储存的html同样压缩换行空格
        let raw = acti.replace(/[\r\n]+/g," ");
        // 使用正则全局替换，清空全部匹配
        const reg = new RegExp(searchHtml.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'),"g");
        const newHtml = raw.replace(reg,"");

        dbSet('/etc/zdesktop/preference/desktop_icon.dat', newHtml);
        document.getElementById('applist').innerHTML = defaltApp + newHtml;
    });
    document.getElementById('maskRemoveApp').style.display = 'none';
}

// 全局右键拦截
document.addEventListener('contextmenu', function(e) {
    if(e.target.closest('[oncontextmenu]')) return;
    e.preventDefault();
}, false);

// ========== Lanyue应用安装 ==========
// ========== Lanyue应用打开 ==========

// ========== Lanyue应用右键选中删除 ==========
function removeLanyueSelection(event, path, name, ico){
    event.preventDefault();
    removingAppPath = path;
    removingAppName = name; // 修复：不再重复加.zap后缀，传入的name本身就带.zap
    removingAppIco = ico;
    document.getElementById('maskRemoveAppLanyue').style.display = 'block';
}

// ========== Lanyue应用确认删除（核心修复） ==========
function removeAppYesLanyue() {
    const searchHtml = `
<div style="width:90%;aspect-ratio: 1 / 1;background:rgba(255,255,255,0.1);border-radius:50%;transition:all 0.3s ease;" oncontextmenu="removeLanyueSelection(event,&quot;${removingAppPath}&quot;,&quot;${removingAppName}&quot;,&quot;${removingAppIco}&quot;)">
<img src="${removingAppIco}" style="width:100%;height:100%;object-fit:contain;transition:all 0.3s ease;border-radius:50%;" alt="${removingAppName.replace('.zap','')}" onclick="lanyueOpen(&quot;${removingAppName}&quot;)">
</div>`.replace(/[\r\n\s]+/g," ");

    dbGet('/usr/zdesktop/preference/desktop_icon.dat', acti => {
        let raw = acti.replace(/[\r\n]+/g," ");
        const reg = new RegExp(searchHtml.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'),"g");
        const newHtml = raw.replace(reg,"");

        dbSet('/etc/zdesktop/preference/desktop_icon.dat', newHtml);
localStorage.removeItem(removingAppPath);
        document.getElementById('applist').innerHTML = defaltApp + newHtml;
    });
    document.getElementById('maskRemoveAppLanyue').style.display = 'none';
}

window.runInWindow=function runInWindow(a,b){
    document.getElementById('lyappwindow').style.display='block';
    document.getElementById('lyappwindow').innerHTML = `
    <div style="width:100%;height:4%;background:#ffffff;color:black;padding:0px;box-sizing:border-box;border-radius:5px 5px 0 0;font-size:2vh;padding:1vh;">
        <center id="windowTitle">${b}</center>
    </div>
    <button type="button" onclick="quitApp()" style="right:0" class="windowControl"><b>╳</b></button>
    <button type="button" onclick="hideDock()" style="left:0" class="windowControl"><b><</b></button>
    `+a;
}
let d=0
window.hideDock=function hideDock(){

if(d==0){
document.getElementById('applist').style.display='none';
document.getElementById('lyappwindow').style.width='100vw';
d=1;
document.getElementById('lyappwindow').style.left='0';
} else{document.getElementById('applist').style.display='block';
document.getElementById('lyappwindow').style.width='85vw';
d=0;
document.getElementById('lyappwindow').style.left='15vw';
}}
openAndRun('/usr/bin/lockscreen/main.zap');
</script>