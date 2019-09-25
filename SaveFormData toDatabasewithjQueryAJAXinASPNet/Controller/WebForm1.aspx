<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SaveFormData_toDatabasewithjQueryAJAXinASPNet.Controller.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/json2/0.1/json2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <td style="width: 50%">
                        <label for="First_Name"><b>First name *</b></label><br />
                        <input name="First_Namae" type="text" id="txtUsername" maxlength="50" style="width: 260px" />
                    </td>
                    <td style="width: 50%">
                        <label for="Last_Name"><b>Last name *</b></label><br />
                        <input name="Last_Name" type="text" maxlength="50" style="width: 260px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Email_Address"><b>Email *</b></label><br />
                        <input name="Email_Address" type="text" maxlength="100" style="width: 535px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Portfolio"><b>Portfolio website</b></label><br />
                        <input name="Portfolio" type="text" maxlength="255" value="http://" style="width: 535px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Position"><b>Position you are applying for *</b></label><br />
                        <input name="Position" type="text" maxlength="100" style="width: 535px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Salary"><b>Salary requirements</b></label><br />
                        <input name="Salary" type="text" maxlength="50" style="width: 260px" />
                    </td>
                    <td>
                        <label for="StartDate"><b>When can you start?</b></label><br />
                        <input name="StartDate" type="text" maxlength="50" style="width: 260px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Phone"><b>Phone *</b></label><br />
                        <input name="Phone" type="text" maxlength="50" style="width: 260px" />
                    </td>
                    <td>
                        <label for="Fax"><b>Fax</b></label><br />
                        <input name="Fax" type="text" maxlength="50" style="width: 260px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Relocate"><b>Are you willing to relocate?</b></label><br />
                        <input name="Relocate" type="radio" value="Yes" checked="checked" />
                        Yes      
                        <input name="Relocate" type="radio" value="No" />
                        No      
                        <input name="Relocate" type="radio" value="NotSure" />
                        Not sure
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Organization"><b>Last company you worked for</b></label><br />
                        <input name="Organization" type="text" maxlength="100" style="width: 535px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="Reference"><b>Reference / Comments / Questions</b></label><br />
                        <textarea name="Reference" rows="7" cols="40" style="width: 535px"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        
                        <input name="skip_submit" type="submit" value="Send Application" id="btnSave" />
                    </td>
                </tr>
            </table>
            <hr />
        </div>
    </form>

    <script type="text/javascript">
        $(function () {
            $("[id*=btnSave]").bind("click", function () {
                var emp = {};
                emp.Email = $("[id*=txtUsername]").val();
                emp.Password = $("[id*=txtPassword]").val();
                $.ajax({
                    type: "POST",
                    url: "http://localhost:53642/Controller/WebForm1.aspx/Saveemp",
                    data: '{emp: ' + JSON.stringify(emp) + '}',

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
