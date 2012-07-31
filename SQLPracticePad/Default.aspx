<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapLayout.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQLPracticePad.Default" %>
<asp:Content ContentPlaceHolderID="Body" runat="server">

    <div class="row">

        <span class="span6">
            <textarea class="span6 sql" id="sql"></textarea>
            <p><button id="execute" class="btn btn-primary btn-large">execute</button></p>
        </span>

        <div class="result span6"></div>
    </div>

    <script type="text/javascript">
        $(function () {
            $("#execute").click(function () {
                $(".result").load("Result.aspx", { "sql": $("#sql").val() });
                return false;
            });
        });
    </script>
    

</asp:Content>
