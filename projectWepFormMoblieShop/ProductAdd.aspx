<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="projectWepFormMoblieShop.ProductAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <div class="container-fluid mx-3">
        <h4 class="text-center">Add new product</h4>

        <form id="FormProduct" class="row g-3" runat="server">
            <%-- ProductName --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="TextProductName" class="form-label">Name (*):</label>
                <asp:TextBox ID="TextProductName" MaxLength="50" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
            </div>

            <%-- ProductPrice --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="TextProductPrice" class="form-label">Price (*): </label>
                <asp:TextBox ID="TextProductPrice" MaxLength="9" TextMode="SingleLine" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
            </div>


            <%-- BrandID --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="ddlBrand" class="form-label">Brand (*): </label>
                <asp:DropDownList ID="ddlBrand" runat="server" CssClass="form-select form-select-sm">
                </asp:DropDownList>
            </div>


            <%-- CategoryID --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="ddlCategory" class="form-label">Category (*): </label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select form-select-sm">
                </asp:DropDownList>
            </div>


            <%-- ProductDesc --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="TextProductDesc" class="form-label">Desc: </label>
                <asp:TextBox ID="TextProductDesc" TextMode="MultiLine" MaxLength="100" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
            </div>

            <%-- MainImage --%>
            <div class="col-12 col-md-6 col-lg-3">
                <label for="FileUpload" class="form-label">Desc: </label>
                <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control form-control-sm" />
            </div>

            <div class="col-12">
                <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" CssClass="btn btn-sm btn-primary me-2 px-5" />
            </div>
        </form>

    </div>
</asp:Content>
