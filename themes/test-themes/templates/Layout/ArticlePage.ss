<% include Banner %>
<div class="content">
	<div class="container">
		<div class="row">
		
			<!-- BEGIN MAIN CONTENT -->
			<div class="main col-sm-8">
			
				<h1 class="blog-title">$Title</h1>
				
				<div class="blog-main-image">
				<% with $Photo.SetWidth(750) %>
					<img src="$URL" width="$Width" height="$Height" class="my-custom-class">
				<% end_with %>
					<div class="tag"><i class="fa fa-file-text"></i></div>
				</div>
				
				<div class="blog-bottom-info">
					<ul>
						<li><i class="fa fa-calendar"></i> $Date.Long</li>
						<li><i class="fa fa-comments-o"></i> 3 Comments</li>
						<li><i class="fa fa-tags"></i> $CategoriesList</li>
					</ul>
					
					<div id="post-author"><i class="fa fa-pencil"></i> By $Author</div>
				</div>
				
				<div class="post-content">
					<div class="highlight-bold">
						<% if $Teaser %>
							$Teaser
						<% else %>
							$Content.FirstSentence
						<% end_if %>
					</div>
					
					<div class="divider"></div>
					
					$Content
				</div>
				
				<div class="share-wraper col-sm-12 clearfix">
					<h5>Share this Post:</h5>
					<ul class="social-networks">
						<li><a target="_blank" href="http://www.facebook.com/sharer.php?s=100&amp;p%5Burl%5D=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fblog-detail.html%3Ffb%3Dtrue&amp;p%5Bimages%5D%5B0%5D=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fimages%2Fnews-img1.jpg&amp;p%5Btitle%5D=Cozy%20Blog%20Post"><i class="fa fa-facebook"></i></a></li>
						<li><a target="_blank" href="https://twitter.com/intent/tweet?url=http://www.wiselythemes.com/html/cozy/blog-detail.html&amp;text=Cozy%20Blog%20Post"><i class="fa fa-twitter"></i></a></li>
						<li><a target="_blank" href="https://plus.google.com/share?url=http://www.wiselythemes.com/html/cozy/blog-detail.html"><i class="fa fa-google"></i></a></li>
						<li><a target="_blank" href="http://pinterest.com/pin/create/button/?url=http://www.wiselythemes.com/html/cozy/blog-detail.html&amp;description=Cozy%20Blog%20Post&amp;media=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fimages%2Fnews-img1.jpg"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="mailto:?subject=Check%20out%20this%20blog%20post%20from%20Cozy%20Real%20Estate!&amp;body=http://www.wiselythemes.com/html/cozy/blog-detail.html"><i class="fa fa-envelope"></i></a></li>
					</ul>
					
					<a class="print-button" href="javascript:window.print();">
						<i class="fa fa-print"></i>
					</a>
				</div>

				<% if $Brochure %>
				<div class="row">
					<div class="col-sm-12">
						<% with $Brochure %>
						<a href="$URL" class="btn btn-warning btn-block">
							<i class="fa fa-download"></i>
							Download brochure ($Extension) [$Size]
						</a>
						<% end_with %>
					</div>
				</div>
				<% end_if %>
				
				<h1 class="section-title">Comments</h1>
				
				<div class="comments">
					<ul>
						<% loop $Comments %>
						<li>
							<img src="$ThemeDir/images/comment-man.jpg" alt="" />
							<div class="comment">								
								<h3>$Name
									<div style="margin-left:70px; float:right;">$Email
										<button type="button" onclick="javascript:edit('$ID');" class="btn btn-info">
										edit</button>
										<button type="button" onclick="javascript:hapus('$ID');" class="btn btn-danger">
										Hapus</button>
									</div>
									<small>$Created.Nice</small>
								</h3>
								<p>$Comment</p>
							</div>
						</li>
						<% end_loop %>
					</ul>
					
					<div class="comments-form col-md-12">
						<div class="col-sm-12">
							<h3>Leave a Reply</h3>
							<p>Your email address will no be published. Required fields are marked*</p>
						</div>
						<div id="kosong" style="display:none;color:red">Nomor Handphone tidak boleh kosong !</div>
						<div id="angka" style="display:none;color:red">Nomor Handphone Harus angka !</div>
						<div id="lebih" style="display:none;color:red">Nomor Handphone harus 12 angka</div>
						<input type="hidden" id="IdComment">
						$CommentForm
						<br>
						<div id="propertynya" style="margin:10px" class="col-md-12 field dropdown"></div> 
					</div>
				</div>
				
			</div>	
			<!-- END MAIN CONTENT -->
			
			
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar gray col-sm-4">
				
				<h2 class="section-title">Categories</h2>
				<ul class="categories">
				<% loop $Categories %>
					<li><a href="$Link">$Title <span>($Articles.count)</span></a></li>
				<% end_loop %>
				</ul>
				
				<!-- BEGIN ARCHIVES ACCORDION -->
				<h2 class="section-title">Archives</h2>
				<div id="accordion" class="panel-group blog-accordion">
					<div class="panel">
						<div class="panel-heading">
							<div class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="">
									<i class="fa fa-chevron-right"></i> 2014 (15)
								</a>
							</div>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul>
									<li><a href="#">July (3)</a></li>
									<li><a href="#">June (4)</a></li>
									<li><a href="#">May (1)</a></li>
									<li><a href="#">April (2)</a></li>
									<li><a href="#">March (3)</a></li>
									<li><a href="#">February (1)</a></li>
									<li><a href="#">January (1)</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="panel">
						<div class="panel-heading">
							<div class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
									<i class="fa fa-chevron-right"></i> 2013 (6)
								</a>
							</div>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">May (1)</a></li>
									<li><a href="#">April (2)</a></li>
									<li><a href="#">March (1)</a></li>
									<li><a href="#">February (2)</a></li>
									<li><a href="#">January (1)</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="panel">
						<div class="panel-heading">
							<div class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
									<i class="fa fa-chevron-right"></i> 2012 (5)
								</a>
							</div>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">April (1)</a></li>
									<li><a href="#">March (1)</a></li>
									<li><a href="#">February (2)</a></li>
									<li><a href="#">January (1)</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- END  ARCHIVES ACCORDION -->
				<!-- BEGIN TAGS -->
				<h2 class="section-title">Regions</h2>
				<ul class="categories">
				<% loop $Regions %>
					<li><a href="$ArticlesLink">$Title <span>($Articles.count)</span></a></li>
				<% end_loop %>
				</ul>
				<!-- BEGIN TAGS -->
				<!-- BEGIN LATEST NEWS -->
				<h2 class="section-title">Latest News</h2>
				<ul class="latest-news">
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>
						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 30, 2014</li>
						</ul>
						<h3><a href="blog-detail.html">How to get your dream property for the best price?</a></h3>
					</li>
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>
						
						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 24, 2014</li>
						</ul>
							
						<h3><a href="blog-detail.html">7 tips to get the best mortgage.</a></h3>
					</li>
					<li class="col-md-12">
						<div class="image">
							<a href="blog-detail.html"></a>
							<img src="http://placehold.it/100x100" alt="" />
						</div>
						
						<ul class="top-info">
							<li><i class="fa fa-calendar"></i> July 05, 2014</li>
						</ul>
						
						<h3><a href="blog-detail.html">House, location or price: What's the most important factor?</a></h3>
					</li>
				</ul>
				<!-- END LATEST NEWS -->
				
			</div>
			<!-- END SIDEBAR -->

		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
        var element = document.getElementById("Form_CommentForm_Name");
    	element.classList.add("form-control");
    	var element1 = document.getElementById("Form_CommentForm_Email");
    	element1.classList.add("form-control");
    	var element2 = document.getElementById("Form_CommentForm_Comment");
    	element2.classList.add("form-control");
    	$("#propertynya").hide();
      });
	$('#Form_CommentForm_Number').keyup(function(){
		var nomor_hp =$(this).val();
        var number=/^[0-9]+$/;

        if(nomor_hp==null || nomor_hp==""){
        	$('#kosong').show();
        	$('#lebih').hide();
        	$('#angka').hide();
        } 
        else if(!nomor_hp.match(number)){
          	$('#angka').show();
          	$('#kosong').hide();
        	$('#lebih').hide();
        } 
        else if(nomor_hp.length!=12 || nomor_hp.length>13){
          	$('#lebih').show();
          	$('#kosong').hide();
			$('#angka').hide();
        }
        else{
        	$('#kosong').hide();
        	$('#lebih').hide();
        	$('#angka').hide();
        }
	});
	$('#Form_CommentForm_RegionID').on('change', function() {
        var RegionID = $(this).val();
        $.ajax({
	       	url: 'travel-guides/PropertyGetByRegion/',
			type: 'POST',
	       	data:  {'RegionID':RegionID},
	       	success: function(data){
	        	$("#propertynya").html(data);
	        	$("#propertynya").show();
	        }
	    })
    });
    function hapus(hapusnya){
    	$.ajax({
          url:'travel-guides/HapusData/',
          type:"POST",
          data:{'hapusnya':hapusnya},
          success: function(data)
          {
              location.reload();
          }
      });
    }
    function edit(editnya){
    	$.ajax({
          url:'travel-guides/EditData/',
          type:"POST",
          data:{'editnya':editnya},
          dataType:"json",
          success: function(data)
          {
          	$('#Form_CommentForm_Name').val(data.name);
          	$('#Form_CommentForm_Email').val(data.email);
          	$('#Form_CommentForm_Comment').val(data.comment);
          	$('#IdComment').val(data.idnya);
          }
      	});
    }
    $('#Form_CommentForm_action_handleComment').on('click',function(){
		var ID = $('#IdComment').val();
		if(ID != null || ID != ''){
			var name = $('#Form_CommentForm_Name').val();
	        var email = $('#Form_CommentForm_Email').val();
	        var comment = $('#Form_CommentForm_Comment').val();
			$.ajax({
	          url:'travel-guides/UpdateData/',
	          type:"POST",
	          data:{'email':email,'name':name,'comment':comment,'id':ID},
	          success: function(data)
	          {
	          	alert(data);
	          	location.reload();
	          }
	      	})
		}
	})
</script>