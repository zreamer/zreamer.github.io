const content = `<style>
section{width:100%;margin-bottom:5px;}
section:hover{background-color:#ffffff33}
</style><div id="allApplicationsList"></div>`;

dbGet(`/etc/applicationsList/apps.json`, raw => {
  const listEl = document.getElementById('allApplicationsList');
  try {
    const apps = JSON.parse(raw);
    let html = '';
    for (const name in apps) {
      const path = apps[name];
      // 注意：对路径做简单引号转义，防止路径里有 " 破坏 HTML
      const safePath = path.replace(/"/g, '&quot;');
      html += `<section onclick="openAndRun('${safePath}')">${name}</section>`;
    }
    listEl.innerHTML = html;
  } catch (e) {
    listEl.innerHTML = `<section style="color:#f88">应用列表解析失败：${e.message}</section>`;
    console.error('apps.json 解析错误', e);
  }
});

runInWindow(content, 'All Application');

window.quitApp = function quitApp() {
  document.getElementById('lyappwindow').style.display = 'none';
  document.getElementById('lyappwindow').style.background = 'none';
  document.getElementById('applist').style.display = 'block';
  document.getElementById('lyappwindow').style.width = '85vw';
  let d = 0;
  document.getElementById('lyappwindow').style.left = '15vw';
  document.getElementById('lyappwindow').style.backgroundColor = 'transparent';
};

window.openAppFromAppList = function openAppFromAppList() {
 document.getElementById('lyappwindow').style.background = 'none';
};