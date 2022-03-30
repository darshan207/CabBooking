﻿<%@ Page Title="User" Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CabBookingWeb.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
            -moz-font-smoothing: antialiased;
            -o-font-smoothing: antialiased;
            font-smoothing: antialiased;
            text-rendering: optimizeLegibility;
        }

        body {
            font-family: "Roboto", Helvetica, Arial, sans-serif;
            font-weight: 100;
            font-size: 12px;
            line-height: 30px;
            color: #777;
            background: #7ec9ed;
        }

        .container {
            max-width: 400px;
            width: 100%;
            margin: 0 auto;
            position: relative;
        }

        #contact input[type="text"],
        #contact input[type="email"],
        #contact input[type="tel"],
        #contact input[type="url"],
        #contact textarea,
        #contact button[type="submit"] {
            font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
        }

        #contact {
            background: #F9F9F9;
            color:black;
            padding: 25px;
            margin: 150px 0;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

            #contact h3 {
                display: block;
                font-size: 30px;
                font-weight: 300;
                margin-bottom: 10px;
            }

            #contact h4 {
                margin: 5px 0 15px;
                display: block;
                font-size: 13px;
                font-weight: 400;
            }

        fieldset {
            border: medium none !important;
            margin: 0 0 10px;
            min-width: 100%;
            padding: 0;
            width: 100%;
        }

        #contact input[type="text"],
        #contact input[type="email"],
        #contact input[type="tel"],
        #contact input[type="url"],
        #contact textarea {
            width: 100%;
            border: 1px solid #ccc;
            background: #FFF;
            margin: 0 0 5px;
            padding: 10px;
        }

            #contact input[type="text"]:hover,
            #contact input[type="email"]:hover,
            #contact input[type="tel"]:hover,
            #contact input[type="url"]:hover,
            #contact textarea:hover {
                -webkit-transition: border-color 0.3s ease-in-out;
                -moz-transition: border-color 0.3s ease-in-out;
                transition: border-color 0.3s ease-in-out;
                border: 1px solid #aaa;
            }

        #contact textarea {
            height: 100px;
            max-width: 100%;
            resize: none;
        }

        #contact .Button {
            cursor: pointer;
            width: 100%;
            border: none;
            background: #4CAF50;
            color: #FFF;
            margin: 0 0 5px;
            padding: 10px;
            font-size: 15px;
        }

            #contact .Button:hover {
                background: #43A047;
                -webkit-transition: background 0.3s ease-in-out;
                -moz-transition: background 0.3s ease-in-out;
                transition: background-color 0.3s ease-in-out;
            }

            #contact   .Button:active {
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
            }

        .copyright {
            text-align: center;
        }

        #contact input:focus,
        #contact textarea:focus {
            outline: 0;
            border: 1px solid #aaa;
        }

        ::-webkit-input-placeholder {
            color: #888;
        }

        :-moz-placeholder {
            color: #888;
        }

        ::-moz-placeholder {
            color: #888;
        }

        :-ms-input-placeholder {
            color: #888;
        }
    </style>
</head>
<body>
            <div class="container">
    <form id="contact" runat="server">
        <div>
            Address &nbsp;&nbsp;&nbsp;:
            <asp:TextBox ID="address" runat="server" OnTextChanged="address_TextChanged"></asp:TextBox>
            <br />
            Age &nbsp;&nbsp;&nbsp;&nbsp;:
            <asp:TextBox ID="age" runat="server" OnTextChanged="age_TextChanged"></asp:TextBox>
            <br />
            Email &nbsp;&nbsp;&nbsp;&nbsp;:
            <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
            <br />
            First Name &nbsp;&nbsp;:
            <asp:TextBox ID="firstname" runat="server" OnTextChanged="firstname_TextChanged"></asp:TextBox>
            <br />
            Last Name &nbsp;&nbsp;:
            <asp:TextBox ID="lsatname" runat="server" OnTextChanged="lsatname_TextChanged"></asp:TextBox>
            <br />
            Mobile &nbsp;&nbsp;:
            <asp:TextBox ID="mobile" runat="server" OnTextChanged="mobile_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" cssClass="Button"  runat="server" Text="Create User" data-submit="...Sending" OnClick="Button1_Click" />
        </div>
    </form>
            </div>
</body>
</html>
