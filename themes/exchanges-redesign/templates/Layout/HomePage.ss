<!-- Main hero unit for a primary marketing message or call to action -->
<!--<% include HeroUnit %>-->

$Form
$PageComments
	
<!-- Example row of columns -->
<!--
<div class="row">
	<div class="span3 linkSet">
		<h2><i class="icon-link"></i> Quicklinks</h2>
		<ul>
			<% loop Quicklinks %>
				<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
			<% end_loop %>
		</ul>		
	</div>
	<div class="span4 feature">
		<h2><i class="icon-$FeatureOneCategory"></i> $FeatureOneTitle</h2>
		$FeatureOneContent
		<% if FeatureOneLink %>
			<p><a class="btn" href="$FeatureOneLink.Link">$FeatureOneButtonText &raquo;</a></p>
		<% end_if %>


		<h2><i class="icon-$FeatureTwoCategory"></i> $FeatureTwoTitle</h2>
		$FeatureTwoContent
		<% if FeatureTwoLink %>
			<p><a class="btn" href="$FeatureTwoLink.Link">$FeatureTwoButtonText &raquo;</a></p>
		
		<% end_if %>

	</div>
	<div class="span5 resultsList no-indent">
		<h2><i class="icon-th-list"></i> <a href="news">News</a></h2>

		<% loop NewsItems %>
			<article class="$EvenOdd $FirstLast">
				<% include NewsItem %>
			</article>
		<% end_loop %>
	</div>
</div>


-->

<div class="container" id="content">
	

		<div class="row">
		
      		<div class="span8 column">
	      		<div id="featured">
	      		<div id="emblem">
	      			<span id="issue_num">Issue #14 for <span id="year">2013</span></span>
	      			<span id="issue_name">Current Issue</span>
	      			<h1>Letter From the Editor</h1>
	      			<p>Dreaming in conversions.  Eyes part and you’d think there was nothing left.  But the crawling of the moon through the shutters.  Climb up and up if you can were it not for the drum-drum-drumming and the endless-shuffling en cámara lenta of a parade belting out a brassy“Ye Old Dixie.”  Somehow, pulled through the shadows and chaos of bodies, you emerge and strength emerges and understanding splinters, but it’s a start.  Besides, everyone knows foggy paths are better passed sans luz. <a href="one-col.html">... Continue Reading</a></p>
	      		</div>
	      		</div>
	      		<a href="toc.html">
	      		<div id="gotoissue">
	      			<div>
	      				<span>go to the <strong>Table of Contents</strong></span>
	      			</div>
	      		</div>
	      		</a>
	      		<h1 class="band">News</h1>

	      		<% loop getNewsItems %>

	      		<div class="blog_post">
	      			<div class="postheader">
	      				<h1>$Title</h1>
	      				<span class="postdate">$Date</span>
	      			</div>
	      			<div class="img"></div>
	      				<p>$Content.Summary(100)</p>
	      		</div>
	      		
	      		<% end_loop %>

	      	</div>



      		<div class="span4 column">
      			<h1 class="band">Past Issues</h1>
      			<p><a href="#">Hackwork - Spring 2010</a></p>
      			<p><a href="#">Exocity - Winter 2009</a></p>
      			<p><a href="#">Mirrors and Masks - Spring 2009</a></p>
      			<p><a href="#">Roots & Branches - Fall 2008</a></p>
      			<p><a href="#">Silence & Song - Spring 2008</a></p>
      			<p><a href="#">Black & White - Winter 2008</a></p>
      			<p><a href="#">Sweet & Sour - Spring 2007</a></p>
      			<p><a href="#">Saints & Sinners - Winter 2006</a></p>
      			<p><a href="#">Bread & Circuses - Fall 2006</a></p>
      			<p><a href="#">Beasts & Machines - Spring 2005</a></p>
      			<p><a href="#">Madness & Civilization - Summer 2004</a></p>
      			<p><a href="#">Sex & Death - Spring 2004</a></p>
      			<p><a href="#">City & Country - Fall 2003</a></p>
	      	
      		</div>
		</div>

		

    </div> <!-- /container -->
    


