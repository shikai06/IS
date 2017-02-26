<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sample_IS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a href="../" class="navbar-brand">Bootswatch</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li>
              <a href="../help/">Help</a>
            </li>
            <li>
              <a href="http://news.bootswatch.com">Blog</a>
            </li>
          </ul>
        </div>
      </div>
     </div>

    <div class ="container">
    <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
                         <form id="form1" runat="server" class="form-horizontal">
                         <fieldset>
                        <div>
                        <div class="form-group">
                              <asp:Label ID="FirstName" runat="server" Text="First Name" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="tbFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                              <asp:Label ID="LastName" runat="server" Text="Last Name" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="tbLastName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Address" runat="server" Text="Address" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Gender" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-6">
                                <asp:DropDownList ID="ddGender" runat="server" CssClass="form-control">
                                       <asp:ListItem>Male</asp:ListItem>
                                       <asp:ListItem>Female</asp:ListItem>
                                   </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                          <div class="col-lg-6 col-lg-offset-2">
                            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="btn btn-primary" /> 
                          </div>
                        </div>
                          </div>
                              </fieldset>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover">
              
                        </asp:GridView>
                        </form>
           </div>
          </div>
        </div>
      </div>
    </div>
   
</body>
</html>

