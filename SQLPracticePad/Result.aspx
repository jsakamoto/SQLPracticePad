<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="SQLPracticePad.Result" ValidateRequest="false" ViewStateMode="Disabled" %>
<form id="form1" runat="server" enableviewstate="false">

<div class="alert alert-error" id="errmsgBox" runat="server" visible="false">
    <h4>Error.</h4>
    <div runat="server" id="errmsg">
    </div>
</div>

<div class="alert alert-success" runat="server" id="infomsg" visible="false">Success</div>

<div>
    <asp:gridview id="GridView1" runat="server" CssClass="table table-bordered table-striped">
    </asp:gridview>    
</div>
</form>
