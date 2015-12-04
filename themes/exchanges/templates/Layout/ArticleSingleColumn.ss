<% include Breadcrumb %>
<div class="article">
	<div class="row">
		<div class="large-7 columns large-centered end">
		<header>
			<h1>$Title</h1>
		</header>
		<% if $Authors %>
		<p class="poem-info">
			
			<span class="author">By 
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