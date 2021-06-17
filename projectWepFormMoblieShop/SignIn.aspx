<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="projectWepFormMoblieShop.SignIn" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>SignIn</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
</head>
<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container d-flex justify-content-center">
            <div class="col-md-4">
                <asp:Label ID="LabelWarning" runat="server"></asp:Label>
                <h4 class="card-title mb-3">Sign In</h4>
                <form id="formLogin" runat="server">
                    <div>
                        <div class="form-group">
                            <label for="TextBoxUserName">User name</label>
                            <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBoxPassWord">Password</label>
                            <asp:TextBox ID="TextBoxPassWord" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="BtnLogin" runat="server" Text="Sign In" CssClass="btn btn-primary btn-block mb-4" OnClick="BtnLogin_Click" />
                    </div>
                </form>
                <a href="CommingSoon.html" class="forgot-password-link">Forgot password?</a>

                <p>You don't have an account? <a href="SignUp.aspx" class="text-reset">Sign Up</a></p>
            </div>
        </div>
    </main>
</body>
</html>
