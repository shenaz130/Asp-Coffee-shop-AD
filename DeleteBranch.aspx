﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteBranch.aspx.cs" Inherits="DeleteBranch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title></title>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="background-color: #99FF99; width: 1346px; height: 705px;">
            <div id="nav" style="background-color: #009933; height: 124px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="BRANCHES" Font-Names="Lucida Handwriting" Font-Overline="True" Font-Underline="True" ForeColor="White" Height="51px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="ImageLogo" runat="server" Height="100px" ImageUrl="~/NewFolder1/Images/logo.png" Width="153px" />
      
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_ShopName" runat="server" Font-Size="XX-Large" Text="WILLIAM'S COFFEE SHOP" Font-Names="Mistral" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" ForeColor="White" Height="100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonOption" runat="server" Height="51px" ImageUrl="~/NewFolder1/New folder (2)/options button.png" Width="64px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButtonHome" runat="server" Height="46px" ImageUrl="~/NewFolder1/New folder (2)/home button'.png" Width="58px" OnClick="ImageButtonHome_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<div class="view" style="background-color:#99FF99; height: 412px; margin-left: 40px; width: 369px;" id="view">
                       
                       
                       <br />
                       
                       
                       <br />
 
                       <br />
                       &nbsp;&nbsp;&nbsp;
                       <asp:GridView ID="GridViewBranch" runat="server" Height="307px" Width="388px" Font-Names="Century" Font-Size="Large">
                       </asp:GridView>
 
</div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                <%--  <div id="container" style="height: 504px; width: 1102px; margin-left: 40px">--%>
                </div>
            <br />
            <%--</div>--%>
              <div class="container" id="container" style="background-color: #99FF99; height: 573px; width: 1139px;">
                   <br />
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                       
                       
                       <asp:Button ID="btn_add" runat="server"  Height="50px" Text="ADD" Width="180px"  BackColor="#009900" Font-Names="Centaur" Font-Size="X-Large" ForeColor="White" OnClick="btn_add_Click" />
                       
                       
                       <asp:Button ID="btn_update" runat="server" Height="50px" Text="UPDATE" Width="167px" BackColor="#009900" Font-Names="Centaur" Font-Size="X-Large" ForeColor="White" OnClick="btn_update_Click" />
                       
                       
                       <asp:Button ID="btn_delete" runat="server" Height="50px" Text="DELETE" Width="194px" BackColor="#009900" Font-Names="Centaur" Font-Size="X-Large" ForeColor="White" OnClick="btn_delete_Click" />
                       <br />
                   <br />
                   <div class="auto-style1" style="border: medium solid #000000; background-color:#FFFFFF; height: 323px; width: 404px; margin-left: 600px;" id="BranchDetails">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="BranchDetails1" runat="server" Text="Branch Details" Font-Names="Calibri" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                       <br class="auto-style1" />
                       <br class="auto-style1" />
       <br class="auto-style1" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Label ID="lbl_cust_id" runat="server" Text="Branch ID"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                       <asp:TextBox ID="txt_br_id" runat="server"></asp:TextBox>
                       <br class="auto-style1" />
                       <br class="auto-style1" />
       <br class="auto-style1" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btn_ok" runat="server" Text="OK" Height="29px" Width="91px" OnClick="btn_ok_Click" />
 
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                  
                  </div>
    
    </form>
    </body>
</html>
