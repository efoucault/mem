function dynamicBarStatus() {
  $('[data-toggle="tooltip"]').tooltip({trigger: 'manual'}).tooltip('show');
};

// $( window ).scroll(function() {
 // if($( window ).scrollTop() > 10){  // scroll down abit and get the action
  // $(".progress-bar").each(function(){
  //   each_bar_width = $(this).attr('aria-valuenow');
  //   $(this).width(each_bar_width + '%');
  // });

 //  }
// });

function fillProgressbar() {
  const bars = document.querySelectorAll(".progress-bar");
  bars.forEach((bar) => {
    const barWidth = bar.dataset.width;
    bar.style.width = barWidth;
  });
}

export { dynamicBarStatus, fillProgressbar };
