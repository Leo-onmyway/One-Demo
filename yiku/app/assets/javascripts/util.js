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
  
var urlArray = [-1,-1,-1,-1];
  
function loadPic(hatId) 
  { 
  	urlArray[0] = hatId; 
  	document.getElementById("suitFrame").src = 
  	            "/yiku/suit/compose&" +  
  	            urlArray[0] + "," + 
  	            urlArray[1] + "," +
  	            urlArray[2] + "," + 
  	            urlArray[3]
  }  

function loadPic2(topId) 
  { 
  	urlArray[1] = topId;
  	document.getElementById("suitFrame").src = 
  	            "/yiku/suit/compose&" +  
  	            urlArray[0] + "," + 
  	            urlArray[1] + "," +
  	            urlArray[2] + "," + 
  	            urlArray[3]
  } 

function loadPic3(bottomId) 
  { 
  	urlArray[2] = bottomId; 
  	document.getElementById("suitFrame").src = 
  	            "/yiku/suit/compose&" +  
  	            urlArray[0] + "," + 
  	            urlArray[1] + "," +
  	            urlArray[2] + "," + 
  	            urlArray[3]
  }  

function loadPic4(shoesId) 
  { 
    urlArray[3] = shoesId;
    document.getElementById("suitFrame").src = 
  	            "/yiku/suit/compose&" +  
  	            urlArray[0] + "," + 
  	            urlArray[1] + "," +
  	            urlArray[2] + "," + 
  	            urlArray[3]
  }
  

