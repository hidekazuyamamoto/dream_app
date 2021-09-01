function limit_time_calc(time_int){
  const limit_day = Math.floor(time_int / ( 1000 * 24 * 60 * 60 ));
  time_int = time_int % ( 1000 * 60 * 60 * 24 );
  const limit_hour  = Math.floor(time_int / ( 1000 * 60 * 60 ));
  time_int = time_int % ( 1000 * 60 * 60 );
  const limit_min = Math.floor(time_int / ( 1000 * 60 ));  
  time_int = time_int % ( 1000 * 60 );
  const limit_sec  = Math.floor(time_int / 1000 );
  const limit_time=limit_day+"日"+limit_hour+"時間"+limit_min+"分"+limit_sec+"秒"
  return limit_time
}
function set_time_calc(dead_line_time){
  const dead_line = dead_line_time
  const now = new Date()
  const time_int =dead_line - now 
  const time_int_re = time_int-32400000
  return time_int_re
}
function set_time_loop(dead_line_time){
  const time_int = set_time_calc(dead_line_time)
  const limit_time = limit_time_calc(time_int)
  if (time_int<0){
    document.getElementById("limit-time").innerHTML = "タイムアップ"
  }else if(time_int<259200000){
    document.getElementById("limit-time").style.color = 'red'
  }else if(time_int<604800000){
    document.getElementById("limit-time").style.color='yellow'
  }
  document.getElementById("limit-time").innerHTML = limit_time
}
function set_time(){
  const dead_line_time = new Date(document.getElementById("limit-time").innerHTML)
  const time_int = set_time_calc(dead_line_time)
  console.log(time_int)
  if (time_int<0){
    document.getElementById("limit-time").innerHTML = "タイムアップ"
  }else{
    if(time_int<259200000){
    document.getElementById("limit-time").style.color = 'red'
    }else if(time_int<604800000){
    document.getElementById("limit-time").style.color='yellow'
    }
    const limit_time = limit_time_calc(time_int)
    document.getElementById("limit-time").innerHTML = limit_time
    setInterval(set_time_loop, 1000, dead_line_time)
  }
}

window.addEventListener("load", set_time)