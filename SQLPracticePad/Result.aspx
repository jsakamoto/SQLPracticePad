<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="SQLPracticePad.Result" ValidateRequest="false" %>
<form id="form1" runat="server" enableviewstate="false">
<div class="res-msg alert alert-info" runat="server" visible="false" id="InfoMsg">
    WOW
</div>
<div>
    <asp:gridview id="GridView1" runat="server" CssClass="table table-bordered table-striped">
    </asp:gridview>    
</div>
</form>
