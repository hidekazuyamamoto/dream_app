function purchased(){
  const fadeLayer = document.getElementById("fadeLayer")
  const purchased_mes = document.getElementById("purchased_mes")
  const purchased_btn = document.getElementById("purchased_btn")
  const body_height = document.body.scrollHeight
  const body = document.body
  const position = body.top
  if (document.getElementById("purchased_btn")!=null){
  purchased_btn.addEventListener('click',()=>{
    scrollTo(0, position);
    fadeLayer.setAttribute("style","display:block;")
    purchased_mes.setAttribute("style", "display:block;")
    fadeLayer.style.height = body_height+"px"
  })
  fadeLayer.addEventListener("click", ()=>{
    purchased_mes.removeAttribute("style", "display:block;")
  })
}
}
window.addEventListener('load',purchased)