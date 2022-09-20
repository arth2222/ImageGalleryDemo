<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImageGalleryDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PortfolioDemo</title>
    <link rel="stylesheet" href="style.css">
</head>
<body style="background-image: url('images/destiny.jpg')">
    <ul>
      <li><a href="#home">Home</a></li>
      <li><a href="Gallery.aspx">Gallery</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="#about">About</a></li>
    </ul>
    <br />
    <div id="homepageTitle">
        Bill Roads
    </div>
    <div id="homepageText">
        <p>- Visual designer @Glemmenvgs</p>
        <p>#.net #Csharp #code</p>
    </div>

    <form id="form1" runat="server">
       
    </form>
</body>
</html>
