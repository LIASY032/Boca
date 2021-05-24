<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Bottomless Tapas.aspx.cs" Inherits="Boca.Bottomless_Tapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Styles/booking.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="booking_content">
           <div class="row">

        <div class="col">

            <label>$35 Bottomless Tapas & Drinks</label>
            <p>For $35 and 2 hours you can enjoy unlimited tapas, beer, wine and sangria!</p>
            <h3 style="color:darkred">Bottomless Tapas:</h3>
            <p>
                Unlimited Chef’s Selection of Tapas
                <br />
 
Bottomless Drinks: <br />
House White, Red and Sparkling <br />
House Beer <br />
Sangria <br />
Soft Drinks <br />
                Fri & Sat between 3:30 and 5:30pm<br /><br />
 

            </p>
            <p style="color:yellow">
                **This offer is not valid in conjunction with any other offer*
            </p>
        </div>
        <div class="col">
            <p>Please fill out the form below and we will be in contact to confirm your booking – for short notice bookings or if you need a fast response please call our friendly team on 8397 8600 thank you!</p>

            <h2 style="color:darkred">Book Bottomless Tapas</h2>
             <asp:TextBox ID="firstName" runat="server" CssClass="form-control" placeholder="Your First Name"></asp:TextBox> <br />
              <asp:TextBox ID="lastName" runat="server" CssClass="form-control" placeholder="Your Last Name"></asp:TextBox> <br />
            <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="Your Phone" TextMode="Phone"></asp:TextBox> <br />
              <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox> <br />
             <asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date" placeholder="Date"></asp:TextBox> <br />
             <asp:TextBox ID="numOfGuest" runat="server" CssClass="form-control" TextMode="Number" placeholder="Number of Guest"></asp:TextBox> <br />
            
         <asp:TextBox ID="Message" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Message"></asp:TextBox>    <br />
             <div class="nav justify-content-end">


                 <asp:Button ID="Button2" runat="server" Text="Book Buttomless Tapas" OnClick="Button1_Click" CssClass="btn btn-outline-danger alert-danger nav-item"/>
             </div>
           
        </div>

    </div>


      </div>
   
</asp:Content>
