<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product display.aspx.cs" Inherits="WebApplication1.product_display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 692px;
        }
        .auto-style3 {
            margin-left: 11px;
        }
        .auto-style4 {
            width: 100%;
            background-color: #DC143C;
        }
        .auto-style8 {
            width: 267px;
            color: white;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style14 {
            width: 267px;
            color: white;
        }
        .newStyle1 {
            width: 90px;
            margin-left:2px;
           
        }
        .auto-style15 {
            margin-left: 990px;
            margin-top: 10px;
            margin-bottom:150px;


        }
        #section {
            margin: 10px;
        }
        .auto-style16 {
            margin-left: 953px;
            margin-top:0px;
        }
        .auto-style17 {
            margin-top: 0px;
            margin-bottom:20px;
            margin-left: 11px;
        }
        .auto-style18 {
            margin-left: 15px;
        }
        .auto-style19 {
            text-align: center;
            font-weight: normal;
        }
        #header {
            width: 130px;
            height: 30px;
        }
        #header {
            width: 1350px;
            height: 30px;
        }
       
        #footer {
            width: 1350px;
            height: 20px;

        }
       
        .newStyle2 {
            margin-top: 12000px;
        }
       
        .auto-style20 {
            text-align: left;
        }
        .auto-style21 {
            margin-left: 527px;
        }
       
        .auto-style27 {
            width: 829px;
        }
       
        .auto-style28 {
            width: 968px;
        }
       
    </style>
</head>
<body>
    <div>
        <form id="form1" runat="server">
        <div id="header">

            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online MegaMart</h2>

        </div>
       <div id="menu">
            <ul>
            <li><a href="#">Home</a></li>
             <li><a href="#">AboutUs</a></li>
             <li><a href="#">Products</a>
                <ul>
                    <li><a href="#"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebForm3.aspx">catagory1</asp:HyperLink></a></li>
                    <li><a href="#">catagory2</a></li>
                    <li><a href="#">catagory3</a></li>
                    

                </ul>
                 </li>
             <li><a href="#">Contact Us</a></li>
                 
        </ul>
           </div>
            <br />
            <br />
            <br />
        
        
        <div id="section">

        </div>
        
        
    
     
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imageConnectionString39 %>" SelectCommand="SELECT [id], [sno], [name], [image], [price], [quantity] FROM [Table55]"></asp:SqlDataSource>
        
        
    
     
        <br />
        <br />
&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="Crimson" Height="34px" Width="1350px" ForeColor="White">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style17" Height="16px" Width="44px" ForeColor="White" NavigateUrl="~/Registration.aspx">SignUp</asp:HyperLink>
            &nbsp;&nbsp; /<asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style18" ForeColor="White" Height="20px" NavigateUrl="~/Login.aspx" Width="42px">LogIn</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="28px" Width="135px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="White" CssClass="auto-style3" ForeColor="Black" Height="35px" Text="Search" OnClick="Button1_Click" />
        </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" BackColor="Crimson" ForeColor="White" Height="40px" Width="1350px">
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style21" Height="38px" Width="30px" ImageUrl="~/mn.png" OnClick="ImageButton2_Click" />
                &nbsp;Show Cart</asp:Panel>
        <h2 class="auto-style19">&nbsp;</h2>
            <h2 class="auto-style19">&nbsp;</h2>
            <h2 class="auto-style19"><strong>Products Display</strong></h2>
    <p class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imageConnectionString37 %>" SelectCommand="SELECT [id], [sno], [name], [image], [price], [quantity], [totalprice] FROM [Table55]"></asp:SqlDataSource>
        </p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id"  HorizontalAlign="Left" RepeatColumns="3" Width="90px" CssClass="newStyle1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" DataSourceID="SqlDataSource2"  >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style14">ID</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">SNO</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text='<%# Eval("sno") %>'></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">NAME</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" ForeColor="White" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">IMAGE</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="100px" Width="70px" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">PRICE</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" ForeColor="White" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">QUANTITY</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/kkk.png"  CommandName="abc" CommandArgument='<%# Eval("id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
            
            <asp:Panel ID="Panel2" runat="server" BackColor="Crimson" CssClass="auto-style16" Height="276px" Width="200px" ForeColor="White">
                IMPORTANT NOTIFICATION<br />
                <br />
                <br />
                FOR DETAILS CLICK HERE<br />
                <br />
                <br />
                <br />
                FOR DETAILS CLICK HERE<br />
                <br />
                <br />
                <br />
                <br />
                <br />
        </asp:Panel>
            
            <asp:DataList ID="DataList2" runat="server" CellPadding="4"  ForeColor="#333333" OnItemCommand="DataList2_ItemCommand" >
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style28">&nbsp;Id</td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;Sno</td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;Name</td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;Image</td>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="100px" Width="70px" ImageUrl='<%# Eval("image") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;Price</td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;Quantity</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;</td>
                            <td>
                                <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/kkk.png" CommandName="d" CommandArgument= '<%# Eval("id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style15" Width="200px"  ImageUrl="~/index3.png" Height="278px"/>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
        <div id="footer" class="newStyle2">

        </div>
    </div>
    </body>
</html>
