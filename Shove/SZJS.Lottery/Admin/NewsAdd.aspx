﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" Inherits="Admin_NewsAdd"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css"  />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            添加新闻资讯信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" border="0" style="line-height: 2;"
            class="baseTab">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td style="height: 21px; width: 80%">
                    类别：
                    <asp:DropDownList ID="ddlTypes" runat="server" Width="140px">
                    </asp:DropDownList>
                    &nbsp;&nbsp; 时间：
                    <asp:TextBox ID="tbDateTime" runat="server" Width="120px"></asp:TextBox>&nbsp;&nbsp;
                    &nbsp;阅读：
                    <asp:TextBox ID="tbReadCount" runat="server" Width="80px">0</asp:TextBox>&nbsp;
                    &nbsp;<asp:CheckBox ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox>&nbsp;
                    <asp:CheckBox ID="cbisCanComments" runat="server" Checked="True" Text="允许评论" />&nbsp;
                    <asp:CheckBox ID="cbisCommend" runat="server" Checked="False" Text="重点推荐" />&nbsp;
                    <asp:CheckBox ID="cbisHot" runat="server" Checked="False" Text="热点新闻" /></font>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    标 &nbsp; &nbsp;题：
                    <asp:TextBox ID="tbTitle" runat="server" Width="500px"></asp:TextBox>
                    &nbsp;&nbsp;标题颜色<asp:DropDownList ID="ddlTitleColor" runat="server">
                        <asp:ListItem Value="none">none</asp:ListItem>
                        <asp:ListItem Value="red">red</asp:ListItem>
                        <asp:ListItem Value="black">black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow"
                        AutoPostBack="True" OnSelectedIndexChanged="rblType_SelectedIndexChanged">
                        <asp:ListItem Value="1" Selected="True">地址型</asp:ListItem>
                        <asp:ListItem Value="2">内容型</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr id="trUrl" runat="server">
                <td>
                    &nbsp;
                </td>
                <td>
                    地 &nbsp; &nbsp;址：
                    <asp:TextBox ID="tbUrl" runat="server" Width="610px" MaxLength="200"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tbody id="trContent" runat="server" visible="false">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <fck:FCKeditor ID="tbContent" Height="400" Width="100%" runat="server" BasePath="~/fckeditor/">
                        </fck:FCKeditor>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </tbody>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    使用一个新的图片：
                    <input id="tbImage" style="width: 600px; height: 21px" type="file" size="80" name="tbImage"
                        runat="server">
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <font color="#ff0000">(如果选择了新图片，下面“已存在的图片”选择将无效)</font>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    使用已存在的图片
                    <asp:DropDownList ID="ddlImage" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 50px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" AlertText="确信输入无误，并立即增加此资讯吗？"
                        OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
