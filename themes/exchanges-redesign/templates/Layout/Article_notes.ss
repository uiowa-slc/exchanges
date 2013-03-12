

<div class="container" id="content">
		<div class="row" id="backto">

			<a href="{$Link}">
			<div>
				<span>Back to $Title</span>
			</div>
			</a>

		</div>
		<div class="row">
		
      		<div class="span12 column">
      			<h1>Translator's Notes</h1>
      				$TranslatorNote
      				<br />
      				<% loop Translators %>
      				<p>$Name</p>
      				<% end_loop %>
      		</div>

		</div>

    </div> <!-- /container -->