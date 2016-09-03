// Add your JavaScript here
$(function(){
  addLikeEventHandler();
});

function addLikeEventHandler(){
  $('.like_button').on('ajax:complete', function(e, request, status){
     $(this).find('span').toggleClass('red-heart grey-heart')
     this.nextElementSibling.innerHTML = request.responseJSON.message;
  });
}
