const content=`<body style="background-color: #BAE1FF;transition: all 0.3s ease;">

  <h1 id="num" style="width:95%;font-size:8vh;padding:5px;line-height:0.1;transition: all 0.3s ease;">0123456789</h1>
  <style>
  button{height: 15vh;width:26%;margin: 3vw;border-radius: 10px;border: none;background: rgba(255, 255, 255,0.3);box-shadow: 0px 2px 4px rgba(0,0,0,0.1);font-size: 2rem;transition: all 0.3s ease;}
  
  
  </style>
  <button type="button" onclick="ipt('1')">1</button><button type="button" onclick="ipt('2')">2</button><button type="button" onclick="ipt('3')">3</button><button type="button" onclick="ipt('4')">4</button><button type="button" onclick="ipt('5')">5</button><button type="button" onclick="ipt('6')">6</button><button type="button" onclick="ipt('7')">7</button><button type="button" onclick="ipt('8')">8</button><button type="button" onclick="ipt('9')">9</button><button type="button" onclick="ipt('0')">0</button><button type="button" onclick="del()">Del</button><button type="button" onclick="call()">Cal</button>
</body>`;

// 1、先渲染窗口，把#num DOM生成出来
runInWindow(content,'Call');

// 2、窗口渲染完成之后，再操作DOM；增加空判断防止报错
const numEl = document.getElementById('num');
if(numEl){
    numEl.textContent = '';
}

// 挂载全局函数
window.ipt=function ipt(iptVal) {
    const el = document.getElementById('num');
    if(el) el.innerHTML += iptVal;
};

window.del=function del() {
    const el = document.getElementById('num');
    if(el) el.innerHTML='';
};

window.call=function call() {
    const el = document.getElementById('num');
    if(el && el.innerHTML.trim()!==''){
        location.href = 'tel:'+el.innerHTML;
    }
};

window.quitApp=function quitApp(){
    const win = document.getElementById('lyappwindow');
    const list = document.getElementById('applist');
    if(win){
        win.style.display='none';
        win.style.width='85vw';
        win.style.left='15vw';
    }
    if(list) list.style.display='block';
    d=0;
};window.quitApp=function quitApp(){
    const content='';
    document.getElementById('lyappwindow').style.display='none';
    document.getElementById('applist').style.display='block';
    document.getElementById('lyappwindow').style.width='85vw';
    d=0;
    document.getElementById('lyappwindow').style.left='15vw';
}