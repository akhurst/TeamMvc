<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TeamMvc.Domain.Team>" %>
<%@ Import Namespace="MvcContrib.UI.Grid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%: Model.Name %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

		<!-- ASP.NET 2.0 - Strongly-Typed View Helpers -->
    <h2><%= Html.DisplayFor(t=>t.Name) %></h2>

    <h3>Players</h3>
		<!-- MvcContrib Grid Helper -->
		<%= Html.Grid(Model.Players).Columns(column =>
				{
					column.For(player => player.Name);
					column.For(player => player.Position);
				})%>

    <h3>Schedule</h3>
		<!-- MvcContrib Grid Helper -->
		<%= Html.Grid(Model.Games).Columns(column =>
				{
					column.For(game => game.Date);
					column.For(game => (game.AwayTeam.Name +" @ "+game.HomeTeam.Name));
				})%>

    <p>
        <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

