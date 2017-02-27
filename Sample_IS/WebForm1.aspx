<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sample_IS.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="form-horizontal">
        <h4>Senders Details</h4>
        <hr />
         <asp:Panel ID="pnlFormFields" runat="server">
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">First name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbFirstName" CssClass="form-control" />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Last name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbLastName" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
             <asp:Label runat="server" CssClass="col-lg-2 control-label">Number</asp:Label>
             <div class="col-lg-10">
                <asp:TextBox ID="tbNumber" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
          </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbAddress" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
           <div class="col-lg-6 col-lg-offset-2">
              <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="btn btn-primary" /> 
           </div>
        </div>
       </asp:Panel>

         <asp:Panel ID="pnlThankYouMessage" runat="server" Visible="False">
            <div class="alert alert-dismissible alert-success">
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>Successfully Added!!</strong>
            </div>
        </asp:Panel>
    </div>
   
</asp:Content>
