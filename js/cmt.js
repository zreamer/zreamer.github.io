document.body.insertAdjacentHTML('beforeend', `
<button id="openCommentBtn" style="
margin:10px;
z-index:9999;
position:fixed;
bottom:150px;
right:0;
background:#555577;
color:white;
font-size:20px;
padding:12px 20px;
border:none;
border-radius:8px;
cursor:pointer;
">评论区<br>Comment area</button>

<dialog id="cmta" style="
border-radius:12px;
border:none;
box-shadow:0 0 20px rgba(0,0,0,0.3);
padding:24px;
width:90%;
max-width:380px;
">
<h1>请输入评论</h1>
<h2>Please input your comment</h2>
<p>由于此网页没有后端，评论内容依赖短信，请确保允许相关权限</p>
<textarea id="cmtt" style="width:100%;height:100px;margin:10px 0;padding:8px;"></textarea>
<br>
<button id="submitComment" style="padding:8px 16px;margin-right:8px;">提交并关闭<br>Submit and close</button>
<button onclick="document.getElementById('cmta').close()">关闭 Close</button>
</dialog>
`);

// JS 逻辑（修复兼容性、作用域、异常处理）
setTimeout(() => {
  const btn = document.getElementById('openCommentBtn');
  const dialog = document.getElementById('cmta');
  const textarea = document.getElementById('cmtt');
  const submit = document.getElementById('submitComment');

  btn.onclick = () => dialog.showModal();

  submit.onclick = () => {
    const msg = textarea.value.trim();
    if (!msg) {
      alert('评论内容为空 Comment is empty');
      return;
    }
    const smsUrl = `sms:13126855092?body=${encodeURIComponent(msg)}`;
    window.location.href = smsUrl;
    alert('已经尝试唤起系统短信。若无响应，请检查权限或在手机上打开。');
    dialog.close();
  };
}, 100);
