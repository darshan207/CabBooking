<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="CabBookingWeb.ViewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     body{
			margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #e7e7e7;
        }
        .box{
			width: 600px;
			padding: 20px;
		    height:contain;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
			background: white;
			text-align: center;
			border-radius:15px;
		}
        #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7,#TextBox8,#TextBox9,#TextBox10,#TextBox11,#TextBox12,#TextBox13,#TextBox14{
			border:0;
			background: none;
			display: block;
			margin: 5px auto;
			text-align: center;
			border: 1px solid #3498db;
			padding: 10px 10px;
			width: 300px;
			outline: none;
			border-radius: 24px;
			transition: 0.25s;
		}

        table{
			font-weight:bold;
        }
        .box h1{
			text-transform: uppercase;
			font-weight: 500;
			margin-bottom: 20px;
		}
		#TextBox1:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox2:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox3:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox4:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox5:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox6:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox7:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox8:focus{
			width: 280px;
			border-color: #2ecc71;
		}
		#TextBox9:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #TextBox10:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #TextBox11:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #TextBox12:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #TextBox13:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #TextBox14:focus{
			width: 280px;
			border-color: #2ecc71;
		}
        #Button1{
			border:0;
			background: none;
			display: block;
			text-align: center;
			border: 2px solid #808080;
			padding: 14px 40px;
			outline: none;
			border-radius: 24px;
			transition: 0.25s;
			cursor: pointer;
			margin-top: 35px;
		}
		#Button1:hover{
			background: #808080;
		}
		#Button2{
			border:0;
			background: none;
			display: block;
			margin: 10px auto;
			text-align: center;
			border: 2px solid #2ecc71;
			padding: 14px 40px;
			outline: none;
			border-radius: 24px;
			transition: 0.25s;
			cursor: pointer;
			margin-top: 35px;
		}
		#Button2:hover{
			background: #2ecc71;
		}
		#Button3{
			border:0;
			background: none;
			text-align: center;
			border: 2px solid #f44336;
			padding: 14px 40px;
			outline: none;
			border-radius: 24px;
			transition: 0.25s;
			cursor: pointer;
			margin-top: 35px;
		}
         #Button3:hover {
             background: #f44336;
         }
		
    </style>
</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
            <h1  style="text-align:center;">View Patient</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">UserId</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Firstname</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Lastname</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">email</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">isDriver</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" GroupName="driver" />  
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="driver" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server"  Text="Back" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="UpdatePatient"  Text="Update" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="DeletePatient"  Text="Delete" />
                    </td>
                </tr>

            </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
