<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRide.aspx.cs" Inherits="CabBookingWeb.CreateRide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body {
            
            font-family: sans-serif;
            background: #e7e7e7;
        }

        .box {
            width: 600px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: white;
            text-align: center;
            height: 750px;
            border-radius: 15px;
        }

        #TextBox1, #TextBox2, #TextBox3, #TextBox4, #TextBox5, #TextBox6, #TextBox7, #TextBox8, #TextBox9, #TextBox10, #TextBox11, #TextBox12 {
            border: 0;
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


        table {
            font-weight: bold;
        }

        .box h1 {
            text-transform: uppercase;
            font-weight: 500;
        }

        #TextBox1:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox2:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox3:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox4:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox5:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox6:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox7:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #TextBox8:focus {
            width: 280px;
            border-color: #2ecc71;
        }
        #TextBox9:focus {
            width: 280px;
            border-color: #2ecc71;
        }
        #TextBox10:focus {
            width: 280px;
            border-color: #2ecc71;
        }
        #TextBox11:focus {
            width: 280px;
            border-color: #2ecc71;
        }
        #TextBox12:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        #Button1 {
            border: 0;
            background: none;
            display: inline;
            border: 2px solid #2ecc71;
            padding: 14px 40px;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
            margin-left: 10px;
            margin-right: 5px;
        }

            #Button1:hover {
                background: #2ecc71;
            }

        #Button2 {
            border: 0;
            background: none;
            display: inline;
            border: 2px solid #808080;
            padding: 14px 40px;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }

            #Button2:hover {
                background: #808080;
            }

        #buttons {
            float: right;
           
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="box">
        <div>
             <h1  style="text-align:center;"> Create Ride</h1>
            <table class="auto-style1" style="text-align:center;"  align="center">
                <tr>
                    <td class="auto-style3" style="text-align:right;">UserID</td>
                    <td class="auto-style4" style="text-align:left;">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right;">DriverID</td>
                    <td class="auto-style7" style="text-align:left;">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right;">From</td>
                    <td class="auto-style7" style="text-align:left;">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right;">To</td>
                    <td class="auto-style7" style="text-align:left;">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div id="buttons">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
            </div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
