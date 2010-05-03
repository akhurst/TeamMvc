<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TeamMvc.Domain.Game>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-field">
                <%: Html.HiddenFor(model => model.Id) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Date) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Date, String.Format("{0:g}", Model.Date)) %>
                <%: Html.ValidationMessageFor(model => model.Date) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.HomeTeam) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.HomeTeam) %>
                <%: Html.ValidationMessageFor(model => model.Date) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>


