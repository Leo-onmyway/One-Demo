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
  
  
function laodPic(imgUrl) 
  { document.getElementById("photo").src = imgUrl }   