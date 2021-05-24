<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Boca.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Styles/booking.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="booking_content">

         <form>
          <select id="Select1" class="form-select" aria-label="Default select example" runat="server">
              <option selected>Open this select menu</option>
              <option value="1">Make a booking</option>
              <option value="2">Alter a booking</option>
              <option value="3">Cancel a booking</option>

    </select>
    

          <div class="row">
              <div class="col-4">

                   <label for="exampleFormControlInput1" class="form-label">First Name</label>
              <asp:TextBox ID="firstName" runat="server" CssClass="form-control" placeholder="Your First Name"></asp:TextBox>
              </div>
              <div class="col-4">
                   <label for="exampleFormControlInput1" class="form-label">Last Name</label>
                  <asp:TextBox ID="lastName" runat="server" CssClass="form-control" placeholder="Your Last Name"></asp:TextBox>
              </div>
              <div class="col-4">
                  <label for="exampleFormControlInput1" class="form-label">Phone</label>
                  <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="Your Phone" TextMode="Phone"></asp:TextBox>
              </div>
             
              </div>
    
           <div class="row">

               <div class="col-6">
                     <label for="exampleFormControlInput1" class="form-label">Email Address</label>
               <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>

               </div>
               <div class="col-4">
                     <label for="exampleFormControlInput1" class="form-label">Date</label>
                      <asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date" placeholder="Date"></asp:TextBox>

               </div>
               <div class="col-2">
                     <label for="exampleFormControlInput1" class="form-label">Time</label>
                      <asp:TextBox ID="time" runat="server" CssClass="form-control" TextMode="Time" placeholder="Time" ></asp:TextBox>

               </div>
              
           </div>
    
           <div class="row">

             
               <div class="col-4"> 
                   <br/>
                   <asp:TextBox ID="numOfGuest" runat="server" CssClass="form-control" TextMode="Number" placeholder="Number of Guest"></asp:TextBox>

               </div>
               
           </div>
     <div class="row">
        <div class="col-12">
              <label for="exampleFormControlInput1" class="form-label">Do you have any messages?</label>
                  













         <asp:TextBox ID="Message" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Message"></asp:TextBox>   
        </div>
    
     </div>
             <br />
 
            <div class="nav justify-content-end">
                 
      
          
                 <asp:Button ID="BTNreservation" runat="server" Text="Send your booking request now" CssClass="btn btn-outline-danger alert-danger nav-item" Font-Size="Large" OnClick="BTNreservation_Click" />
            
            </div>
    </form>
      
 
      
    </div>
      
</asp:Content>
