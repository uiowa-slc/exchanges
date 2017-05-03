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
						<a href="$Parent.LetterLink" class="card-list__link" style="background-image: url('{$Parent.Emblem.CroppedFocusedImage(690,440).URL}')">
							<div class="card-list__overlay card-list__overlay--always-visible"></div>
								<div class="card-list__text card-list__text--always-visible card-list__text--small">
									<div class="row flex-center">
										<div class="small-2 columns">
											<span class="card-list__nextprev card-list__nextprev--prev"></span>
										</div>
										<div class="small-10 columns">
											
												<h2 class="card-list__header card-list__header--small">$Parent.LetterTitle</h2>
											
										</div>
										<div class="small-2 columns">
											
										</div>
									</div>
								</div>
							
						</a>
					</li>
				<% else %>
				&nbsp;
				<% end_if %>

				<% if $Parent.ClassName == "Issue" %>
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