const content=`<style>@font-face{
    font-family: u1;
	src:url('https://fonts.gstatic.com/s/ubuntu/v21/4iCs6KVjbNBYlgoKfw72nU6AFw.woff2') format('woff2');
    font-display: swap;	}
    </style>
    
  <img src="https://ts2.tc.mm.bing.net/th/id/ODF.6-x087BF48lyNxTufuVeUQ?w=32&h=32&qlt=91&pcl=292827&o=6&pid=1.2" style="height:0vw;width:0vw;position:absolute;top:0;left:0;margin:10px" alt="图片描述">
  <div style="display:flex;margin:5px;height:2%"<button type="button" style="
border:none;padding:0;
border-radius:5px;;margin:2px;
width:4%;
height:100%;" onclick="refresh()">↻</button><input type="text" name="name" placeholder="Please type your address" style="
border: none;
border-radius:5px;
width:90%;margin:2px;
height:100%;" id="ipt"><button type="button" style="
border: none;
border-radius:5px;margin:2px;
width:4vw;padding:0;
height:100%;" onclick="enter()">E</button></div>
<div style="color: #222222;position:absolute;left:1vw;top:13vw;" onclick="handleClick()">

</div>
<iframe src="http://www.chinaso.com/" title="内嵌页面" width="100%" height="98%" style="border-radius:5px;border:none;position:relative;top:2%;" id="ifr"></iframe>`;
function enter() {
	const ifr=document.getElementById('ifr');	
	ifr.src=document.getElementById('ipt').value;
}function handleClick() {
	const ifr=document.getElementById('ifr');	
	ifr.src='https://www.zreamer.top';
}function refresh(parameters) {
	const ifr=document.getElementById('ifr');
	let i = ifr.src;
	ifr.src='about:blank';
	ifr.src=i;
}function enter() {const ifr=document.getElementById('ifr');	
	ifr.src=document.getElementById('ipt').value;
}function handleClick() {
	const ifr=document.getElementById('ifr');	
	ifr.src='https://www.zreamer.top';
}function refresh(parameters) {
	const ifr=document.getElementById('ifr');
	let i = ifr.src;
	ifr.src='about:blank';
	ifr.src=i;
}runInWindow(content, 'Webpage Browser');
window.quitApp = function quitApp() {
  const content = '';
  document.getElementById('lyappwindow').style.display = 'none';
  document.getElementById('applist').style.display = 'block';
  document.getElementById('lyappwindow').style.width = '85vw';
  d = 0;
  document.getElementById('lyappwindow').style.left = '15vw';
};