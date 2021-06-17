<%@ Page Title="Brand" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="projectWepFormMoblieShop.Brand" %>

<asp:Content ID="Head" ContentPlaceHolderID="Head" runat="server">
    <style>
        .header-style-id {
            width: 30px !important;
        }

        .w-30 {
            width: 30%;
        }

        .header-style-commands {
            width: 100px !important;
        }
    </style>
</asp:Content>

<asp:Content ID="ContentPlaceHolderBody" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <form id="formCategorys" runat="server">
        <%-- Alert --%>
        <asp:Panel ID="PanelAlert" CssClass="alert alert-warning alert-dismissible fade show" runat="server" Visible="false">
            <strong class="me-2">Add failed!</strong><asp:Label ID="LabelAlertMess" runat="server" Text="Label"></asp:Label>.
            <button type="button" class="btn btn-close btn-sm close" data-dismiss="alert" aria-label="Close">
            </button>
        </asp:Panel>

        <div class="card mx-2 my-2">
            <div class="card-header">
                Brand manager
            </div>
            <div class="card-body">
                <%-- Table Header --%>
                <div class="align-items-center d-flex justify-content-between mb-2">
                    <div class="d-none d-sm-flex align-items-center">
                        <span>Show</span>
                        <asp:DropDownList ID="ddlItemInPage" runat="server" CssClass="form-select form-select-sm mx-2" AutoPostBack="true">
                            <asp:ListItem Value="5" Selected="True">5</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="25">25</asp:ListItem>
                            <asp:ListItem Value="50">50</asp:ListItem>
                        </asp:DropDownList>
                        <span style="white-space: nowrap">item / page</span>
                    </div>
                    <div class="d-flex flex-row align-items-center">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-sm btn-primary me-2" data-toggle="modal" data-target="#modalAdd">
                            Add
                        </button>
                        <%--<asp:TextBox ID="TextBoxSearch" CssClass="form-control form-control-sm" TextMode="Search" runat="server">Search ...</asp:TextBox>
                        <asp:Button ID="BtnSearch" CssClass="btn btn-primary btn-sm mx-2" Text="Seach" runat="server" />--%>
                    </div>
                </div>
                <%-- /Table Header --%>

                <%--GridView--%>
                <asp:GridView ID="gvCategory" CssClass="dataTable-table"
                    DataSourceID="BrandsSqlDataSource"
                    DataKeyNames="BrandID"
                    EmptyDataText="No data available"
                    AllowPaging="True"
                    PageSize="2"
                    AllowSorting="True"
                    AutoGenerateColumns="false"
                    OnDataBound="GridView_DataBound"
                    SortedAscendingHeaderStyle-CssClass="asc"
                    SortedDescendingHeaderStyle-CssClass="desc"
                    runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="ID" ReadOnly="true" HeaderStyle-CssClass="header-style-id"
                            DataField="BrandID" SortExpression="BrandID"></asp:BoundField>

                        <asp:TemplateField HeaderText="Brand name" SortExpression="BrandName" HeaderStyle-CssClass="w-30">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("BrandName") %>' ID="LabelBrandName"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("BrandName") %>' ID="TxtBrandName" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description" SortExpression="BrandDescription" HeaderStyle-CssClass="w-50">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("BrandDescription") %>' ID="LabelBrandDesc"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("BrandDescription") %>' ID="TxtBrandDesc" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <%--Actions--%>
                        <asp:TemplateField ShowHeader="False">
                            <HeaderStyle CssClass="header-style-commands"></HeaderStyle>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm me-2 mb-2 mb-md-0"></asp:LinkButton>
                                <asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-secondary btn-sm"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm me-2 mb-2 mb-md-0"></asp:LinkButton>
                                <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-danger btn-sm"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                    <%-- Pagination --%>
                    <PagerTemplate>
                        <div class="w-100 d-flex justify-content-between align-items-center">
                            <div>
                                <asp:Label ID="CurrentPageLabel" runat="server" />
                            </div>
                            <div class="d-flex align-items-center">
                                <asp:Label ID="MessageLabel" runat="server" Text="Page:" CssClass="pe-2" />
                                <asp:DropDownList ID="PageDropDownList" AutoPostBack="true" runat="server" CssClass="form-select form-select-sm" OnSelectedIndexChanged="PageDropDownList_SelectedIndexChanged" />
                            </div>
                        </div>
                    </PagerTemplate>
                    <%-- /Pagination --%>
                </asp:GridView>

                <%--Sql--%>
                <asp:SqlDataSource ID="BrandsSqlDataSource"
                    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                    SelectCommand="Select BrandID, BrandName, BrandDescription from tblBrands"
                    DeleteCommand="DELETE FROM tblBrands WHERE BrandID=@BrandID;"
                    UpdateCommand="UPDATE tblBrands SET BrandName = @BrandName, BrandDescription = @BrandDescription WHERE (BrandID = @BrandID)"
                    runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="BrandID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BrandID" Type="Int32" />
                        <asp:Parameter Name="BrandName" Type="String" />
                        <asp:Parameter Name="BrandDescription" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="modalAdd" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h6 class="modal-title" id="modalLabel">Add new brand</h6>
                        <button type="button" class="btn btn-sm btn-close close" data-dismiss="modal" aria-label="Close" />
                    </div>
                    <div class="modal-body">
                        <!-- TxtBrandName -->
                        <div class="form-group">
                            <label for="TxtBrandName" class="col-form-label col-form-label-sm">Brand name:</label>
                            <asp:TextBox ID="TxtBrandName" CssClass="form-control form-control-sm" TextMode="SingleLine" runat="server" />
                        </div>
                        <!-- TxtBrandDesc -->
                        <div class="form-group">
                            <label for="TxtBrandDesc" class="col-form-label col-form-label-sm">Brand description:</label>
                            <asp:TextBox ID="TxtBrandDesc" CssClass="form-control form-control-sm" TextMode="SingleLine" runat="server" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="BtnAdd" CssClass="btn btn-sm btn-primary" Text="Add" runat="server" OnClick="BtnAdd_Click" />
                        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
