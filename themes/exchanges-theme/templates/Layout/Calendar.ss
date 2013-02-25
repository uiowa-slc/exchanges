<div class="row">
	$Breadcrumbs
	<section class="span10">
		<header class="page-header subhead">
			<% include PrintShare %>
			<h1><span class="hidden">$SiteConfig.Title | </span>$Title</h1>

		</header>
	
		
		<h2>$DateHeader</h2>
			<% if Events %>
			<div id="event-calendar-events">
			  <% include EventList %>
			</div>
			<% else %>
			  <p><% _t('NOEVENTS','There are no events') %>.</p>
			<% end_if %>
		
		$Content
		$Form
		$PageComments
	</section>
	
	<div class="event-calendar-controls span2">
		  $CalendarWidget
		  $MonthJumper
		  <% include QuickNav %>
	</div>
</div>

