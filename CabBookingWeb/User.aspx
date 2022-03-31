<%@ Page Title="User" Language="C#" validateRequest="false" enableEventValidation="false" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CabBookingWeb.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <style type="text/css">
        #Button2 {
            border: none;
            background-color: transparent;
        }
        body{
			margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #e7e7e7;
        }
        nav {
            height: 65px;
        }
        .container{
			width: 600px;
			padding: 20px;
            height: 680px;
			position: absolute;
            margin-top: 32px;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
			background: white;
			text-align: center;
			border-radius:15px;
            overflow-y:auto;
		}
        #TextBox1 {
            width: 15%;
        }
        .left{
            margin-right :auto;
        }
        .right{
            margin-left :auto;
        }
        .flex{
            display : flex;
        }
        .ml-5{
            margin-left:10px;
        }
    </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" runat="server" href="~/">Cab Booking System</a>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-link" runat="server" href="~/">Home</a>
                <a class="nav-link active" runat="server" href="~/User">Users</a>
                <a class="nav-link" runat="server" href="~/Ride">Have a Ride</a>
              </div>
            </div>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control me-2" style="align-items:end"></asp:TextBox>&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Find" OnClick="Button3_Click" CssClass="btn btn-outline-primary" />
              <asp:button ID="button2" runat="server" text="Create User" width="141px" onclick="button2_click" cssclass="ml-5 btn btn-outline-primary" />
              <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>
        </nav>
        <div class="container" >
            
            <h3>List of Users</h3>
            <ul class="list-group" >
            <asp:DataList ID="DataList1" runat="server">
                 <ItemTemplate>
                       <li class="list-group-item temp" style="text-align:center; width:555px;">
                            <div class="flex">
                               <b class ="left"><%# Eval("userId") %> .&nbsp;<%# Eval("first_name") %>&nbsp;<%# Eval("last_name") %> &nbsp;&nbsp; </b>
                               <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("userId") %>' OnClick="ViewUser" Text="View" CssClass="right btn btn-outline-primary"/>
                            </div>
                       </li>
                  </ItemTemplate>               
            </asp:DataList>
            </ul>
        </div>
    </form>
    </body>
</html>
