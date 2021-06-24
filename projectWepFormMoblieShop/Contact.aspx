<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="projectWepFormMoblieShop.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container contact mb-5">
        <h2 class="f24 text-capitalize text-center my-4">Contact</h2>

        <%-- Alert --%>
        <asp:Panel ID="PanelAlert" CssClass="alert alert-warning alert-dismissible fade show my-3" runat="server" Visible="false">
            <strong class="me-2">Warning!</strong>
            <asp:Label ID="LabelAlertMess" runat="server" Text="Label"></asp:Label>.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
        </asp:Panel>
        <asp:Panel ID="PanelInfo" CssClass="alert alert-info alert-dismissible fade show my-3" runat="server" Visible="false">
            <strong class="me-2">Info!</strong>
            <asp:Label ID="LabelDone" runat="server" Text="Label">
                Submitted successfully!
            </asp:Label>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
        </asp:Panel>

        <img src="https://source.unsplash.com/weekly?moblie-shop" alt="moblie">
        <div class="row">
            <div class="col-12 col-md-6">
                <div class="p-5 pr-0">
                    <h3 class="f24 text-capitalize mb-3">Our Store</h3>
                    <h5 class="f14 fw600 text-uppercase">Address</h5>
                    <address class="f16">
                        Nihta 68 shop
          <br>
                        123 Le Duan, Vinh<br>
                        Vinh, Nghe An
                    </address>
                    <h5 class="f14 fw600 text-uppercase">Store phone</h5>
                    <p class="f16">(+84) 123 456 789</p>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="p-5 pl-0">
                    <h3 class="f24 text-capitalize mb-3">Contact us</h3>
                    <div>
                        <div class="form-group">
                            <label class="f14 mb-1" for="TxtName">
                                Name
              <span class="color-red">
                  <abbr title="required">*</abbr></span>
                            </label>
                            <%-- Name --%>
                            <asp:TextBox ID="TxtName" CssClass="form-control custom__select f14" runat="server" MaxLength="50"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f14 mb-1" for="TxtEmail">
                                Email
              <span class="color-red">
                  <abbr title="required">*</abbr></span>
                            </label>
                            <%-- Email --%>
                            <asp:TextBox ID="TxtEmail" CssClass="form-control custom__select f14" runat="server" MaxLength="50"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f14 mb-1" for="TxtSubject">
                                Subject
              <span class="color-red">
                  <abbr title="required">*</abbr></span>
                            </label>
                            <%-- Subject --%>
                            <asp:TextBox ID="TxtSubject" CssClass="form-control custom__select f14" runat="server" MaxLength="50"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f14 mb-1" for="TxtMessage">
                                Message
              <span class="color-red">
                  <abbr title="required">*</abbr></span>
                            </label>
                            <%-- TxtMessage --%>
                            <asp:TextBox ID="TxtMessage" CssClass="form-control custom__select f14" runat="server" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <asp:Button ID="BtnAdd" CssClass="btn btn-primary custom-btn text-uppercase f14" Text="send" runat="server" OnClick="BtnAdd_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
