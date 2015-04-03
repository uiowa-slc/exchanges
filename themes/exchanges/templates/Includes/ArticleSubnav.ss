	<div class="row">
		<div class="large-12 columns">
			<div class="article-subnav">

					<div class="large-4 columns prev-container show-for-large-up">
						<% if $PreviousPage %>
							<% with $PreviousPage %>
								<a href="$Link" class="prev "> &larr; $Title</a>
							<% end_with %>
						<% else %>
							<a href="$Parent.LetterLink" class="prev">&larr; $Parent.LetterTitle</a>
						<% end_if %>
					</div>
					<div class="large-4 columns next-container hide-for-large-up">
						<% if $NextPage %>
							<% with $NextPage %>
								<a href="$Link" class="next">$Title &rarr;</a><br />
							<% end_with %>
						<% end_if %>
					</div>
					<div class="large-4 columns toc-container">
						<a href="$Parent.Link" class="toc-link">Table of Contents</a>
					</div>

					<div class="large-4 columns next-container show-for-large-up end">
						<% if $NextPage %>
							<% with $NextPage %>
								<a href="$Link" class="next">$Title &rarr;</a><br />
							<% end_with %>
						<% end_if %>
					</div>
			</div>
		</div>
	</div>