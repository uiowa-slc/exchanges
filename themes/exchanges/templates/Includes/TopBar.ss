<% if $isSubjournal %>
	<% include TopBarSubjournal %>
<% else %>
	<div class="nav-container nav-container--{$ClassName} contain-to-grid contain-to-grid--{$ClassName} <% if $BannerImage || $Emblem %>contain-to-grid--transparent<% end_if %>">
		<div class="nav-screen nav-screen--{$ClassName} <% if $BannerImage %>nav-screen--transparent<% else %>nav-screen--opaque<% end_if %>">
			<nav class="top-bar top-bar--{$ClassName} <% if $BannerImage %>top-bar--transparent<% end_if %> has-dropshadow" data-topbar role="navigation" data-options="align:right">
				<ul class="title-area">
					<li class="name">
						<h1 class="show-for-large-up"><a href="{$BaseURL}">$SiteConfig.Title</a></h1>
						<h1 class="hide-for-large-up"><a href="{$BaseURL}">Exchanges</a></h1>
					</li>
					<li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
				</ul>
				<section class="top-bar-section">
					<%-- Left Nav Section --%>
					<ul class="right">
						<% loop Menu(1) %>
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
			</nav>
		</div><!-- end nav-screen -->
	</div><!-- end nav-container -->
<% end_if %>