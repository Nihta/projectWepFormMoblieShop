<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="projectWepFormMoblieShop.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container cart my-5">
        <div class="row flex-column-reverse flex-md-row">
            <div class="col-md-7">
                <div class="container-fluid cart__list-item">
                    <!-- List header -->
                    <div class="row">
                        <div class="col-12 col-md-7"><span class="f24 text-capitalize">shopping cart</span></div>
                        <div class="col-3 d-none d-md-block"><span class="f14 text-capitalize">quantity</span></div>
                        <div class="col-2 d-none d-md-block"><span class="f14 text-capitalize">price</span></div>
                    </div>
                    <hr class="mb-0 d-none d-md-block">

                    <!-- Cart item -->
                    <div class="cart__item">
                        <div class="row align-items-center">
                            <div class="col-md-2 col-3 mb-4">
                                <div class="mh-100">
                                    <img width="105" class="img-fluid" src="https://source.unsplash.com/weekly?samsung" alt="item">
                                </div>
                            </div>

                            <div class="col-md-5 col-9 mb-4">
                                <div class="d-flex flex-column h-100 justify-content-center">
                                    <a class="custom-text-link f16" href="#">Samsung J2</a>
                                    <p class="f12 font-italic mb-0">Mobile</p>
                                    <a class="custom-link f14 fw500 mt-1" href="#">Remove item</a>
                                </div>
                            </div>

                            <div class="col-md-3 col-3">
                                <select class="form-control custom__select" id="selectQua">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10+</option>
                                </select>
                            </div>

                            <div class="col-md-2 col-9">
                                <p class="f16 fw600 text-md-left text-right mb-0 pr-0">$35</p>
                            </div>
                        </div>
                    </div>

                    <!-- Cart item -->
                    <div class="cart__item">
                        <div class="row align-items-center">
                            <div class="col-md-2 col-3 mb-4">
                                <div class="mh-100">
                                    <img width="105" class="img-fluid" src="https://source.unsplash.com/weekly?iphone6" alt="item">
                                </div>
                            </div>

                            <div class="col-md-5 col-9 mb-4">
                                <div class="d-flex flex-column h-100 justify-content-center">
                                    <a class="custom-text-link f16" href="#">Iphone 6</a>
                                    <p class="f12 font-italic mb-0">Mobile</p>
                                    <a class="custom-link f14 fw500 mt-1" href="#">Remove item</a>
                                </div>
                            </div>

                            <div class="col-md-3 col-3">
                                <select class="form-control custom__select" id="selectQtt">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10+</option>
                                </select>
                            </div>

                            <div class="col-md-2 col-9">
                                <p class="f16 fw600 text-md-left text-right mb-0 pr-0">$35</p>
                            </div>
                        </div>
                    </div>

                    <!-- Empty cart -->
                    <div class="row mt-4">
                        <div class="col">
                            <a class="custom-link f16" href="#">Empty your cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="custom-card ml-md-5 cart__check-out my-4 my-mt-0 mb-3">
                    <p class="f16 mb-2">Order Subtotal (2 items)</p>
                    <p class="f48 fw600">$70</p>
                    <a href="Checkout.aspx" class="btn btn-primary w-100 custom-btn text-uppercase" >check out</a>
                    <p class="mt-2 mb-0"><a class="custom-link text-capitalize" href="#">continue shopping</a></p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
