<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="ailetisimFormu.aspx.cs" Inherits="admin_ailetisim" %>
<%@ Register assembly="CollectionPager" namespace="SiteUtils" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>İletişim Formu</title>
    <link href="css/sayfalama.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h2 class="sub-header">İletişim Formu</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Ad Soyad</th>
                    <th>Mail</th>
                    <th>Mesaj</th>
                    <th>Tarih</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptIletisim" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("adSoyad") %>
                            </td>
                            <td><%# Eval("mail") %></td>
                            <td><a data-toggle="modal" class="btn btn-primary" data-target="#oku<%# Eval("id") %>">
                                    Mesajı Oku</a>


                                <!-- Modal -->
                                <div class="modal fade" id="oku<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Mesaj</h4>
                                            </div>
                                            <div class="modal-body">
                                               <%# Eval("mesaj") %> 
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
                               <%# Eval("tarih") %></td>
                           
                            <td>

                                <a data-toggle="modal" href="#" data-target="#sil<%# Eval("id") %>">
                                    <img src="image/sil.png" /></a>


                                <!-- Modal -->
                                <div class="modal fade" id="sil<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Mesaj sil</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h3><b>"<%# Eval("adSoyad") %>"</b> kişisinden gelen mesajı silmek istediğinizden emin misiniz?</h3>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Vazgeç</button>
                                                <a href="ailetisimFormuSil.aspx?veri=<%# Eval("id") %>" class="btn btn-danger">Sil</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>


            </tbody>
        </table>

        <cc1:CollectionPager ID="sayfalama"  runat="server" BackNextDisplay="HyperLinks"
BackNextLinkSeparator="" BackNextLocation="Split" BackNextStyle=""
BackText="Geri" ControlCssClass="Sayfalama" ControlStyle=""
FirstText="İlk" HideOnSinglePage="True" IgnoreQueryString="True"
LabelStyle="" LastText="Son" MaxPages="100"
NextText="İleri" PageNumbersDisplay="Numbers"
PageNumbersSeparator="&amp;nbsp;"
PageNumbersStyle="" PageNumberStyle="" PageSize="10" PagingMode="PostBack"
QueryStringKey="Sayfa"
ResultsFormat="{2} tane içerikten {0} - {1} arası gösteriliyor"
ResultsLocation="Top" ResultsStyle="" SectionPadding="8" ShowFirstLast="False"
ShowLabel="true" ShowPageNumbers="True" SliderSize="8" UseSlider="True" LabelText="Sayfalar:">
</cc1:CollectionPager>
    </div>
</asp:Content>

