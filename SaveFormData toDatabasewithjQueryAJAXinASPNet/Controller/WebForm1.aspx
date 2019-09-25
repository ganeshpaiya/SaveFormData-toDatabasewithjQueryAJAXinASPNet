<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SaveFormData_toDatabasewithjQueryAJAXinASPNet.Controller.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                Username:
            </td>
            <td>
                <input type="text" id="txtUsername"  Text="" />
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                 <input type="text" id="txtPassword"  Text="" />
               
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnSave" Text="Save" runat="server" />
            </td>
        </tr>
    </table>
    <hr />
    </div>
    </form>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/json2/0.1/json2.js"></script>
<script type="text/javascript">
    $(function () {
        $("[id*=btnSave]").bind("click", function () {
            var user = {};
            user.Email = $("[id*=txtUsername]").val();
            user.Password = $("[id*=txtPassword]").val();
            $.ajax({
                type: "POST",
                url: "http://localhost:53642/Controller/WebForm1.aspx/Saveemp",
                data: '{user: ' + JSON.stringify(user) + '}',
               
                contentType: 'application/json',
                dataType: "json",
                success: function (response) {
                    alert("User has been added successfully.");
                    window.location.reload();
                }
            });
            return false;
        });
    });
</script>
</body>
</html>
