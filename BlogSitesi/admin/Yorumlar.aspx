<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="BlogSitesi.admin.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            font-size: large;
        }

        .auto-style4 {
            font-size: small;
        }

        .auto-style6 {
            background-color: #669999;
            height: 21px;
        }

        .auto-style7 {
            width: 60px;
            height: 40px;
        }

        .auto-style9 {
            width: 432px;
            text-align: right;
        }

        .auto-style11 {
            background-color: #669999;
        }

        .auto-style12 {
            text-align: right;
        }

        .auto-style13 {
            height: 21px;
        }

        .auto-style14 {
            width: 80px;
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:30px; text-align:center; color:gray; font-weight:bold"><h2>Onaysız Yorumlar</h2></div>
    <div>

        <asp:DataList ID="DtYorum" runat="server">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width:100px; height:auto; float:left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width:590px; height:auto">
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style11" colspan="3"><strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                                    </strong>&nbsp;-
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumEmail") %>' CssClass="auto-style4"></asp:Label>
                                    &nbsp;-
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumTarih","{0: dd MMMM yyyy}") %>' CssClass="auto-style4"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11" colspan="3">Makale: <strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="3">İçerik:&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <a href="yorumGuncelle.aspx?yorumid=<%#Eval("yorumID") %>&makaleid=<%#Eval("makaleID") %>"><img "height:24px" class="auto-style7" src="tema/update.jpg" /></a>
                                </td>
                                <td class="auto-style12" >
                                    <a href="Yorumlar.aspx?yorumid=<%#Eval("yorumID") %>&yontem=sil"><img class="auto-style7" src="tema/delete.png" /></a>
                                </td>
                                <td class="auto-style12">
                                    <a href="yorumCevap.aspx?makaleid=<%#Eval("makaleID") %>"><img class="auto-style7" src="tema/423437-200.png" /></a>
                                </td>
                               
                            </tr>
                        </table>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
    </div>
   
    <div style="height:30px; text-align:center; color:gray; font-weight:bold;color:red"><h2>Onaylı Yorumlar</h2></div>
    <div>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width:100px; height:auto; float:left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width:590px; height:auto">
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style11" colspan="3"><strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                                    </strong>&nbsp;-
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumEmail") %>' CssClass="auto-style4"></asp:Label>
                                    &nbsp;-
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumTarih","{0: dd MMMM yyyy}") %>' CssClass="auto-style4"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11" colspan="3">Makale: <strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="3">İçerik:&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                               
                                <td class="auto-style12" >
                                    <a href="Yorumlar.aspx?yorumid=<%#Eval("yorumID") %>&onay=sil&makaleid=<%#Eval("makaleID") %>"><img class="auto-style7" src="tema/delete.png" /></a>
                                </td>
                               
                               
                            </tr>
                        </table>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
   </asp:Content>
