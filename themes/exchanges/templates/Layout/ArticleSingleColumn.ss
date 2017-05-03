<% include Breadcrumb %>
<div class="article">
	<div class="row">
		<div class="large-7 columns large-centered end">
		<header>
			<% if $TranslatedTitle %>
				<h1>$TranslatedTitle</h1>
				<% if $Title %>
				<p class="subheader">$Title</p>
				<% end_if %>
			<% else %> 
				<h1>$Title</h1>
			<% end_if %>
		</header>
		<% if $Authors %>
		<p class="poem-info">
			<% if $Translators %>
				<span class="author">
					Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} <% end_if %> by 
					<% loop $Translators %>
					<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
					<% end_loop %>
					
					<% if $TranslatorNote %><br /><a role="button" class="" href="#" data-reveal-id="translator-notes-modal">View Translator Notes</a><% end_if %>
				</span>
			<% else %>
	
			<% end_if %>
				<% if $Translators %><br /><% end_if %><span class="author">Original By 
				<% loop $Authors %>
					<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
				<% end_loop %>
				</span>		
		</p>
		<% end_if %>
		<div class="content-text">
			$Content
			$Form
		</div>
	</div>
	</div>
	<% include ArticleSubNav %>
</div>