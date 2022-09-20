<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ImageGalleryDemo.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PortfolioDemo</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <ul>
      <li><a href="Default.aspx">Home</a></li>
      <li><a href="#news">News</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="#about">About</a></li>
    </ul>
    <br />
    <form id="form1" runat="server">
        <p>
            Når vi lager en nettside som skal inneholde bilder, så bruker vi tags for dette. En img-tag. En tag per bilde. Greit nok. Men hva om man vil legge til, eller fjerne 
            bilder, etter at man har publisert nettsiden? Det er utrolig upraktisk og slett ikke vanlig å endre i koden til nettsiden for hver gang man vil publisere et nytt bilde.
        </p>
        <p>Så hvordan skal man løse det da? Det er her .net og litt koding kommer til nytte. I dette eksempelet har jeg brukt to forskjellige komponenter. Repeater og DataList. Deretter har jeg en
            egen mappe hvor bildene ligger. Så litt kode. Denne koden henter navna til bildefilene og med en Repeater eller DataList lages disse img-taggene automatisk. 
            <b>Det vil si at man kan bare legge et bilde i denne mappen, også vil bildet dukke opp "av seg selv"!</b>
        </p>
        <h2>
            Dette demoprosjektet ligger på Teams. PortfolioDemo er navnet. Last det ned. Se på koden. Still spørsmål. Endre koden. Etc.
        </h2>

        <h1>Using a Repeater</h1>
        <p>En Repeater bare spytter ut elementene en etter en. Her kommer alle bildene rett etter hverandre. Sjekk view source for å se html.</p>
        <asp:Repeater ID="Repeater" runat="server">
            <ItemTemplate> 
               <asp:Image ID="Image1"  height="200" runat="server" ImageUrl='<%# Container.DataItem %>' /> 
            </ItemTemplate>
        </asp:Repeater>

        <br /><br />
        
        <h1>Using a DataList</h1>
        <p>En DataList kan konfigureres med retning og hvor mange kolonner. Passer fint til et galleri. Blir rendret som en html table, og er da lett å stile.</p>
        <p>Her er DataLista satt opp til å vise bildene i 2 kolonner. Denne blir sett på som en tabell. Anbefales.</p>
        <asp:DataList ID="DataList1"  runat="server" RepeatDirection="Horizontal"  RepeatColumns="2">
            <ItemTemplate>
                <img height="300" src="<%# Container.DataItem %>" />
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
