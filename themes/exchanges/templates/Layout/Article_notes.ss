<div class="row" >
	<section class="small-8 columns">
  		<h1><a href="{$Link}">$Title</a></h1>
  		<h4>Notes on Translation</h4>
		$TranslatorNote
		<br />
		<% loop Translators %><% if not First %>, <% end_if %><a href="$Link">$Name</a><% end_loop %>
	</section>
	<div class="small-4 columns">

	</div>
</div>
