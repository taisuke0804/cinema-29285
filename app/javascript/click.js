function check() {
  const newReview = document.getElementById("new_review");
  const searchReview = document.getElementById("search_review");
  const profileReview = document.getElementById("profile_review");
  
  newReview.addEventListener('mouseover', function(){
    newReview.setAttribute("style", "background-color:pink;")
  })

  newReview.addEventListener('mouseout', function(){
    newReview.removeAttribute("style", "background-color:pink;")
  })

  profileReview.addEventListener('mouseover', function(){
    profileReview.setAttribute("style", "background-color:pink;")
  })

  profileReview.addEventListener('mouseout', function(){
    profileReview.removeAttribute("style", "background-color:pink;")
  })

  searchReview.addEventListener('mouseover', function(){
    searchReview.setAttribute("style", "background-color:pink;")
  })

  searchReview.addEventListener('mouseout', function(){
    searchReview.removeAttribute("style", "background-color:pink;")
  })
}
window.addEventListener("load", check);