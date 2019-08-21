<%@ Page Language="C#" AutoEventWireup="true" CodeFile="openword.aspx.cs" Inherits="openword" %>

<%@ Register Assembly="PageOffice, Version=4.0.0.1, Culture=neutral, PublicKeyToken=1d75ee5788809228"
    Namespace="PageOffice" TagPrefix="po" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:auto;height:700px;">

            <po:PageOfficeCtrl ID="PageOfficeCtrl1" runat="server" CustomToolbar="False">
        </po:PageOfficeCtrl>


        </div>
    </form>
</body>
</html>
