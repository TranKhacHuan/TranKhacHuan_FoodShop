var ulContainer = document.getElementById("myNav");
var lis = ulContainer.getElementsByClassName("navLeft");

for (var i = 0; i < lis.length; i++) {
    lis[i].addEventListener("click", function () {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace(" active", "");
        this.className += " active";
    });
  
}