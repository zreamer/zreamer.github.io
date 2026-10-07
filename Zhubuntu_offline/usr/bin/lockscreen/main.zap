let authenicatationStatus=0;
const content=`
<div style="z-index:4999;width:100vw;height:100vh;background-color:#bae1ff;display:block;text-align:center;justify-content:center;align-items:center;font-size:8vh;transition:all 0.3s ease" id="lockscreen" onclick="unlockScreen()">
<div style="display:block" id="lockscreenTimePage">
<p id="lockscreenTime">00:00</p>
<br>
<p style="font-size:1rem;">Press anywhere or any key to unlock</p>
</div>
<div style="display:none"  id='loginPassword'>
<input id="passwordInputArea"></input><button style="background:none;border:none" onclick="authenicatePassword()">></button>

</div>
</div>
`;
window.unlockScreen=function unlockScreen(){
if (authenicatationStatus==0){
document.getElementById('lockscreenTimePage').style.display='none';document.getElementById('loginPassword').style.display='block';
}
}
window.authenicatePassword=function authenicatePassword(){
dbGet('/etc/shadow/',res=>{if(document.getElementById('passwordInputArea').value==res){document.body.innerHTML=document.body.innerHTML.replace(content,'');}});

}
document.body.innerHTML=document.body.innerHTML+content;