function   openwin(url)   
  {   
      str="Are you sure?"   
      if   (confirm(str))   
      {   
          window.location.href=url   
      }   
      else   
      {   
          window.location.href="#"   
        }   
  } 
  
  
function loadPic(imgUrl) 
  { document.getElementById("photo").src = imgUrl }  

function loadPic2(imgUrl) 
  { document.getElementById("photo2").src = imgUrl } 

function loadPic3(imgUrl) 
  { document.getElementById("photo3").src = imgUrl }  

function loadPic4(imgUrl) 
  { document.getElementById("photo4").src = imgUrl }
  
function fnOpenModal(pageUrl){   
  window.open(pageUrl, "", "height=100, width=400, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no")   
}

function abc(pageUrl){
  window.showModelessDialog(pageUrl)	
}
