<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="projectWepFormMoblieShop.ManagerPoduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <form id="formCategorys" runat="server">
        <%-- Alert --%>
        <asp:Panel ID="PanelAlert" CssClass="alert alert-warning alert-dismissible fade show" runat="server" Visible="false">
            <strong class="me-2">Add failed!</strong><asp:Label ID="LabelAlertMess" runat="server" Text="Label"></asp:Label>.
            <button type="button" class="btn btn-close btn-sm close" data-dismiss="alert" aria-label="Close">
            </button>
        </asp:Panel>

        <div class="card mx-2 my-2">
            <div class="card-header">
                Product manager
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
                        <asp:Button ID="BtnAdd" CssClass="btn btn-sm btn-primary me-2" Text="Add" runat="server" OnClick="BtnAdd_Click" />
                    </div>
                </div>
                <%-- /Table Header --%>

                <%--GridView--%>
                <asp:GridView ID="gvCategory" CssClass="dataTable-table"
                    DataSourceID="productSqlDataSource"
                    DataKeyNames="ProductID"
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
                            DataField="ProductID" SortExpression="ProductID"></asp:BoundField>

                        <asp:TemplateField HeaderText="Product name" SortExpression="ProductName" HeaderStyle-CssClass="w-30">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("ProductName") %>' ID="LabelProductName"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--Actions--%>
                        <asp:TemplateField ShowHeader="False">
                            <HeaderStyle CssClass="header-style-commands"></HeaderStyle>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm me-2 mb-2 mb-md-0"></asp:LinkButton>
                                <asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-secondary btn-sm"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <a class="btn btn-outline-success btn-sm" href='ProductEdit.aspx?ProductID=<%#Eval("ProductID")%>'>Edit</a> 
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
                <asp:SqlDataSource ID="productSqlDataSource"
                    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                    SelectCommand="select ProductID, ProductName, ProductDesc, ProductPrice, BrandName, CategoryName, MainImage from tblProducts join tblCategorys tC on tblProducts.CategoryID = tC.CategoryID join tblBrands t on tblProducts.BrandID = t.BrandID"
                    DeleteCommand="DELETE FROM tblProducts WHERE ProductID=@ProductID;"
                    runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </div>
        </div>


    </form>
</asp:Content>
