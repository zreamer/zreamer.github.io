//全局存储上传读取到的zap文件内容
let uploadZapText = null;

const content=`
<div style="text-align:center;justify-content:center;align-items: center;">
<h1>Execute from Android local files</h1> 
<input type="file" id="AndroidZapFileSelect" placeholder="Please choose a .zap file among your mobilephone files">
<div style="text-align:center;justify-content:center;align-items: center;">
<h1>Execute from Zhubuntu files</h1> 
<input id="ZhubuntuZapFileSelect" placeholder="Please input a .zap file path among your Zhubuntu files"><br>
<button style="padding:10px;
        border-radius:2vh;
        border:none;
        background-color:#447799;
        color:white;font-weight: bold;" onclick="installerStartInstall()">Install</button>

</div>
</div>
`;

runInWindow(content,'Executer');

// 延迟等待DOM渲染完毕再绑定事件，解决找不到元素null报错
setTimeout(()=>{
    const zapfileinput=document.getElementById('AndroidZapFileSelect');
    zapfileinput.onchange = async e=>{
        const file = e.target.files[0];
        if(!file) return;
        uploadZapText = await file.text();
    }
},50);


window.quitApp=function quitApp(){
    document.getElementById('applist').style.display='block';
    document.getElementById('lyappwindow').style.width='85vw';
    d=0;
    document.getElementById('lyappwindow').style.left='15vw';
    document.getElementById('lyappwindow').style.display='none';
}


window.installerStartInstall=function installerStartInstall(){
    const pathInputVal = document.getElementById('ZhubuntuZapFileSelect').value.trim();

    // 优先判断二选一，不能同时为空
    if(!uploadZapText && !pathInputVal){
        showAlert('Please select a .zap file from your Mobile phone files or type a path of a .zap file from Zhubuntu files.');
        return;
    }

    if(pathInputVal){
        // 使用数据库路径加载
        dbGet(pathInputVal,res=>{
            installProcess(res);
        });
    }else{
        // 使用上传文件
        installProcess(uploadZapText);
    }
}

window.installProcess=function installProcess(a){
    const infoLine = a.split('\n').map(line=>line.replace(/\r$/,''));
    //安全判断，行数不足2行拦截
    if(infoLine.length<2){
        showAlert("Wrong zap format! Cannot read application name");
        return;
    }
    const appName=infoLine[1].replace(/<!--|-->/g,'').trim();
    dbSet(`/tmp/zapexe/executing.zap`,a);
    openAndRun(`/tmp/zapexe/executing.zap`);
}
