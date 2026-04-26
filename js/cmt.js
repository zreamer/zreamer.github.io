document.body.insertAdjacentHTML('afterbegin', `
<iframe id="ad" src="https://motorsnag.com/n4ts0082?key=561876b2e8a15a930a9382590c990368" title="内嵌页面" width="100" height="61.8"></iframe>
		<a href="javascript:void(0)" onclick="badInfomationReport()">广告含有不良信息?点击这里反馈...</a>

<button id="openComment" style="margin:10px;z-index:9999;position:fixed;bottom:450px;right:0;background:#555577;color:white;font-size:24px;padding:15px;border:none;border-radius:8px;height:auto;width:auto;">评论区<br>Comment area</button>

<dialog id="cmtDialog" style="border-radius:12px; border:none; box-shadow:0 0 20px rgba(0,0,0,0.3); padding:24px; width:90%; max-width:400px;">
  <h1>请输入评论</h1>
  <h2>Please input your comment</h2>
  <p>匿名评论，如果希望得到回复请留下联系方式</p>
  <textarea id="cmtText" style="width:100%; height:120px; margin:10px 0; padding:8px; font-size:16px;"></textarea>
  <br>
  <button id="cmtSubmit" style="padding:10px 16px; margin-right:10px;">提交并关闭<br>Submit and close</button>
  <button id="cmtClose" style="padding:10px 16px;">关闭 Close</button>
</dialog>
`);

// 功能逻辑
const openBtn = document.getElementById('openComment');
const dialog = document.getElementById('cmtDialog');
const submit = document.getElementById('cmtSubmit');
const closeBtn = document.getElementById('cmtClose');
const text = document.getElementById('cmtText');

openBtn.onclick = () => dialog.showModal();
closeBtn.onclick = () => dialog.close();

submit.onclick = () => {
  const msg = text.value.trim();
  if (!msg) {
    alert('评论内容为空 Comment is empty');
    return;
  }
  window.location.href='http://www.zreamer.top/js/cmt.html?content='+msg;
  dialog.close();
};
