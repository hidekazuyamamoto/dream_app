function display(){
  const menuicon = document.getElementById("menuicon")
  const menuber =document.getElementById("menuber")
  menuicon.addEventListener("click",()=>{
    if(menuber.getAttribute("style") == "display: block"){
        menuber.removeAttribute("style" ,"display: block;")
    }else{
        menuber.setAttribute("style", "display: block")
    }
  })
}
window.addEventListener("load", display)