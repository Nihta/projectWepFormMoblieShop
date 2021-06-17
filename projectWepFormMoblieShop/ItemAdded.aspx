<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemAdded.aspx.cs" Inherits="projectWepFormMoblieShop.ItemAdded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid cart-added py-4">
        <div class="container py-3">
            <div class="row text-md-center text-left">
                <div class="col-12 col-md-6">
                    <h1 class="f24 mb-3">Item added to cart!</h1>
                    <div class="d-flex flex-row flex-md-column align-items-center">
                        <div class="mr-4 mr-md-0">
                            <div class="cart-added__img-container h-auto">
                                <img class="img-fluid"
                                    src="https://source.unsplash.com/weekly?samsung"
                                    alt="*">
                                <div class="cart-added__icon-check d-flex justify-content-center align-items-center">
                                    <i class="f10 fa fa-check"></i>
                                </div>
                            </div>
                        </div>
                        <div class="mt-md-3">
                            <p class="f16 mb-1 text-capitalize">Samsung J2</p>
                            <%--<p class="f12 font-italic text-capitalize">subltitle</p>--%>
                            <p class="f16 fw600 mb-2">250</p>
                            <div class="f14 mb-1">
                                Quantity: 1 <a class="custom-link text-decoration-none" href="#">Change</a>
                            </div>
                        </div>
                    </div>

                    <hr class="d-block d-md-none" />
                </div>

                <div class="col-12 col-md-6">
                    <div class="custom-border-md-left px-5">
                        <h2 class="f24 text-capitalize text-left mb-2">Cart Summary</h2>
                        <div class="d-flex justify-content-between f16 mb-3">
                            <span>1 item in cart</span>
                            <a class="custom-link text-decoration-none" href="#">Edit cart</a>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between pt-2 pb-3">
                            <span>Subtotal</span>
                            <span>$25</span>
                        </div>
                        <button class="btn btn-primary custom-btn text-uppercase w-100" type="submit">check out</button>
                    </div>
                </div>

                <div class="col-12 col-md-6">
                    <div class="mt-3 text-center">
                        <a class="custom-link text-decoration-none f14" href="#">Continue Shopping</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
