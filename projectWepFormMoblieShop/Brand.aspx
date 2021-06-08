<%@ Page Title="Brand" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="projectWepFormMoblieShop.Brand" %>


<asp:Content ID="Head" ContentPlaceHolderID="Head" runat="server">
    <style>
        /*        .dataTable-table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            vertical-align: top;
            border-color: #dee2e6;
            text-align: left;
        }

            .dataTable-table tr > td,
            .dataTable-table tr > th {
                padding: 0.5rem 0.5rem;
            }

            .dataTable-table .table-header-row:hover {
                background-color: rgba(0, 0, 0, 0.075);
            }

            .dataTable-table .table-page {
                background-color: red;
            }

        .bg-red {
            background-color: red
        }*/
    </style>
</asp:Content>


<asp:Content ID="ContentPlaceHolderBody" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <form id="formBrand" runat="server">
        <div class="container-fluid px-2 py-4">

            <div class="row">
                <asp:Panel ID="Panel1" runat="server" CssClass="col-4" Visible="true">
                    <div class="card">
                        <div class="card-header">
                            Control
                        </div>

                        <div class="card-body">
                            <asp:Label ID="LabelAlert" runat="server"></asp:Label>

                            <div class="mb-2">
                                <label for="TextBoxAddName" class="col-form-label">Brand name (*):</label>
                                <asp:TextBox ID="TextBoxBrandName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="mb-2">
                                <label for="TextBoxBrandDesc" class="col-form-label">Description:</label>
                                <asp:TextBox ID="TextBoxBrandDesc" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <asp:Button ID="ButtonAdd" runat="server" CssClass="btn btn-primary mt-2" Text="Save" OnClick="ButtonAdd_Click" />
                        </div>
                    </div>
                </asp:Panel>

                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            Brand manager
                        </div>

                        <div class="card-body">
                            <%-- Table Header --%>
                            <div class="align-items-center d-flex justify-content-between mb-2">
                                <div class="d-flex align-items-center">
                                    <span>Show</span>
                                    <asp:DropDownList ID="DropDownListNumOfItemInPage" runat="server" CssClass="custom-select mx-2" AutoPostBack="true" OnSelectedIndexChanged="DropDownListNumOfItemInPage_SelectedIndexChanged">
                                        <asp:ListItem Value="5" Selected="True">5</asp:ListItem>
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem Value="25">25</asp:ListItem>
                                        <asp:ListItem Value="50">50</asp:ListItem>
                                    </asp:DropDownList>
                                    <span style="white-space: nowrap">item / page</span>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <asp:TextBox ID="TextBoxSearch" CssClass="form-control" TextMode="Search" runat="server">Search ...</asp:TextBox>
                                    <asp:Button ID="BtnSearch" CssClass="btn btn-primary mx-2" Text="Seach" runat="server" />
                                </div>
                            </div>
                            <%-- /Table Header --%>

                            <asp:GridView ID="gvBrands" CssClass="dataTable-table" runat="server"
                                DataSourceID="CustomersSqlDataSource"
                                AllowPaging="True"
                                PageSize="2"
                                OnDataBound="CustomersGridView_DataBound"
                                EmptyDataText="No data available."
                                AllowSorting="True"
                                AutoGenerateColumns="False"
                                OnRowCreated="CustomersGridView_RowCreated"
                                SortedAscendingHeaderStyle-CssClass="bg-red"
                                DataKeyNames="BrandID"
                                OnRowDataBound="gvBrands_RowDataBound"
                                ShowFooter="True"
                                EnableViewState="False">


                                <%--          <Columns>
                                    <asp:BoundField DataField="BrandID"
                                        ReadOnly="true"
                                        HeaderText="ID"
                                        SortExpression="BrandID"
                                        HeaderStyle-Wrap="false"></asp:BoundField>

                                    <asp:TemplateField HeaderText="BrandName" SortExpression="BrandName">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BrandName") %>' >  
                                            </asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("BrandName") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Description" SortExpression="Description">
                                        <ItemTemplate>
                                            <%# Eval("Description") %>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="ddlTests" runat="server" CssClass="custom-select mx-2" AutoPostBack="true"
                                                DataSourceID="SqlDataSourceTest"
                                                DataTextField="TestName"
                                                DataValueField="TestID">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" Text="Delete"
                                                OnClientClick="return confirm('Are you sure?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>--%>

                                <Columns>


                                    <asp:TemplateField HeaderText="BrandID" SortExpression="BrandID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BrandID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("BrandID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="NewDiscontinued" runat="server" />
                                        </FooterTemplate>
                                    </asp:TemplateField>

                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" />
                                </Columns>

                                <HeaderStyle CssClass="table-header" />
                                <RowStyle CssClass="table-header-row" />

                                <SortedAscendingHeaderStyle CssClass="bg-red" />


                                <%-- Pagination --%>
                                <PagerTemplate>
                                    <div class="w-100 d-flex justify-content-between align-items-center">
                                        <div>
                                            <asp:Label ID="CurrentPageLabel" runat="server" />
                                        </div>
                                        <div style="text-align: right">
                                            <asp:Label ID="MessageLabel" runat="server" Text="Select a page:" CssClass="mr-2" />
                                            <asp:DropDownList ID="PageDropDownList" AutoPostBack="true" runat="server" CssClass="custom-select w-auto"
                                                OnSelectedIndexChanged="PageDropDownList_SelectedIndexChanged" />
                                        </div>
                                    </div>
                                </PagerTemplate>
                                <%-- /Pagination --%>
                            </asp:GridView>

                            <asp:SqlDataSource ID="CustomersSqlDataSource"
                                ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                                SelectCommand="Select BrandID, BrandName, Description from tblBrand"
                                DeleteCommand="DELETE FROM tblBrand WHERE BrandID=@BrandID;"
                                UpdateCommand="UPDATE tblBrand SET BrandName = @BrandName, Description = @Description WHERE (BrandID = @BrandID)"
                                runat="server" OnUpdating="CustomersSqlDataSource_Updating">
                                <DeleteParameters>
                                    <asp:Parameter Name="BrandID" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="BrandID" Type="Int32" />
                                    <asp:Parameter Name="BrandName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlDataSourceTest"
                                ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                                SelectCommand="Select TestID, TestName from tblTests" runat="server"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
