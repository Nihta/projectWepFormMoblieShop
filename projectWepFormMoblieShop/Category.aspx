<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="projectWepFormMoblieShop.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style>
        .header-style-id {
            width: 30px;
        }

        .w-30 {
            width: 30%;
        }

        .header-style-commands {
            width: 100px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <form id="formCategorys" runat="server">
        <div class="card mx-2 my-2">
            <div class="card-header">
                Category manager
            </div>
            <div class="card-body">
                <asp:GridView ID="gvBrands" CssClass="dataTable-table"
                    DataSourceID="CategorysSqlDataSource"
                    EmptyDataText="No data available"
                    AllowPaging="True"
                    PageSize="2"
                    AllowSorting="True"
                    DataKeyNames="CategoryID"
                    AutoGenerateColumns="false"
                    SortedAscendingHeaderStyle-CssClass="asc"
                    SortedDescendingHeaderStyle-CssClass="desc"
                    runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="ID" ReadOnly="true" HeaderStyle-CssClass="header-style-id"
                            DataField="CategoryID"
                            SortExpression="CategoryID"></asp:BoundField>

                        <asp:TemplateField HeaderText="Category name" SortExpression="CategoryName" HeaderStyle-CssClass="w-30">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("CategoryName") %>' ID="LabelCateName"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("CategoryName") %>' ID="TxtCateName" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description" SortExpression="CategoryDescription" HeaderStyle-CssClass="w-50">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("CategoryDescription") %>' ID="LabelCateDesc"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox Text='<%# Bind("CategoryDescription") %>' ID="TxtCateDesc" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ShowHeader="False">
                            <HeaderStyle CssClass="header-style-commands"></HeaderStyle>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm"></asp:LinkButton>
                                <asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-secondary btn-sm"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm"></asp:LinkButton>
                                <asp:LinkButton runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure?');" CausesValidation="False" ID="LinkButton2" CssClass="btn btn-outline-danger btn-sm"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>



                </asp:GridView>

                <asp:SqlDataSource ID="CategorysSqlDataSource"
                    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True"
                    SelectCommand="Select CategoryID, CategoryName, CategoryDescription from tblCategorys"
                    DeleteCommand="DELETE FROM tblCategorys WHERE CategoryID=@CategoryID;"
                    UpdateCommand="UPDATE tblCategorys SET CategoryName = @CategoryName, CategoryDescription = @CategoryDescription WHERE (CategoryID = @CategoryID)"
                    runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="CategoryDescription" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>

</asp:Content>
