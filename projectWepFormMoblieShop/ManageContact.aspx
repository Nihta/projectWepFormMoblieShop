<%@ Page Title="Manage Contacts" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ManageContact.aspx.cs" Inherits="projectWepFormMoblieShop.ManageContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form id="formContact" runat="server">
        <div class="card mx-2 my-2">
            <div class="card-header">
                Manage contacts
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
                    </div>
                </div>
                <%-- /Table Header --%>

                <%--GridView--%>
                <asp:GridView ID="gvCategory" CssClass="dataTable-table"
                    DataSourceID="ContactsSqlDataSource"
                    DataKeyNames="ContactID"
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
                            DataField="ContactID" SortExpression="ContactID"></asp:BoundField>

                        <asp:TemplateField HeaderText="User name" SortExpression="ContactName" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("ContactName") %>' ID="LabelContactName"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User email" SortExpression="ContactEmail" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("ContactEmail") %>' ID="LabelContactEmail"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Subject" SortExpression="ContactSubject" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("ContactSubject") %>' ID="LabelContactSubject"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Message" SortExpression="ContactMessage" HeaderStyle-CssClass="">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("ContactMessage") %>' ID="LabelContactMessage"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--Actions--%>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-danger btn-sm"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--ContactName, ContactEmail, ContactSubject, ContactMessage--%>
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
                <asp:SqlDataSource ID="ContactsSqlDataSource"
                    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                    SelectCommand="select ContactID, ContactName, ContactEmail, ContactSubject, ContactMessage from tblContactUs"
                    DeleteCommand="DELETE FROM tblContactUs WHERE ContactID = @ContactID;"
                    runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="ContactID" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</asp:Content>
