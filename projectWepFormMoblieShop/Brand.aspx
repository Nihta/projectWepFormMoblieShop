<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="projectWepFormMoblieShop.Brand" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Brand </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" />
    <style>
        .dataTable-table {
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
        }
    </style>


</head>
<body>
    <form id="formBrand" runat="server">
        <div class="container-fluid px-2 py-4">
            <div class="card">
                <div class="card-header">
                    Brand manager
                </div>

                <div class="card-body">
                    <%-- Table Header --%>
                    <div class="align-items-center d-flex justify-content-between mb-2">
                        <div class="d-flex align-items-center">
                            <span>Show</span>
                            <asp:DropDownList ID="DropDownListNumOfItemInPage" runat="server" CssClass="custom-select mx-2" AutoPostBack="true">
                                <asp:ListItem Value="5" Selected="True">5</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="25">25</asp:ListItem>
                                <asp:ListItem Value="50">50</asp:ListItem>
                            </asp:DropDownList>
                            <span style="white-space: nowrap">item / page</span>
                        </div>
                        <div class="d-flex flex-row align-items-center">
                            <button type="button" class="btn btn-primary mx-2 btn-modal btn-add" data-bs-toggle="modal" data-bs-target="#exampleModal">Add</button>
                            <asp:TextBox ID="TextBoxSearch" CssClass="form-control" TextMode="Search" runat="server">Search ...</asp:TextBox>
                        </div>
                    </div>
                    <%-- /Table Header --%>


                    <asp:GridView ID="gvBrands" runat="server"
                        CssClass="dataTable-table"
                        DataSourceID="CustomersSqlDataSource"
                        AllowPaging="True"
                        PageSize="2"
                        OnDataBound="CustomersGridView_DataBound"
                        EmptyDataText="No data available."
                        AllowSorting="True"
                        AutoGenerateColumns="False"
                        OnRowCreated="CustomersGridView_RowCreated"
                        SortedAscendingHeaderStyle-CssClass="bg-red"
                        DataKeyNames="BrandID">

                        <Columns>
                            <asp:BoundField DataField="brandid"
                                HeaderText="ID"
                                SortExpression="brandid"
                                HeaderStyle-Wrap="false"></asp:BoundField>
                            <asp:BoundField DataField="brandname"
                                HeaderText="Brand name"
                                HeaderStyle-Wrap="false"
                                SortExpression="brandname"></asp:BoundField>
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
                        SelectCommand="Select BrandID, BrandName from tblBrand"
                        DeleteCommand="DELETE FROM tblBrand WHERE BrandID=@BrandID;"
                        runat="server">
                        <DeleteParameters>
                            <asp:Parameter Name="BrandID" Type="Int32" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
