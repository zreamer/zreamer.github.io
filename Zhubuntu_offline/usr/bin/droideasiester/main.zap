const content=`<div style="margin:5px;"><details><summary>Add Applications</summary>
<div class="modal-content">
	<h3>Add Android Applications</h3>
<input placeholder="Type your application name..." id="userAppName"/>
<br>
<input placeholder="Type your application URI..." id="userAppURI" />
<button onclick="sbmta()" style="background-color:#447799;border-radius:5px;border:none;color:white">Submit</button>
</div></details>
<h3>Android Applications List</h3><iframe height="1" weight="1" id="droidopener"></iframe>
<div id="droidapplist">

</div></div>`;

// 渲染列表抽成公用函数
window.renderDroidAppList=function renderDroidAppList(){
    dbGet(`/etc/droideasiester/link.json`, raw => {
        let apps;
        try{
            apps = JSON.parse(raw || "{}");
        }catch(e){
            apps = {};
        }
        let html = '';
        for (const name in apps) {
            const path = apps[name];
            const safePath = path.replace(/"/g, '&quot;');
            const safeName = name.replace(/"/g, '&quot;');
            // data‑appname存储应用名，onclick点击打开，onlongpress长按删除
            html += `<section 
                        data-appname="${safeName}"
                        onclick="openDroidApp('${safePath}')"
                        onlongpress="deleteDroidApp('${safeName}')"
                     >${safeName}</section>`;
        }
        document.getElementById('droidapplist').innerHTML = html;
    });
};

// 点击打开链接
window.openDroidApp = function(url){
    document.getElementById('droidopener').src=url;
};

// 长按删除应用
window.deleteDroidApp = function(appName){
    if(!confirm(`Delete app：${appName} ?`)) return;
    dbGet('/etc/droideasiester/link.json', res=>{
        let obj;
        try{
            obj = JSON.parse(res||'{}');
        }catch(e){
            obj={};
        }
        delete obj[appName];
        const newJson = JSON.stringify(obj);
        dbSet('/etc/droideasiester/link.json', newJson);
        showAlert("Deleted",'OK','complete');
        renderDroidAppList();
    })
};

// 提交新增应用
window.sbmta=function sbmta() {
    const name = document.getElementById('userAppName').value.trim();
    const url = document.getElementById('userAppURI').value.trim();
    if(!name || !url){
        showAlert("Name and URI cannot empty",'OK','warning');
        return;
    }

    dbGet('/etc/droideasiester/link.json', res => {
        let obj;
        try {
            obj = JSON.parse(res || '{}');
        } catch (e) {
            obj = {};
        }
        obj[name] = url;

        const newJson = JSON.stringify(obj);
        dbSet('/etc/droideasiester/link.json',newJson);

        showAlert('App link saved','OK','complete');
        renderDroidAppList();

        document.getElementById('userAppName').value = "";
        document.getElementById('userAppURI').value = "";
    });
};

window.quitApp = function quitApp() {
    const winEl = document.getElementById('lyappwindow');
    const appListEl = document.getElementById('applist');
    if (!winEl || !appListEl) return;

    winEl.style.display = 'none';
    appListEl.style.display = 'block';
    winEl.style.width = '85vw';
    winEl.style.left = '15vw';
    filePath = '';
};

// 适配移动端长按：部分浏览器不原生支持 onlongpress，补充touch模拟长按
(function(){
    let longPressTimer = null;
    document.addEventListener('touchstart',(e)=>{
        const sec = e.target.closest('section[data-appname]');
        if(!sec) return;
        const appName = sec.dataset.appname;
        longPressTimer = setTimeout(()=>{
            deleteDroidApp(appName);
        }, 600); //长按600ms触发删除
    })
    document.addEventListener('touchend',()=>{
        clearTimeout(longPressTimer);
    })
    document.addEventListener('touchmove',()=>{
        clearTimeout(longPressTimer);
    })
})();

// 打开窗口
runInWindow(content,`>(:|  Droid Easiester`);
// 初始化渲染
renderDroidAppList();