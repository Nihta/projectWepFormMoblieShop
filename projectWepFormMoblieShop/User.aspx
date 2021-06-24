<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="projectWepFormMoblieShop.User" %>

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
                    DataSourceID="UsersSqlDataSource"
                    DataKeyNames="UserID"
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
                            DataField="UserID" SortExpression="UserID"></asp:BoundField>

                        <asp:TemplateField HeaderText="User name" SortExpression="UserName" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("UserName") %>' ID="LabelUserName"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("UserName") %>' ID="TxtUserName" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email" SortExpression="UserEmail" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("UserEmail") %>' ID="LabelUserEmail"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("UserEmail") %>' ID="TxtUserEmail" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Full name" SortExpression="UserFullName" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("UserFullName") %>' ID="LabelUserFullName"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("UserFullName") %>' ID="TxtUserFullName" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Phone number" SortExpression="UserName" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("UsePhone") %>' ID="LabelUsePhone"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("UsePhone") %>' ID="TxtUsePhone" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <%-- 0 = admin / 1 = customer --%>
                        <asp:TemplateField HeaderText="Role" SortExpression="UserRole" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Eval("UserRole").ToString() == "0" ? "Admin" : "Customer" %>' ID="LabelUserRole"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("UserRole") %>' ID="TxtUserRole" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
<%--                                <asp:DropDownList ID="ddlUserRole" runat="server"  CssClass="form-select form-select-sm" >
                                    <asp:ListItem Value="0">Admin</asp:ListItem>
                                    <asp:ListItem Value="1">Customer</asp:ListItem>
                                </asp:DropDownList>--%>
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
                <asp:SqlDataSource ID="UsersSqlDataSource"
                    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                    SelectCommand="select UserID, UserName, UserPassWord, UserEmail, UserRole, UsePhone, UserFullName from tblUsers;"
                    DeleteCommand="DELETE FROM tblUsers WHERE UserID = @UserID;"
                    UpdateCommand="UPDATE tblUsers SET UserName = @UserName, UserEmail = @UserEmail, UserRole = @UserRole, UsePhone = @UsePhone, UserFullName = @UserFullName WHERE (UserID = @UserID)"
                    runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </DeleteParameters>

                    <UpdateParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="UserRole" Type="Int32" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserPassWord" Type="String" />
                        <asp:Parameter Name="UserEmail" Type="String" />
                        <asp:Parameter Name="UsePhone" Type="String" />
                        <asp:Parameter Name="UserFullName" Type="String" />
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

    <script>

        $("#lastname").html = "ok";

    </script>

</asp:Content>
