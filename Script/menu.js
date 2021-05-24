document.querySelector(".menuButton").addEventListener("click", function () {
    
    location.href = "https://localhost:44377/Menu.aspx";
});

document.querySelector(".groupBooking").addEventListener("click", function () {

    location.href = "https://localhost:44377/GroupBookingMenu.aspx";
});

document.querySelector(".tapas").addEventListener("click", function () {

    $(".BocaTapas").fadeIn("slow");
});
document.querySelector(".functionMenu").addEventListener("click", function () {

    location.href = "https://localhost:44377/FunctionMenu.aspx";
});
$(".happyHourImg").fadeOut();
$(".BocaTapas").fadeOut();
document.querySelector(".happyHour").addEventListener("click", function () {
    $(".happyHourImg").fadeIn("slow");
    
});


