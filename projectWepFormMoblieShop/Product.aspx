<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="projectWepFormMoblieShop.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container product-detail mt-5">
        <h1 class="f24 f32md text-center mb-2">
            <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
        </h1>
        <p class="f16 text-center font-italic mb-4">
            <asp:Label ID="LabelCate" runat="server" Text="Label"></asp:Label>
        </p>
        <div class="row">
            <div class="col-12 col-md-6 mb-5">
                <asp:Label ID="LabelImage" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="col-12 col-md-6 px-md-4">
                <div class="form-group">
                    <label class="f16 fw500 mb-2" for="fieldQuantity">Quantity </label>
                    <select type="text" class="form-control f14 custom__select" id="fieldQuantity">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>

                <p class="position-relative mt-2">
                    <span class="position-absolute f14">$</span><span class="f32 pl-2">
                        <asp:Label ID="LabelTotalAmount" runat="server" Text="Label"></asp:Label>
                    </span>
                </p>

                <asp:Button CssClass="btn btn-blue text-uppercase w-100" ID="Button1" runat="server" Text="add to cart" OnClick="Button1_Click" />


                <hr class="mt-4 d-block d-md-none">
            </div>
            <div class="col-12 col-md-6">
                <h5 class="f14 fw600 ls1d5 mb-2 text-uppercase">Product Description</h5>
                <p class="f16 mb-4 text-justify">
                    <asp:Label ID="LabelDesc" runat="server" Text="Label"></asp:Label>
                </p>

                <h5 class="f14 fw600 ls1d5 mb-2 text-uppercase">about this item</h5>
                <ul class="mb-4">
                    <li class="f16 mb-3">Brand: <a class="color-blue color-blue-hover text-decoration-none" href="#">
                        <asp:Label ID="LabelBrand" runat="server" Text="Label"></asp:Label>
                    </a>
                    </li>
                    <li class="f16 mb-3">Category: <a class="color-blue color-blue-hover text-decoration-none" href="#">
                        <asp:Label ID="LabelCategory2" runat="server" Text="Label"></asp:Label>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container same-product my-5">
        <p class="f24 f32md text-center mb-4">You might also like</p>

        <div class="row">
            <!-- item -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                    <div class="same-product__image-container">
                        <a href="#">
                            <img src="https://source.unsplash.com/weekly?xiaomi-mobile" class="card-img-top" alt="*">
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <span class="same-product__tag">xiaomi</span>
                        <a class="card-title text-decoration-none" href="#">
                            <h5 class="f16 text-left text-md-center mt-2 ">Mi 11</h5>
                        </a>
                        <p class="f14 font-italic text-left text-md-center">
                            Moblie
                        </p>
                        <p class="f14 text-left text-md-center">$1000</p>
                    </div>
                </div>
            </div>
            <!-- item -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                    <div class="same-product__image-container">
                        <a href="#">
                            <img src="https://source.unsplash.com/weekly?xiaomi-mobile" class="card-img-top" alt="*">
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <span class="same-product__tag">xiaomi</span>
                        <a class="card-title text-decoration-none" href="#">
                            <h5 class="f16 text-left text-md-center mt-2 ">Mi 11</h5>
                        </a>
                        <p class="f14 font-italic text-left text-md-center">
                            Moblie
                        </p>
                        <p class="f14 text-left text-md-center">$1000</p>
                    </div>
                </div>
            </div>
            <!-- item -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                    <div class="same-product__image-container">
                        <a href="#">
                            <img src="https://source.unsplash.com/weekly?xiaomi-mobile" class="card-img-top" alt="*">
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <span class="same-product__tag">xiaomi</span>
                        <a class="card-title text-decoration-none" href="#">
                            <h5 class="f16 text-left text-md-center mt-2 ">Mi 11</h5>
                        </a>
                        <p class="f14 font-italic text-left text-md-center">
                            Moblie
                        </p>
                        <p class="f14 text-left text-md-center">$1000</p>
                    </div>
                </div>
            </div>
            <!-- item -->
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                    <div class="same-product__image-container">
                        <a href="#">
                            <img src="https://source.unsplash.com/weekly?xiaomi-mobile" class="card-img-top" alt="*">
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <span class="same-product__tag">xiaomi</span>
                        <a class="card-title text-decoration-none" href="#">
                            <h5 class="f16 text-left text-md-center mt-2 ">Mi 11</h5>
                        </a>
                        <p class="f14 font-italic text-left text-md-center">
                            Moblie
                        </p>
                        <p class="f14 text-left text-md-center">$1000</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
