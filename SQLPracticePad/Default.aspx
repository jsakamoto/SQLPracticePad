<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapLayout.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQLPracticePad.Default" %>
<asp:Content ContentPlaceHolderID="Body" runat="server">

    <div class="row">

        <div class="span6">
            <textarea class="span6 sql" id="sql"></textarea>
            <div><button id="execute" class="btn btn-primary btn-large">execute</button></div>
            <div class="status">
                <div class="alert alert-error">
                    <h4>Error.</h4>
                    <div class="err-msg">foo bar ...</div>
                </div>
                <div class="alert alert-success">Success</div>
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
                    { "sql": $("#sql").val() },
                    function (responseText, textStatus, xhr) {
                        console.log("textStatus = " + textStatus);
                        if (textStatus === 'error') {
                            if (xhr.status == 400) {
                                $(".status .err-msg").text(responseText);
                            }
                            else {
                                $(".status .err-msg").text("不明なエラーが発生しました。");
                            }
                            $(".result").html("");
                            $(".status .alert-error").fadeIn("fast");
                        }
                        else {
                            $(".status .alert-success").fadeIn("fast");
                        }
                    }
                    );
                return false;
            });
        });
    </script>
    

</asp:Content>
