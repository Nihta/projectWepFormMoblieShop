<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="projectWepFormMoblieShop.SignIn" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>SignIn</title>
    <link rel="stylesheet" href="theme/styles.css" />
</head>
<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container d-flex justify-content-center">
            <div class="col-md-4">
                <asp:Label ID="LabelWarning" runat="server"></asp:Label>
                <h4 class="card-title mb-3 f24 text-capitalize">sign in</h4>
                <form id="formSignIn" runat="server">
                    <div>
                        <div class="form-group">
                            <label class="f16 text-capitalize" for="TextBoxUserName">User name <span class="color-red">
                                <abbr title="required">*</abbr></span></label>
                            <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control custom__select" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBoxPassWord">Password <span class="color-red">
                                <abbr title="required">*</abbr></span></label>
                            <asp:TextBox ID="TextBoxPassWord" runat="server" class="form-control custom__select" TextMode="Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="BtnLogin" runat="server" Text="Sign In" CssClass="btn-primary w-100 custom-btn mb-4 text-uppercase" OnClick="BtnLogin_Click" />
                    </div>
                </form>
                <a href="CommingSoon.html" class="custom-link text-decoration-none">Forgot password?</a>
                <p class="f16">
                    You don't have an account? <a href="SignUp.aspx" class=" custom-link text-decoration-none">Sign Up</a>
                </p>
            </div>
        </div>
    </main>
</body>
</html>
