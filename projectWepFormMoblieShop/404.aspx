<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="projectWepFormMoblieShop._404" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>404</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
</head>
<body>
    <div class="container min-vh-100 align-items-center container d-flex justify-content-center min-vh-100">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="text-center mt-4">
                    <img class="mb-4 img-error" src="images/error-404.svg" />
                    <p class="lead">This requested URL was not found on this server.</p>

                    <a class="btn btn-success" href="/">
                        <i class="fas fa-arrow-left me-1"></i>
                        Return to home
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
