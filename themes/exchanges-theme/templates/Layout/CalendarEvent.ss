<div class="row">
	$Breadcrumbs
	<section class="span10">
		<header class="page-header subhead">
			<% include PrintShare %>
			<h1><span class="hidden">$SiteConfig.Title | </span>$Title</h1>
		</header>
<div class="vevent">
  <h3 class="summary">$Title</h3>

  <% with CurrentDate %>
  <p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
  <p></p>
  <% end_with %>
  
  $Content
  
  <% if OtherDates %>
  <div class="event-calendar-other-dates">
    <h4><% _t('CalendarEvent.ADDITIONALDATES','Additional Dates for this Event') %></h4>
    <ul>
      <% loop OtherDates %>
      <li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
      <% end_loop %> 
    </ul>
  </div>
  <% end_if %>
</div>
	<div class="span2">		
		$CalendarWidget
		$MonthJumper
	</div>
		$PageComments
	</section>
</div>
