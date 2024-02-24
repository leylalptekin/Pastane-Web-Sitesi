<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="amagaza.aspx.cs" Inherits="admin_urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Mağaza</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <h2 class="sub-header">Mağaza</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>

                    <th>Üst Başlık</th>
                    <th>Ana Başlık</th>
                    <th>Adres</th>
                    <th>Telefon</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptMagaza" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ustBaslik") %></td>
                            <td><%# Eval("anaBaslik") %></td>
                            <td><%# Eval("adres") %></td>
                            <td><%# Eval("telefon") %></td>

                            <td>
                                <a href="amagazaduzenle.aspx">
                                    <img src="image/duzenle.png" /></a> &nbsp &nbsp
                                   
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>


            </tbody>
        </table>
    </div>

</asp:Content>

