function display(){
  const menuicon = document.getElementById("menuicon")
  const menuber =document.getElementById("menuber")
  menuicon.addEventListener("mouseover", ()=>{
    menuicon.setAttribute("style", "border: 3px solid black;")
  })
  menuicon.addEventListener("mouseout",()=>{
    menuicon.removeAttribute("style", "border: 3px solid black;")
  })
  menuicon.addEventListener("click",()=>{
    if(menuber.getAttribute("style") == "display: block"){
        menuber.removeAttribute("style" ,"display: block;")
    }else{
        menuber.setAttribute("style", "display: block")
    }
  })
}
window.addEventListener("load", display)