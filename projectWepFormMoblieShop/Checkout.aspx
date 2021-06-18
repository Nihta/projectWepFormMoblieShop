<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="projectWepFormMoblieShop.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container check-out mb-5 mt-5">
        <div class="row flex-column-reverse flex-md-row">
            <div class="col-12 col-md-6">
                <!-- shipping address -->
                <div>
                    <h3 class="f24 mb-3 text-capitalize">shipping address</h3>
                    <div class="form-row">
                        <div class="form-group col-12 col-md-6">
                            <label class="f14 text-capitalize mb-1" for="fieldFirstName">
                                First Name
                            </label>
                            <input type="text" class="form-control custom__select f14" id="fieldFirstName">
                        </div>
                        <div class="form-group col-12 col-md-6">
                            <label class="f14 text-capitalize mb-1" for="fieldLastName">
                                Last Name
                            </label>
                            <input type="text" class="form-control custom__select f14" id="fieldLastName">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-12 col-md-6">
                            <label class="f14 text-capitalize mb-1" for="fieldFirstName">
                                Phone              <span class="color-red">
                    <abbr title="required">*</abbr></span>
                            </label>
                            <input type="text" class="form-control custom__select f14" id="fieldFirstName">
                        </div>
                        <div class="form-group col-12 col-md-6">
                            <label class="f14 text-capitalize mb-1" for="fieldLastName">
                                Email
                            </label>
                            <input type="text" class="form-control custom__select f14" id="fieldLastName">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label class="f14 text-capitalize mb-1" for="fieldFirstName">
                                Full Street Address
                <span class="color-red">
                    <abbr title="required">*</abbr></span>
                            </label>
                            <input type="text" class="form-control custom__select f14" id="fieldFirstName">
                        </div>
                    </div>
                </div>
                <hr class="mt-1 mb-3">
                <button type="submit" class="btn btn-primary custom-btn text-uppercase f14">continue</button>
            </div>
            <!-- Your Cart -->
            <div class="col-12 col-md-6 mb-5">
                <h3 class="f24 mb-3 text-capitalize">your cart</h3>

                <div class="check-out__cart-item d-flex justify-content-between mb-3">
                    <div class="text-capitalize">
                        <p class="f16 mb-0">1 x Samsung J2</p>
                    </div>
                    <p class="f16">$50.00</p>
                </div>

                <div class="check-out__cart-item d-flex justify-content-between mb-3">
                    <div class="text-capitalize">
                        <p class="f16 mb-0">1 x I Phone 6</p>
                    </div>
                    <p class="f16">$135.00</p>
                </div>
                <hr>
                <div class="d-flex justify-content-end f18 fw600">
                    <span class="text-right mr-5 text-capitalize">Total</span>
                    <span>$185.00</span>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
