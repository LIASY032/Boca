<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="HomeForm.aspx.cs" Inherits="Boca.HomeForm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
 <link href="Styles/home.css" rel="stylesheet" />
   
  
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="home">
      <div class="center container-fluid">
        <div class="row p-2">
          <div class="d-grid gap-2 col buttonGroup">

               <button type="button" class="btn btn-danger btn-sm menuButton">
             VIEW MENU
            </button>
           
           
            <button type="button" class="btn btn-danger btn-sm groupBooking">
              GROUP BOOKING MENU
            </button>
            <button type="button" class="btn btn-danger btn-sm happyHour">
              HAPPY HOUR
            </button>
            <button type="button" class="btn btn-danger btn-sm tapas">
              BOTTOMLESS TAPAS
            </button>
            <button type="button" class="btn btn-danger btn-sm functionMenu">
              FUNCTION MENU
            </button>
          </div>
          <div
            id="carouselExampleInterval"
            class="carousel slide col"
            data-bs-ride="carousel"
          >
            <div class="carousel-inner" id="AddingImage" runat="server">
              <div class='carousel-item active' data-bs-interval="2000" >
                <img
                  src="./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/P1180507-1.jpg"
                  alt="food"
                  class="d-block w-100"
                 
                />
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img
                  src="./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/P1120130.jpg"
                  alt="food"
                  class="d-block w-100"
                 
                />
              </div>
                
               
            <button
              class="carousel-control-prev"
              type="button"
              data-bs-target="#carouselExampleInterval"
              data-bs-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button
              class="carousel-control-next"
              type="button"
              data-bs-target="#carouselExampleInterval"
              data-bs-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>

        <div class="content">
          <h3>GRILL / TAPAS / PAELLA / VINO / COCKTAILS / SANGRIA / CERVEZA</h3>
          <p>
            Enjoy cocktails at the bar
            <br />
            Dine in one of our private rooms
            <br />
            Feast on Tapas, Sangria, Wine & Beer in our Outdoor Garden
          </p>
          <h5 class="reminder-text">
            Due government restrictions in place from the COVID-19 virus Boca
            Chica is Closed until further notice
          </h5>
         
        </div>
      </div>
    </div>

   
   

    <div class="modal happyHourImg">
  
  <form class="modal-content" >
    <div class="imgcontainer">
      <span onclick="$('.happyHourImg').fadeOut();" class="close" title="Close Modal">&times;</span>
      <img src="./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/BOCA-HAPPY-HOUR-TILE.jpg" alt="Happy Hour" class="avatar">
    </div>

   
  </form>
</div>
     <div class="modal BocaTapas">
  
  <form class="modal-content" >
    <div class="imgcontainer">
      <span onclick="$('.BocaTapas').fadeOut();" class="close" title="Close Modal">&times;</span>
      <img src="./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/BOCA-TAPAS-TILE-2020.jpg" alt="Boca Tapas" class="avatar">
    </div>

   
  </form>
</div>



     <script src="./Script/menu.js"></script>
</asp:Content>
