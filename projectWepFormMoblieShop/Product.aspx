<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="projectWepFormMoblieShop.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container product-detail mt-5">
  <h1 class="f24 f32md text-center mb-2">Samsung J2</h1>
  <p class="f16 text-center font-italic mb-4">Mobile</p>
  <div class="row">
    <div class="col-12 col-md-6 mb-5">
      <img class="product-detail__img" src="https://source.unsplash.com/weekly?samsung" alt="*" />
    </div>
    <div class="col-12 col-md-6 px-md-4">
      <form>
        <div class="form-group">
          <label class="f16 fw500 mb-2" for="fieldQuantity">Quantity </label>
          <select type="text" class="form-control f14 custom__select" id="fieldQuantity">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10+</option>

          </select>
        </div>

        <p class="position-relative mt-2">
          <span class="position-absolute f14">$</span><span class="f32 pl-2">25</span>
        </p>

        <button type="submit" class="btn btn-blue text-uppercase w-100">
          add to cart
        </button>

      </form>

      <hr class="mt-4 d-block d-md-none">
    </div>
    <div class="col-12 col-md-6">
      <h5 class="f14 fw600 ls1d5 mb-2 text-uppercase">Product Description</h5>
      <p class="f16 mb-4 text-justify">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
        laborum.
      </p>

      <h5 class="f14 fw600 ls1d5 mb-2 text-uppercase">about this item</h5>
      <ul class="mb-4">
        <li class="f16 mb-3">Brand: <a class="color-blue color-blue-hover text-decoration-none" href="#">Samsung</a>
        </li>
        <li class="f16 mb-3">Category: <a class="color-blue color-blue-hover text-decoration-none" href="#">Moblie</a>
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
