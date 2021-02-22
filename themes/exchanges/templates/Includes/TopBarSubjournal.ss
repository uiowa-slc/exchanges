<div class="nav-container nav-container--{$ClassName} contain-to-grid contain-to-grid--{$ClassName} <% if $BannerImage || $Emblem %>contain-to-grid--transparent<% end_if %>">
	<div class="nav-screen nav-screen--{$ClassName} <% if $BannerImage || $Emblem %>nav-screen--transparent<% else %>nav-screen--opaque<% end_if %>">
		<nav class="top-bar top-bar--{$ClassName} <% if $BannerImage %>top-bar--transparent<% end_if %> has-dropshadow" data-topbar role="navigation" data-options="align:right">
			<ul class="title-area">
				<li class="name">
					<% with $getSubjournal %>
						<h1><a href="$Link">$Title</a></h1>
					<% end_with %>
				</li>
				               <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span><<svg style="fill: white; height: 25px; width: 25px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg></a></li>
				<section class="top-bar-section">
					<%-- Left Nav Section --%>
					<ul class="right">
						<% loop Menu(2) %>
							<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>" <% if $DropdownMenu %>data-dropdown="hover" data-options="is_hover:true" <% end_if %>>
								<a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a>
								<% if $DropdownMenu %>
									<% if $Children %>
										<% loop $Children %>
											<li id="hover" class="f-dropdown" data-dropdown-content aria-hidden="true">
												<a href="$Link">$Title</a>
											</li>
										<% end_loop %>
									<% end_if %>
								<% end_if %>
							</li>
							<%--<% if not $Last %><li class="divider"></li><% end_if %>--%>
						<% end_loop %>
					</ul>
				</section>
			</ul>
		</nav>
	</div><!-- end nav-screen -->
</div><!-- end nav-container -->
