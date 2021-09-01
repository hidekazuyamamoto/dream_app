function card(){
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  if (document.getElementById("button")!=null){
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const form_result = document.getElementById("charge-form")
    const formdata = new FormData(form_result)
    const card = {
      number: formdata.get("sub_purchased_log[card_number]"),
      cvc: formdata.get("sub_purchased_log[card_cvc]"),
      exp_month: formdata.get("sub_purchased_log[card_exp_month]"),
      exp_year: `20${formdata.get("sub_purchased_log[card_exp_year]")}`,
    }
    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const tokenObj = `<input value=${token} name='token' type="hidden">`;
        form_result.insertAdjacentHTML("beforeend", tokenObj);
      }
      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");

      form_result.submit();
    });

  })
}
}
  window.addEventListener("load",card)