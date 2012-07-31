<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="SQLPracticePad.Result" ValidateRequest="false" %>
<form id="form1" runat="server" enableviewstate="false">
<div>
    <asp:PlaceHolder runat="server" ID="phSuccess" Visible="false">
        <span class="label label-success">Success</span>
    </asp:PlaceHolder>
    <asp:gridview id="GridView1" runat="server" CssClass="table table-bordered table-striped">
    </asp:gridview>    
</div>
</form>
