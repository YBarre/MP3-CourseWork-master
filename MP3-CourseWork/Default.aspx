﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MP3CourseWork._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MP3 PlayList</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server" />
        <div>
            Upload mp3:
            <asp:FileUpload ID="upload" runat="server" />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
        </div>
        <div>
            <asp:UpdatePanel ID="up1" runat="server">
                <ContentTemplate>
                    <asp:ListView ID="ThumbnailDisplayControl" runat="server">
                        <LayoutTemplate>
                            <asp:Image ID="itemPlaceholder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <audio src='<%# Eval("Url") %>' controls="" preload="none"></audio>
                            <asp:Literal ID="label" Text='<%# Eval("Title") %>' runat="server"/>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:Timer ID="timer1" runat="server" Interval="7000" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
