<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="projectWepFormMoblieShop.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container contact mb-5">
    <h2 class="f24 text-capitalize text-center my-4">Contact</h2>
    <img src="https://source.unsplash.com/weekly?moblie" alt="moblie">
    <div class="row">
      <div class="col-12 col-md-6">
        <div class="p-5 pr-0">
          <h3 class="f24 text-capitalize mb-3">Our Store</h3>
          <h5 class="f14 fw600 text-uppercase">Address</h5>
          <address class="f16">Nihta 68 shop <br>123 Le Duan, Vinh<br>Vinh, Nghe An
          </address>
          <h5 class="f14 fw600 text-uppercase">Store phone</h5>
          <p class="f16">(+84) 123 456 789</p>
        </div>
      </div>
      <div class="col-12 col-md-6">
        <div class="p-5 pl-0">
          <h3 class="f24 text-capitalize mb-3">Contact us</h3>
          <form id="formContact" runat="server">
            <div class="form-group">
              <label class="f14 mb-1" for="fieldName">Name
                <span class="color-red"><abbr title="required">*</abbr></span>
              </label>
              <input type="text" class="form-control custom__select f14" id="fieldName">
            </div>
            <div class="form-group">
              <label class="f14 mb-1" for="fieldEmail">Email
                <span class="color-red"><abbr title="required">*</abbr></span>
              </label>
              <input type="email" class="form-control custom__select f14" id="fieldEmail">
            </div>
            <div class="form-group">
              <label class="f14 mb-1" for="fieldSubject">Subject
                <span class="color-red"><abbr title="required">*</abbr></span>
              </label>
              <input type="text" class="form-control custom__select f14" id="fieldSubject">
            </div>
            <div class="form-group">
              <label class="f14 mb-1" for="fieldMessage">Message
                <span class="color-red"><abbr title="required">*</abbr></span>
              </label>
              <textarea rows="4" class="form-control custom__select f14" id="fieldMessage"></textarea>
            </div>
            <button type="submit" class="btn btn-primary custom-btn text-uppercase f14">send</button>
          </form>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
