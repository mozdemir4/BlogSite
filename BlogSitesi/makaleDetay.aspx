<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaleDetay.aspx.cs" Inherits="BlogSitesi.makaleDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style8 {
            width: 15px;
            height: 12px;
        }

        .auto-style9 {
            width: 15px;
            height: 12px;
        }

        .auto-style10 {
            font-size: x-large;
        }

        a {
            text-decoration: none;
            color: black;
        }

            a:hover {
                font-size: 19px;
            }
        .auto-style11 {
            background-color: #2A585B;
        }
        .auto-style12 {
            font-size: small;
            color: #666666;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style14 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" Width="699px">
        <ItemTemplate>
            <table class="auto-style1" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #999999">
                <tr>
                    <td>
                        <strong>
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style6">İçerik:</span></strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleIcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleOkunmaSayisi") %>'></asp:Label>
                        <img class="auto-style8" src="admin/tema/eye.png" />&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>
                        <img class="auto-style9" src="admin/tema/comment.png" />
                        Tarih:
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="height: 20px; width: 100%"></div>
     <div style="height:30px; text-align:center; color:gray; font-weight:bold;color:white" class="auto-style11"><h2>Makaleye Yapılan Yorumlar</h2></div>
     <div style="width:690px; height:auto; margin:0 auto">
         <asp:DataList ID="DataList2" runat="server" Width="690px">
             <ItemTemplate>
                 <div style="width: 690px; height: auto; float: left; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #2a595c;margin: 5px 0 0 0;">
                     <div style="float:left; width:50px; height:auto; border: 1px dotted #2a595c">
                         <asp:Image ID="Image3" runat="server" Height="58px" ImageUrl='<%# Eval("yorumResim") %>' Width="48px" />
                     </div>
                     <div style="float:left; width:630px">
                         <div style="float:left; width:630px; height:40px">
                             &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumAdSoyad") %>' CssClass="auto-style13"></asp:Label>
                             &nbsp;-
                             <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                         </div>
                         <div style="float:left; width:630px; height:auto">
                             &nbsp;&nbsp; <strong>İçerik:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("yorumIcerik") %>' CssClass="auto-style14"></asp:Label>
                         </div>
                     </div>
                     <div style="float:left; width:690px; height:20px"></div>
                 </div>
             </ItemTemplate>
         </asp:DataList>
     </div>
    
    <div style="height: 20px; width: 100%"></div>
    <div style="background-color: #2a595c; color: white; height: 30px; width: 100%; text-align: center; font-size: 24px; font-weight: bold">Yorum Yap</div>
    <div style="height: auto">
        <div style="width: 340px; height: 200px; float: left; border: 1px dashed #2a595c">
            <asp:TextBox ID="TextBox1" placeholder="Lütfen yorumunuzu belirtiniz." runat="server" Height="200px" TextMode="MultiLine" Width="340px"></asp:TextBox>
        </div>

        <div style="width: 340px; height: 200px; float: right; border: 1px dashed #2a595c">
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"  placeHolder="Lütfen Adınızı ve Soyadınızı giriniz!!!" CssClass="textboxGorsel" Width="240px" Height="30px"></asp:TextBox></td>
                </tr>
                <tr>

                    <td class="auto-style6" >
                        <asp:TextBox ID="TextBox3" runat="server" placeHolder="Lütfen Mail adresinizi giriniz!!!" CssClass="textboxGorsel" Width="240px" Height="30px" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>

                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="buttonGorsel" Height="30px" Width="100px" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>

                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red">Yorum!!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red">Ad ve Soyad!!!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red">Mail Adresi!!!</asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı Mail!!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>
