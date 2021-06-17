<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="projectWepFormMoblieShop.SignUp" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="theme/styles.css" />
</head>
<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container d-flex justify-content-center">
            <div class="col-md-4">
                <asp:Label ID="LabelWarning" runat="server"></asp:Label>
                <h4 class="card-title mb-3 f24 text-capitalize">Sign Up</h4>

                <form id="formSignUp" runat="server">
                    <div>
                        <div class="form-group">
                            <label class="f16 text-capitalize" for="TextBoxFullName">Full name</label>
                            <asp:TextBox ID="TextBoxFullName" runat="server" class="form-control custom__select" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f16 text-capitalize" for="TextBoxUserName">User name <span class="color-red">
                                <abbr title="required">*</abbr></span></label>
                            <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control custom__select" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f16 text-capitalize" for="TextBoxPassWord">Password  <span class="color-red">
                                <abbr title="required">*</abbr></span></label>
                            <asp:TextBox ID="TextBoxPassWord" runat="server" class="form-control custom__select" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="f16 text-capitalize" for="TextBoxPassWord">Confirm password  <span class="color-red">
                                <abbr title="required">*</abbr></span></label>
                            <asp:TextBox ID="TextBoxPassWordRepeat" runat="server" class="form-control custom__select" TextMode="Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="BtnSignup" runat="server" Text="Sign Up" CssClass="btn-primary w-100 custom-btn mb-4 text-uppercase" OnClick="BtnSignup_Click" />
                    </div>
                </form>

                <p class="f16">Do you have an account? <a href="SignIn.aspx" class="custom-link text-decoration-none">Sign In</a></p>
            </div>
        </div>
    </main>
</body>
</html>
