<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapLayout.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQLPracticePad.Default" ViewStateMode="Disabled" %>
<asp:Content ContentPlaceHolderID="Body" runat="server">
    <div class="row">

        <div class="span6">
            <textarea class="span6 sql" id="sql"></textarea>
            <div><button id="execute" class="btn btn-primary btn-large">execute</button></div>
            <div class="status">
            </div>
        </div>

        <div class="result span6">
        </div>

    </div>

    <script type="text/javascript">
        $(function () {
            $("#execute").click(function () {
                $(".status .alert").hide();

                $(".result").load(
                    "Result.aspx",
                    { "sql": $("#sql").val() }
                    );
                return false;
            });
        });
    </script>
    

</asp:Content>
