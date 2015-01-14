	<li class="article-nav issue" style="background-image: url('$getCurrentIssue.Emblem.URL')">
		<div class="issue-nav-overlay">
			<a href="$getCurrentIssue.Link">
			<section class="nav-li-content">
				<h2> $getCurrentIssue.MenuTitle </h2>
				<p class="nav-deets">
					<% if $LetterFromEditorCustomTitle %>
						$LetterFromEditorCustomTitle
					<% else %>
						Letter from the editor
					<% end_if %>
				</p>
			</section>
			</a>
		</div>
	</li>
    