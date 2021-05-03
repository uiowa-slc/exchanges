<ul class="text-center card-list card-list--two">
				<% loop $Children %>
					<li class="card-list__item">
						<a href="$Link" class="card-list__link card-list__link--large" style="background-image: url('{$BannerImage.FocusFill(690,440).URL}')">
							<%-- <img class="card-list__img" src="$BannerImage.FocusFill(690,440).URL"> --%>
							<div class="card-list__overlay card-list__overlay--always-visible"></div>

								<div class="card-list__text card-list__text--always-visible card-list__text--large">
									<h2 class="card-list__header card-list__header--large">$Title</h2>

                                    <% if $CustomByline %>
                                        <p class="card-list__byline">$CustomByline</p>

                                    <% else %>
                                        <p class="card-list__byline">$TranslatorByline(false)</p>
                                    <% end_if %>
								</div>

						</a>
					</li>
				<% end_loop %>
			</ul>
