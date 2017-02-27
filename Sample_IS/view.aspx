<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Sample_IS.view" %>

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
          <a href="index.aspx" class="navbar-brand">IS</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
             <li>
              <a href="index.aspx">Home</a>
            </li>
            <li>
              <a href="view.aspx">View</a>
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
          <div class="col-lg-12">
            <div class="well bs-component">
                         <form id="form1" runat="server" class="form-horizontal">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        </asp:GridView>
                        </form>
           </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
