<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="projectWepFormMoblieShop.SignUp" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
</head>
<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container d-flex justify-content-center">
            <div class="col-md-4">
                <asp:Label ID="LabelWarning" runat="server"></asp:Label>
                <h4 class="card-title mb-3">Sign Up</h4>

                <form id="formSignUp" runat="server">
                    <div>
                        <div class="form-group">
                            <label for="TextBoxFullName">Full name</label>
                            <asp:TextBox ID="TextBoxFullName" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBoxUserName">User name</label>
                            <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBoxPassWord">Password</label>
                            <asp:TextBox ID="TextBoxPassWord" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBoxPassWord">Confirm password</label>
                            <asp:TextBox ID="TextBoxPassWordRepeat" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <asp:Button ID="BtnSignup" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block mb-4" OnClick="BtnSignup_Click" />
                    </div>
                </form>

                <p>Do you have an account? <a href="SignIn.aspx" class="text-reset">Sign In</a></p>
            </div>
        </div>
    </main>
</body>
</html>
