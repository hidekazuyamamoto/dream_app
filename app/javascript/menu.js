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
    if(menuber.getAttribute("style") == "display: block"){
        menuber.removeAttribute("style" ,"display: block;")
    }else{
        fadeLayer.setAttribute("style", "display: block")
        fadeLayer.style.height = document.body.scrollHeight+"px"
        menuber.setAttribute("style", "display: block")
    }
  })
}
window.addEventListener("load", display)