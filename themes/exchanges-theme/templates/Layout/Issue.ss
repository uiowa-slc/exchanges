<div id="content" class="typography">
	<div id="toc"> $Content </div>
	<div id="toc_extra">
		<% if ContentsImage %>
		$ContentsImage
		<% end_if %>
	</div>
	<div id="emblem">
		<% if Emblem %>
			$Emblem
		<% end_if %>
	
	</div>
	BEFORE ITEMS 
	<!--
	 <% loop Items %>                <li>
                <h2>$Title AAA</h2>
                <p>$Content.FirstParagraph</p>
                <a href="$Link">View</a>
            </li>
            $Debug
   <% end_loop %>
   -->
   
   <!--
   CONTRIBUTORS ASSOCIATED WITH THIS ISSUE:<br><br>
   <% loop listContributors %>
   		Link = $Link<br><br>
   <% end_loop %>
   -->
   <br><br><br>
   ARTICLES ASSOCIATED WITH THIS ISSUE:<br><br>
   <% loop listArticles %>
   		Link = $Link<br><br>
   		
   <% end_loop %>
   
  dumbTest = $dumbTest
  supperTest = $superTest
  <!--
  <% loop getDataObjectAsPage %>
  	$Debug
  <% end_loop %>-->
  
  IMAGE IS!
  
  

</div>
	<div class="clear"></div>

