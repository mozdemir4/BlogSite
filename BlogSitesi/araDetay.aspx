<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="araDetay.aspx.cs" Inherits="BlogSitesi.araDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
        <asp:DataList ID="dl_ara" runat="server" Width="699px">
            <ItemTemplate>
                <table class="auto-style1" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #999999">
                    <tr>
                        <td>
                            <strong>
                           <a href="makaleDetay.aspx?makaleID=<%#Eval("makaleID") %>"><asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("makaleBaslik") %>'></asp:Label></a>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong><span class="auto-style6">Özet:</span></strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleOzet") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleOkunmaSayisi") %>'></asp:Label>
                           <img class="auto-style8"  src="admin/tema/eye.png" />&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>
                            <img class="auto-style9"  src="admin/tema/comment.png" style="width: 30px; height: 30px" />
                            Tarih: <asp:Label ID="Label6"  runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
