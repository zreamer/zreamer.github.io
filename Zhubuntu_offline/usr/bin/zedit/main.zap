let filePath = '';
let editAreaStatus = 0; //0:未打开，输入路径；1:已打开文件，编辑模式

const content = `<meta name="description" content="Zhubuntu is a web Android desktop environment that imitated Ubuntu GNOME desktop environment's user interface">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, minimum-scale=0.25, viewport-fit=cover, interactive-widget=overlays-content">
<meta charset="UTF-8">
<meta name="screen-orientation" content="portrait">
<meta name="x5-orientation" content="portrait">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="mobile-web-app-capable" content="yes">
<button style="position:absolute;top:1vh;right:4vh;z-index:10" onclick="zeditSaveFile()">Save</button>
<button style="position:absolute;top:1vh;left:4vh;z-index:10" onclick="openAndRun('/usr/bin/fileManager/main.zap')">Open</button><br>
<div style="position:absolute;top:4%;left:0;"><input id="filePathByUserInput" placeholder="File path..."><button onclick="filePathByUserInputOpen()">Edit</button></div>
<textarea style="position:absolute;top:6%;left:0;right:0;bottom:0;width:100%;height:94%;box-sizing:border-box;padding:8px;" placeholder="File content..." id="fileEditArea"></textarea>`;

runInWindow(content, 'Zedit');

// ========= 全部逻辑放到runInWindow后面，等待DOM渲染完毕 =========
let innerFilePath = '';


window.zeditSaveFile=function zeditSaveFile() {
    
    const el = document.getElementById('fileEditArea');
    const content = el.value;
    dbSet(innerFilePath, content);
    showAlert(`Saved ${innerFilePath}`,'OK','complete');
}

// 初始化读取缓存
window.initZedit=function initZedit() { 
    const el = document.getElementById('fileEditArea');
    if(!el){
        console.warn("DOM还没准备好，重试initZedit");
        setTimeout(initZedit,100);
        return;
    }

    dbGet('/tmp/zedit/fileOpen.cache', (cachePath) => {
        if (!cachePath) {
            
            return;
        }
        console.log("缓存读取到路径：", cachePath);
        innerFilePath = cachePath;
document.getElementById('filePathByUserInput').value=cachePath;
        dbGet(innerFilePath, (res) => {
            if (res !== null && res !== undefined) {
                el.value = res;
                el.placeholder = "Edit your file here";
                
            }else{
                showAlert(`File does not exist ${innerFilePath}`,'OK','warning');
            }
            dbSet('/tmp/zedit/fileOpen.cache', null);
        });
    });
};

// 延迟启动init，等待窗口DOM渲染完成
setTimeout(initZedit, 150);

// 退出函数保留在全局
window.quitApp = function quitApp() {
    const winEl = document.getElementById('lyappwindow');
    const appListEl = document.getElementById('applist');
    const el = document.getElementById('fileEditArea');
    if (!winEl || !appListEl) return;

    winEl.style.display = 'none';
    appListEl.style.display = 'block';
    winEl.style.width = '85vw';
    let d = 0;
    winEl.style.left = '15vw';

    // 关闭窗口重置状态
    filePath = '';
    
};
window.filePathByUserInputOpen=function filePathByUserInputOpen(){
dbGet(document.getElementById('filePathByUserInput').value, (res) => {
innerFilePath=document.getElementById('filePathByUserInput').value;
el.value = res;
        });
};