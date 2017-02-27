<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sample_IS.Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <div class="jumbotron">
    <div class="row">
        <div class="col-md-8">
                <div class="form-horizontal">
                    <h4>User log in.</h4>
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">User name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="tbUsername" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" href="index.aspx" Text="Log in" CssClass="btn btn-default" OnClick="Unnamed3_Click" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" href="Register.aspx" ViewStateMode="Disabled">Register</asp:HyperLink>
                    if you don't have an account.
                </p>
        </div>
    </div>
    </div>
</asp:Content>

