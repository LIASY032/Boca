<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Boca.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Styles/booking.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 
   <div  class="booking_content  ">
        <div
            id="carouselExampleInterval"
            class="carousel slide"
            data-bs-ride="carousel"
         style="width:500px; margin:auto"
          >
            <div class="carousel-inner" id="AddingImage2" runat="server">
              <div class='carousel-item' data-bs-interval="2000" >
                <img
                  src="./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/P1180507-1.jpg"
                  alt="food"
                  class="d-block w-100"
                 
                />
              </div>
              <div class="carousel-item active" data-bs-interval="2000">
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
           <asp:SqlDataSource ID="MenuDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:menu %>" SelectCommand="SELECT foodAndDrink.Name, foodAndDrink.menuID, menu.Items FROM foodAndDrink INNER JOIN menu ON foodAndDrink.menuID = menu.Id"></asp:SqlDataSource>
    <h1 style="color:darkred; margin:auto;">Food and Drinks Menu</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="MenuDatabase" CellPadding="4" ForeColor="#333333" GridLines="None" style=" margin:auto;" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Items" HeaderText="Categories" SortExpression="Items" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:menu %>" SelectCommand="SELECT * FROM [bookBottomlessTapas]"></asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:menu %>" SelectCommand="SELECT * FROM [reservation]"></asp:SqlDataSource>
         <h1 style="color:darkred; margin:auto;">Reservation</h1>    
       <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style=" margin:auto;">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                   <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                   <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                   <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                   <asp:BoundField DataField="numberOfGuest" HeaderText="numberOfGuest" SortExpression="numberOfGuest" />
                   <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                   <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                   <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
               </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
           </asp:GridView>
         <h1 style="color:darkred; margin:auto;">Bottomless Tapas & Drinks</h1>
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" style=" margin:auto;">
               <AlternatingRowStyle BackColor="PaleGoldenrod" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                   <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                   <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                   <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                   <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                   <asp:BoundField DataField="numOfGuest" HeaderText="numOfGuest" SortExpression="numOfGuest" />
                   <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
               </Columns>
               <FooterStyle BackColor="Tan" />
               <HeaderStyle BackColor="Tan" Font-Bold="True" />
               <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
               <SortedAscendingCellStyle BackColor="#FAFAE7" />
               <SortedAscendingHeaderStyle BackColor="#DAC09E" />
               <SortedDescendingCellStyle BackColor="#E1DB9C" />
               <SortedDescendingHeaderStyle BackColor="#C2A47B" />
           </asp:GridView>
   </div>
   




</asp:Content>
