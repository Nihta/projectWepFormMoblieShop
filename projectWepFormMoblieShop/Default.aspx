<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projectWepFormMoblieShop._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid store-category f14 text-uppercase">
        <div class="container d-flex justify-content-start">
            <div class="store-category__item">shop all</div>
            <div class="store-category__item active">mobile</div>
            <div class="store-category__item">changer</div>
            <div class="store-category__item">more</div>
        </div>
    </div>

    <div>
        <div class="container-fluid py-3 filter">
            <div class="container">
                <div class="d-flex justify-content-start align-items-center">
                    <div class="mr-3 f14 fw600">Filters</div>

                    <div class="dropdown">
                        <div class="filter__item f14 text-uppercase dropdown-toggle" type="button" id="dropdownMenuButton"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            brand
                        </div>
                        <div class="dropdown-menu f14" aria-labelledby="dropdownMenuButton">
                            <h6 class="dropdown-header">Select all that apply</h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>samsung</span>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>xiaomi</span>
                            </a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <div class="filter__item f14 text-uppercase dropdown-toggle" type="button" id="dropdownMenuButton"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Price
                        </div>
                        <div class="dropdown-menu f14" aria-labelledby="dropdownMenuButton">
                            <h6 class="dropdown-header">Select all that apply</h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>Less 100$</span>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>100$ to 300$</span>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>300$ to 1000$</span>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <input type="checkbox" name="spec-filter-option-42" id="spec-filter-option-42" value="Decaf"
                                    autocomplete="off" class="mr-2">
                                <span>Above 1000$</span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="container product mt-4">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?samsung" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">Hot</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?samsung" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">new</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?samsung" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">Sale</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?samsung" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">new</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?samsung" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">new</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card w-100 d-flex flex-row flex-md-column mb-4">
                        <div class="product__image-container">
                            <a href="#">
                                <img src="https://source.unsplash.com/weekly?oppo" class="card-img-top" alt="*">
                            </a>
                        </div>
                        <div class="card-body p-2">
                            <span class="product__tag">new</span>
                            <a class="card-title text-decoration-none" href="#">
                                <h5 class="f16 text-left text-md-center mt-2">Samsung J2</h5>
                            </a>
                            <p class="f14 font-italic text-left text-md-center">
                                Mobile
                            </p>
                            <p class="f14 text-left text-md-center">$100</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <div class="container feature mb-5">
        <hr>
        <div class="row no-gutters">
            <div class="col-12 col-lg-4">
                <div class="feature__item d-flex py-4 justify-content-center align-items-center flex-column flex-lg-row text-center text-lg-left">
                    <img class="mr-2" src="images/car.svg" alt="car">
                    <div>
                        <h4 class="f16 text-uppercase font-weight-bold mb-1">free shipping</h4>
                        <p class="f14 text-capitalize mb-0">free shipping world wide</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="feature__item feature__item--center d-flex py-4 justify-content-center align-items-center flex-column flex-lg-row text-center text-lg-left">
                    <img class="mr-2" src="images/time.svg" alt="time">
                    <div>
                        <h4 class="f16 text-uppercase font-weight-bold mb-1">24 X 7 service</h4>
                        <p class="f14 text-capitalize mb-0">online service for new customer</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="feature__item d-flex py-4 justify-content-center align-items-center flex-column flex-lg-row text-center text-lg-left">
                    <img class="mr-2" src="images/speaker.svg" alt="speaker">
                    <div>
                        <h4 class="f16 text-uppercase font-weight-bold mb-1">festival offer</h4>
                        <p class="f14 text-capitalize mb-0">new online special festival offer</p>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>
</asp:Content>
