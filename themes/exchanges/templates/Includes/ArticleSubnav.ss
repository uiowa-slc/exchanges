<div class="article__subnav">
	<div class="row row--fluid">
		<div class="large-12 columns">

			<ul class="text-center card-list">

				<% if $PreviousPage %>
					<% with $PreviousPage %>
						<% include PoemCardPrev %>
					<% end_with %>
				<% else_if $Parent.LetterLink %>
					<li class="card-list__item">
						<a href="$Parent.LetterLink" class="prev">&larr;&nbsp;$Parent.LetterTitle</a>
					</li>
				<% else %>
				&nbsp;
				<% end_if %>

				<% if $Parent.ClassName == "Issue" %>
<%-- 					<li class="card-list__item">
					<a href="$Parent.Link" class="toc-link">Table of Contents</a>
					</li> --%>
					<% with $Parent %>
						<% include IssueCard %>
					<% end_with %>
				<% else_if $ClassName == "Issue" %>
					<li class="card-list__item"><a href="$Parent.Link" class="toc-link">Issue Archive</a></li>
				<% end_if %>

				<% if $NextPage %>
					<% with $NextPage %>
						<% include PoemCardNext %>
					<% end_with %>				
				<% end_if %>
			</ul>


		</div>
	</div>
</div>