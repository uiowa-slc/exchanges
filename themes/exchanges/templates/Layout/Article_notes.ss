<div class="row" >
	<section class="small-12 medium-8 large-7 end columns">
  		<h1><a href="{$Link}">$Title</a></h1>
  		<hr />
  		<h2>Notes on Translation</h2>
		$TranslatorNote
		<br />
		<% loop Translators %><% if not First %>, <% end_if %><a href="$Link">$Name</a><% end_loop %>
	</section>
	<div class="small-4 columns">

	</div>
</div>
