<div class="row">
		$Breadcrumbs
	<section class="span12">
		<header class="page-header subhead">
			<% include PrintShare %>
			<h1><span class="hidden">$SiteConfig.Title | </span>$Title</h1>
		</header>
		
		<div class="row">
			<div class="span10">
				$Content
				$Form
				$PageComments
			</div>
			<div class="span2">
				<% if Menu(2) %>
					<% include SidebarNav %>
				<% end_if %>
			</div>
		</div>
		

	
	</section>
	

</div>