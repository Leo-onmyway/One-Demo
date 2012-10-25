function laodPic(imgUrl) 
{ document.getElementById("photo").src = imgUrl } 


	function show()
{
div1.style.display="inline";//设置层1显示
div1.style.width=body.clientWidth;//设置层1宽度等于body宽度，width=100%也可以，不过有一些误差，所以最好用这个
div1.style.height=body.clientHeight;//设置层1高度满屏
div2.style.display="inline";//设置层2的显示
div2.style.top=body.clientHeight/2-div2.clientHeight/2;//设置层2的距顶位置居中算法
div2.style.left=body.clientWidth/2-div2.clientWidth/2;//设置层2的距左位置居中算法
}
//关闭显示
function closeShow()
{
div1.style.display="none";
div2.style.display="none";
}