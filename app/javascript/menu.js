function display(){
  const menuicon = document.getElementById("menuicon")
  const menuber =document.getElementById("menuber")
  const fadeLayer = document.getElementById("fadeLayer")
  const body_height = document.body.scrollHeight 
  menuicon.addEventListener("mouseover", ()=>{
    menuicon.setAttribute("style", "border: 3px solid black;")
  })
  menuicon.addEventListener("mouseout",()=>{
    menuicon.removeAttribute("style", "border: 3px solid black;")
  })
  menuicon.addEventListener("click",()=>{
        fadeLayer.setAttribute("style", "display: block")
        fadeLayer.style.height = body_height+"px"
        menuber.setAttribute("style", "display: block")
  })
  fadeLayer.addEventListener("click",()=>{
    menuber.removeAttribute("style" ,"display: block;")
    fadeLayer.removeAttribute("style", "display: block")
  })
}
window.addEventListener("load", display)