	<div class="row">
		<div class="large-12 columns">
			<div class="issue-nav">

					<div class="large-4 columns issue-nav__prev-container show-for-large-up">
						<% if $PreviousPage %>
							<% with $PreviousPage %>
								<a href="$Link" class="prev "> &larr; $Title</a>
							<% end_with %>
						<% else_if $Parent.LetterLink %>
							<a href="$Parent.LetterLink" class="prev">&larr;&nbsp;$Parent.LetterTitle</a>
						<% else %>
						&nbsp;
						<% end_if %>
					</div>
					<div class="large-4 columns issue-nav__next-container hide-for-large-up">
						<% if $NextPage %>
							<% with $NextPage %>
								<a href="$Link" class="next">$Title&nbsp;&rarr;</a><br />
							<% end_with %>
						<% end_if %>
					</div>
					<div class="large-4 columns issue-nav__toc-container">
						<% if $Parent.ClassName == "Issue" %>
							<a href="$Parent.Link" class="toc-link">Table of Contents</a>
						<% else_if $ClassName == "Issue" %>
							<a href="$Parent.Link" class="toc-link">Issue Archive</a>
						<% end_if %>
					</div>

					<div class="large-4 columns issue-nav__next-container show-for-large-up end">
						<% if $NextPage %>
							<% with $NextPage %>
								<a href="$Link" class="next">$Title&nbsp;&rarr;</a><br />
							<% end_with %>
						<% end_if %>
					</div>
			</div>
		</div>
	</div>