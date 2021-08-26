function calcprice(){
  const price= document.getElementById("itemprice").innerHTML
  const price_int= Number(price)
  const item_count=document.getElementById("itemcount")
  const calc_price= document.getElementById("calc-price")
  const itemquantitiy = document.getElementById("itemquantitiy")
  const item_price =document.getElementById("item-price")
  item_count.addEventListener("input",()=>{
    const item_count_int = Number(item_count.value)
    calc_price.innerHTML= item_count_int*price_int
    itemquantitiy.value = item_count_int
    item_price.value = item_count_int*price_int
  })
}
window.addEventListener("load",calcprice)