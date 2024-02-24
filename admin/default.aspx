<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="admin_Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <h2 class="sub-header">Ana Sayfa</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Foto</th>
                    <th>Başlık 1</th>
                    <th>Alt Başlık 1</th>
                    <th>Açıklama 1</th>
                    <th>Başlık 2</th>
                    <th>Alt Başlık 2</th>
                    <th>Açıklama 2</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptHakkimda" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <img width="150" src="../img/<%# Eval("foto") %>" />
                            </td>
                            <td><%# Eval("baslik1") %></td>
                            <td><%# Eval("altbaslik1") %></td>
                            <td><a data-toggle="modal" class="btn btn-primary" data-target="#aciklama1">Aciklama 1</a>


                                <!-- Modal -->
                                <div class="modal fade" id="aciklama1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aciklama 1</h4>
                                            </div>
                                            <div class="modal-body">
                                                <%# Eval("aciklama1") %>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tamam</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->



                            </td>
                            <td><%# Eval("baslik2") %></td>
                            <td><%# Eval("altbaslik2") %></td>
                            <td><a data-toggle="modal" class="btn btn-primary" data-target="#aciklama2">Aciklama 2</a>


                                <!-- Modal -->
                                <div class="modal fade" id="aciklama2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aciklama 2</h4>
                                            </div>
                                            <div class="modal-body">
                                                <%# Eval("aciklama2") %>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tamam</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->



                            </td>

                            <td>
                                <a href="anasayfaDuzenle.aspx">
                                    <img src="image/duzenle.png" /></a> &nbsp &nbsp
                                   
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>


            </tbody>
        </table>
    </div>

</asp:Content>
