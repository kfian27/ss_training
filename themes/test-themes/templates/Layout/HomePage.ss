		
		<!-- BEGIN HOME SLIDER SECTION -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators 
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		  </ol> -->

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active"id="slide1" style="background: url(http://placehold.it/1920x605) no-repeat left center; background-size: cover;"> <!-- Ready for JS Injection -->
		      <div class="carousel-caption">
				<div class="caption sfr slider-title">Breathtaking views</div>
				<div class="caption sfl slider-subtitle">Relaxation in the Bay of Belfalas</div>
				<a href="#" class="caption sfb btn btn-default btn-lg">Learn More</a>
		      </div>
		    </div>
		    <div class="item" id="slide2" style="background: url(http://placehold.it/1920x605) no-repeat left center; background-size: cover;"> 
		      <div class="carousel-caption">
				<div class="caption sfr slider-title">The simple life</div>
				<div class="caption sfl slider-subtitle">Lush gardens in Mordor</div>
				<a href="#" class="caption sfb btn btn-default btn-lg">Learn More</a>
		      </div>
		    </div>
		  </div>
		  <!-- Blue Filter -->
		  <div id="home-search-section"></div>

		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>



		</div>		
		<!-- END HOME SLIDER SECTION -->
		
		<!-- BEGIN HOME ADVANCED SEARCH -->
		<div id="home-advanced-search" class="open">
			<div id="opensearch"></div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<form>
							<div class="form-group">
								<div class="form-control-small">
									<div class='input-group date chzn-container' data-datepicker>
										<input placeholder="Arrive on..." type='text' class="form-control" data-date-format="DD/MM/YYYY"/>
										<span class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
								
								<div class="form-control-small">
									<select id="search_status" name="search_status" data-placeholder="Stay...">
										<option value=""> </option>
										<option value="1">1 Night</option>
										<option value="2">2 Nights</option>
										<option value="3">3 Nights</option>
										<option value="4">4 Nights</option>
										<option value="5">5 Nights</option>
										<option value="6">6 Nights</option>
										<option value="7">7 Nights</option>
										<option value="8">8 Nights</option>
										<option value="9">9 Nights</option>
										<option value="10">10 Nights</option>
										<option value="11">11 Nights</option>
										<option value="12">12 Nights</option>
										<option value="13">13 Nights</option>
										<option value="14">14 Nights</option>
									</select>
								</div>
								
								<div class="form-control-small">
									<select id="search_bedrooms" name="search_bedrooms" data-placeholder="Bedrooms">
										<option value=""> </option>
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="5plus">5+</option>
									</select>
								</div>
								<div class="form-control-large">
									<input type="text" class="form-control" name="location" placeholder="City, State, Country, etc...">
								</div>
								<button type="submit" class="btn btn-fullcolor">Search</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<!-- END HOME ADVANCED SEARCH -->
		
		
		<!-- BEGIN CONTENT WRAPPER -->
		<div class="content">
			<div class="container">
				<div class="row">
				
					<!-- BEGIN MAIN CONTENT -->
					<div class="main col-sm-8">
						<h1 class="section-title">Featured Properties</h1>

						<div class="grid-style1 clearfix">
							<% loop $FeaturedProperties %>
							<div class="item col-md-4">
								<div class="image">
									<a href="$Link">
										<h3>$Title</h3>
										<span class="location">$Region.Title</span>
									</a>
									$PrimaryPhoto.CroppedImage(220,194)
								</div>
								<div class="price">
									<span>$PricePerNight.Nice</span><p>per night<p>
								</div>
								<ul class="amenities">
									<li><i class="icon-bedrooms"></i> $Bedrooms</li>
									<li><i class="icon-bathrooms"></i> $Bathrooms</li>
								</ul>
							</div>
							<% end_loop %>
						</div>
						<div class="col-md-6">
							<div id="provinsi" style="display:none">
							<label>Provinsi asal</label>
								<select id="select_provinsi" class="form-control">
									<option id="select_provinsi1"></option>
								</select>
							</div>
							<div id="kota">
							<label>Kota asal</label>
								<select id="select_kota" class="form-control">
									<option id="select_provinsi1"></option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div id="provinsi_tujuan" style="display:none">
							<label>Provinsi tujuan</label>
								<select id="select_provinsi_tujuan" class="form-control">
									<option id="select_provinsi_tujuan"></option>
								</select>
							</div>
							<div id="kota_tujuan">
							<label>Kota tujuan</label>
								<select id="select_kota_tujuan" class="form-control">
									<option id="select_kota_tujuan"></option>
								</select>
							</div>
						</div>
						<select id="kurir" class="form-control">
							<option value="jne">jne</option>
							<option value="tiki">tiki</option>
							<option value="pos">pos</option>
						</select>
						<input id="harganya" type="text" class="form-control" placeholder="berat dalam gram">
						<button class="btn btn-info" onclick="javascript:test1();">Cek</button>
						<div id="tampilharga">
						</div>
						<div class="row">
							<div class="col-sm-12">
								<h1 class="section-title">Data agen</h1>
								<div id="regions">
									<div id="tabel-agen">
										<button class="btn btn-info pull-right" onclick="javascript:tambah();" style="margin-bottom:5px">Tambah</button>
										<table border="2" width="100%" height="200px">
											<thead>
												<tr>
													<th style="text-align:center">Nama</th>
													<th style="text-align:center">Alamat</th>
													<th style="text-align:center">No Tlp</th>
													<th style="text-align:center">Action</th>
												</tr>
											</thead>
											<tbody>
												<% loop $DataAgen %>
													<tr>
														<td>$Name</td>
														<td>$Address</td>
														<td>$Phone</td>
														<td>
															<button class="btn btn-info" onclick="javascript:edit('travel-guides/EditDataAgen/',$ID)">Edit</button>
															<button class="btn btn-danger">Hapus</button>
														</td>
													</tr>
												<% end_loop %>
											</tbody>
										</table>
									</div>
									<div id="form-agen" style="display:none">
										<button class="btn btn-info pull-right" onclick="javascript:cancel();" style="margin-bottom:5px">< Kembali </button>
										<form method="post" id="detail-tambah" name="detail-tambah" enctype="multipart/form-data">
											<input type="hidden" id="id_agen" name="id_agen">
											<input type="text" id="nama_agen" name="nama_agen" class="form-control" placeholder="Nama">
											<input type="text" id="alamat_agen" name="alamat_agen" class="form-control" placeholder="Alamat">
											<input type="number" id="tlp_agen" name="tlp_agen" class="form-control" placeholder="No Tlp">
											<button type="submit" class="btn btn-success pull-right" onclick="javascript:simpan('travel-guides/TambahAgen/');" style="margin-top:5px"> Simpan </button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<h1 class="section-title">Data fasilitas</h1>
								<div id="regions">
									<div id="tabel-fasilitas">
										<button class="btn btn-info pull-right" onclick="javascript:tambah_fasilitas();" style="margin-bottom:5px">Tambah</button>
										<table border="2" width="100%" height="200px">
											<thead>
												<tr>
													<th style="text-align:center">Nama fasilitas</th>
													<th style="text-align:center">Action</th>
												</tr>
											</thead>
											<tbody>
												<% loop $DataFasilitas %>
													<tr>
														<td>$Name</td>
														<td>
															<button class="btn btn-info" onclick="javascript:edit_fasilitas('travel-guides/EditDataFasilitas',$ID)">Edit</button>
															<button class="btn btn-danger">Hapus</button>
														</td>
													</tr>
												<% end_loop %>
											</tbody>
										</table>
									</div>
									<div id="form-fasilitas" style="display:none">
										<button class="btn btn-info pull-right" onclick="javascript:cancel_fasilitas();" style="margin-bottom:5px">< Kembali </button>
										<form method="post" id="detail-tambah1" name="detail-tambah" enctype="multipart/form-data">
											<input type="hidden" id="id_fasilitas" name="id_fasilitas">
											<input type="text" id="nama_fasilitas" name="nama_fasilitas" class="form-control" placeholder="Nama fasilitas">
											<button type="submit" class="btn btn-success pull-right" onclick="javascript:simpan1('travel-guides/TambahFasilitas/');" style="margin-top:5px"> Simpan </button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<h1 class="section-title">Data kategori</h1>
								<div id="regions">
									<div id="tabel-kategori">
										<button class="btn btn-info pull-right" onclick="javascript:tambah_kategori();" style="margin-bottom:5px">Tambah</button>
										<table border="2" width="100%" height="200px">
											<thead>
												<tr>
													<th style="text-align:center">Nama kategori</th>
													<th style="text-align:center">Action</th>
												</tr>
											</thead>
											<tbody>
												<% loop $DataKategori %>
													<tr>
														<td>$Name</td>
														<td>
															<button class="btn btn-info" onclick="javascript:edit_kategori('travel-guides/EditDataKategori',$ID)">Edit</button>
															<button class="btn btn-danger">Hapus</button>
														</td>
													</tr>
												<% end_loop %>
											</tbody>
										</table>
									</div>
									<div id="form-kategori" style="display:none">
										<button class="btn btn-info pull-right" onclick="javascript:cancel_kategori();" style="margin-bottom:5px">< Kembali </button>
										<form method="post" id="detail-tambah2" name="detail-tambah" enctype="multipart/form-data">
											<input type="hidden" id="id_kategori" name="id_kategori">
											<input type="text" id="nama_kategori" name="nama_kategori" class="form-control" placeholder="Nama kategori">
											<button type="submit" class="btn btn-success pull-right" onclick="javascript:simpan2('travel-guides/TambahKategori/');" style="margin-top:5px"> Simpan </button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<h1 class="section-title">Data properti</h1>
								<div id="regions">
									<div id="tabel-properti">
										<button class="btn btn-info pull-right" onclick="javascript:tambah_properti();" style="margin-bottom:5px">Tambah</button>
										<table border="2" width="100%" height="200px">
											<thead>
												<tr>
													<th style="text-align:center">Alamat</th>
													<th style="text-align:center">Alamat Lengkap</th>
													<th style="text-align:center">No tlp</th>
													<th style="text-align:center">Vendor</th>
													<th style="text-align:center">No tlp Vendor</th>
													<th style="text-align:center">Nama kategori</th>
													<th style="text-align:center">Action</th>
												</tr>
											</thead>
											<tbody>
												<% loop $DataProperties %>
													<tr>
														<td>$Address</td>
														<td>$AddressFull</td>
														<td>$Phone</td>
														<td>$VendorNan</td>
														<td>$VendorPhone</td>
														<td>$nama_kategori</td>
														<td>
															<button class="btn btn-info" onclick="javascript:edit_properti('travel-guides/EditDataProperti',$ID);">Edit</button>
															<button class="btn btn-danger">Hapus</button>
														</td>
													</tr>
												<% end_loop %>
											</tbody>
										</table>
									</div>
									<div id="form-properti" style="display:none">
										<button class="btn btn-info pull-right" onclick="javascript:cancel_properti();" style="margin-bottom:5px">< Kembali </button>
										<form method="post" id="detail-tambah3" name="detail-tambah" enctype="multipart/form-data">
											<input type="hidden" id="id_properti" name="id_properti">
											<input type="text" id="alamat_properti" name="alamat_properti" class="form-control" placeholder="Alamat">
											<textarea id="full_alamat" name="full_alamat" class="form-control" placeholder="Alamat Lengkap"></textarea>
											<input id="tlp_properti" name="tlp_properti" type="number" class="form-control" placeholder="No tlp">
											<input id="nama_vendor" name="nama_vendor" type="text" class="form-control" placeholder="Nama Vendor">
											<input id="tlp_vendor" name=tlp_vendor type="number" class="form-control" placeholder="No tlp vendor">
											<select id="kategori_id" name="kategori_id" class="form-control">
												<option value="0">--pilih kategori</option>
												<% loop DataKategori %>
													<option value="$ID">$Name</option>
												<% end_loop %>
											</select>
											<button type="submit" class="btn btn-success pull-right" onclick="javascript:simpan3('travel-guides/TambahProperti/');" style="margin-top:5px"> Simpan </button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<h1 class="section-title">Recent Articles</h1>
						<div class="grid-style1">
						<% loop $LatestArticles %>
							<div class="item col-md-4">
								<div class="image">
									<a href="$Link">
										<span class="btn btn-default"><i class="fa fa-file-o"></i> Read More</span>
									</a>
									$Photo.CroppedImage(220,148)
								</div>
								<div class="tag"><i class="fa fa-file-text"></i></div>
								<div class="info-blog">
									<ul class="top-info">
										<li><i class="fa fa-calendar"></i>$Date.Nice</li>
										<li><i class="fa fa-comments-o"></i> 2</li>
										<li><i class="fa fa-tags"></i> $CategoriesList</li>
									</ul>
									<h3>
										<a href="$Link">$Title</a>
									</h3>
									<p><% if $Teaser %>$Teaser<% else %>$Content.FirstSentence<% end_if %></p>
								</div>
							</div>
						<% end_loop %>
						</div>
						
						<div class="center"><a href="#" class="btn btn-default-color">View All News</a></div>
					</div>
					<!-- END MAIN CONTENT -->
					
					<!-- BEGIN SIDEBAR -->
					<div class="sidebar col-sm-4">
						
						<!-- BEGIN SIDEBAR ABOUT -->
						<div class="col-sm-12">
							<h2 class="section-title">Last minute deals</h2>
							<ul class="latest-news">
							<li class="col-md-12">
								<div class="image">
									<a href="blog-detail.html"></a>
									<img alt="" src="http://placehold.it/100x100">
								</div>
								
								<ul class="top-info">
									<li><i class="fa fa-calendar"></i>Available Now</li>
								</ul>
									
								<h4><a href="blog-detail.html">Private Beach</a><p>Lossarnach, Eriado</p></h4>
							</li>
							<li class="col-md-12">
								<div class="image">
									<a href="blog-detail.html"></a>
									<img alt="" src="http://placehold.it/100x100">
								</div>
								
								<ul class="top-info">
									<li><i class="fa fa-calendar"></i>Available on 24 July</li>
								</ul>
									
								<h4><a href="blog-detail.html">Mountain views</a><p>Hyarnustar, Rhovanion</p></h4>
							</li>
							<li class="col-md-12">
								<div class="image">
									<a href="blog-detail.html"></a>
									<img alt="" src="http://placehold.it/100x100">
								</div>
								
								<ul class="top-info">
									<li><i class="fa fa-calendar"></i>Available 5 July</li>
								</ul>
								
								<h4><a href="blog-detail.html">Heart of the village</a><p>Minhiriath, Eriador</p></h4>
							</li>
							<li class="col-md-12">
								<div class="image">
									<a href="blog-detail.html"></a>
									<img alt="" src="http://placehold.it/100x100">
								</div>
								
								<ul class="top-info">
									<li><i class="fa fa-calendar"></i>Available 6 July</li>
								</ul>
								
                <h4><a href="blog-detail.html">The city life</a><p>West Beleriand, Mordor</p></h4>
							</li></ul>
							<p class="center"><a class="btn btn-fullcolor" href="#">More deals</a></p>
						</div>
						<!-- END SIDEBAR ABOUT -->
						<div class="col-sm-12">
							<h2 class="section-title">Activity</h2>
							<ul class="activity">
								<li class="col-lg-12">
									<a href="#"><img src="http://placehold.it/70x70" alt="" /></a>
									<div class="info">										
										<h5>Sam Minnée reviewed <a href="#">The House With No Windows</a></h4>
										<p>Awesome solitary confinement, mate. Spot on. Sweet as.</p>
										<h6>Just now</h6>
									</div>
								</li>
								<li class="col-lg-12">
									<a href="#"><img src="http://placehold.it/70x70" alt="" /></a>
									<div class="info">
										<h5>Ingo Schoomer asked a question about <a href="#">The Mistake by the Lake</a></h4>
										<p>Has this house been unit tested?</p>
										<h6>37 minutes ago</h6>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- END SIDEBAR -->
					
				</div>
			</div>
		</div>
		<!-- END CONTENT WRAPPER -->
		<script type="text/javascript">
			function tambah(){
			    $('#tabel-agen').hide();
			    $('#form-agen').show();			
			}
			function cancel(){
			    $('#tabel-agen').show();
			    $('#form-agen').hide();
			}
			function tambah_fasilitas(){
			    $('#tabel-fasilitas').hide();
			    $('#form-fasilitas').show();			
			}
			function cancel_fasilitas(){
			    $('#tabel-fasilitas').show();
			    $('#form-fasilitas').hide();
			}
			function tambah_kategori(){
			    $('#tabel-kategori').hide();
			    $('#form-kategori').show();			
			}
			function cancel_kategori(){
			    $('#tabel-kategori').show();
			    $('#form-kategori').hide();
			}
			function tambah_properti(){
			    $('#tabel-properti').hide();
			    $('#form-properti').show();			
			}
			function cancel_properti(){
			    $('#tabel-properti').show();
			    $('#form-properti').hide();
			}
			function hapus(hapusnya,linknya){
		    	$.ajax({
		          url: linknya,
		          type:"POST",
		          data:{'hapusnya':hapusnya},
		          success: function(data)
		          {
		              location.reload();
		          }
		      });
		    }
		    function edit(linknya,editnya){
		    	$.ajax({
		          url:linknya,
		          type:"POST",
		          data:{'editnya':editnya},
		          dataType:"json",
		          success: function(data)
		          {
		          	$('#tabel-agen').hide();
			    	$('#form-agen').show();
		          	$('#nama_agen').val(data.Name);
		          	$('#alamat_agen').val(data.Address);
		          	$('#tlp_agen').val(data.Phone);
		          	$('#id_agen').val(data.ID);
		          }
		      	});
		    }
		    function simpan(linknya){
		    	$("#detail-tambah").click(function(evt){
			        evt.preventDefault();
			        var formData = new FormData($(this)[0]);
			        $.ajax({
			            url: linknya,
			            type: 'POST',
			            data: formData,
			            async: false,
			            cache: false,
			            contentType: false,
			            enctype: 'multipart/form-data',
			            processData: false,
			            success: function (data) {
			            	alert(data);
			             	location.reload();
			            }
			        });
			        return false;
			    });
		    }
		    function edit_fasilitas(linknya,editnya){
		    	$.ajax({
		          url:linknya,
		          type:"POST",
		          data:{'editnya':editnya},
		          dataType:"json",
		          success: function(data)
		          {
		          	$('#tabel-fasilitas').hide();
			    	$('#form-fasilitas').show();
		          	$('#nama_fasilitas').val(data.Name);
		          	$('#id_fasilitas').val(data.ID);
		          }
		      	});
		    }
		    function simpan1(linknya){
		    	$("#detail-tambah1").click(function(evt){
			        evt.preventDefault();
			        var formData = new FormData($(this)[0]);
			        $.ajax({
			            url: linknya,
			            type: 'POST',
			            data: formData,
			            async: false,
			            cache: false,
			            contentType: false,
			            enctype: 'multipart/form-data',
			            processData: false,
			            success: function (data) {
			            	alert(data);
			             	location.reload();
			            }
			        });
			        return false;
			    });
		    }
		    function edit_kategori(linknya,editnya){
		    	$.ajax({
		          url:linknya,
		          type:"POST",
		          data:{'editnya':editnya},
		          dataType:"json",
		          success: function(data)
		          {
		          	$('#tabel-kategori').hide();
			    	$('#form-kategori').show();
		          	$('#nama_kategori').val(data.Name);
		          	$('#id_kategori').val(data.ID);
		          }
		      	});
		    }
			function simpan2(linknya){
		    	$("#detail-tambah2").click(function(evt){
			        evt.preventDefault();
			        var formData = new FormData($(this)[0]);
			        $.ajax({
			            url: linknya,
			            type: 'POST',
			            data: formData,
			            async: false,
			            cache: false,
			            contentType: false,
			            enctype: 'multipart/form-data',
			            processData: false,
			            success: function (data) {
			            	alert(data);
			             	location.reload();
			            }
			        });
			        return false;
			    });
		    }
		    function edit_properti(linknya,editnya){
		    	$.ajax({
		          url:linknya,
		          type:"POST",
		          data:{'editnya':editnya},
		          dataType:"json",
		          success: function(data)
		          {
		          	$('#alamat_properti').val(data.Address);
		          	$('#full_alamat').val(data.AddressFull);
		          	$('#tlp_properti').val(data.Phone);
		          	$('#nama_vendor').val(data.VendorNan);
		          	$('#tlp_vendor').val(data.VendorPhone);
		          	$('#kategori_id').val(data.CategoryID).change();
		          	$('#id_properti').val(data.ID);
		          	$('#tabel-properti').hide();
			    	$('#form-properti').show();
		          }
		      	});
		    }
			function simpan3(linknya){
		    	$("#detail-tambah3").click(function(evt){
			        evt.preventDefault();
			        var formData = new FormData($(this)[0]);
			        $.ajax({
			            url: linknya,
			            type: 'POST',
			            data: formData,
			            async: false,
			            cache: false,
			            contentType: false,
			            enctype: 'multipart/form-data',
			            processData: false,
			            success: function (data) {
			            	alert(data);
			             	location.reload();
			            }
			        });
			        return false;
			    });
		    }
		    function test1(){
		    	var asal = $('#select_kota').val();
		    	var tujuan = $('#select_kota_tujuan').val();
		    	var berat = $('#harganya').val();
		    	var kurir = $('#kurir').val();
		        $.ajax({
			       	url: 'travel-guides/tampilharga/',
					type: 'POST',
			       	data:  {'asal':asal,'tujuan':tujuan,'berat':berat,'kurir':kurir},
			       	success: function(data){
			        	$("#tampilharga").html(data);
			        }
			    }) 
		    }
		    $(document).ready(function() {
		       $.ajax({
		          url:'travel-guides/tampildataprovinsi/',
		          type:"POST",
		          success: function(data)
		          {
		          	 $("#select_provinsi").html(data);	
		          	 $("#provinsi").show();	
		          	 $("#select_provinsi").show();	
		          	 $("#select_provinsi_chzn").hide();	
		          	 $("#select_provinsi_tujuan").html(data);	
		          	 $("#provinsi_tujuan").show();	
		          	 $("#select_provinsi_tujuan").show();	
		          	 $("#select_provinsi_tujuan_chzn").hide();	

		          }
		      	});
		    });
		    $('#select_provinsi').on('change', function() {
		        var provinsinya = $(this).val();
		        $.ajax({
			       	url: 'travel-guides/tampildatakota/',
					type: 'POST',
			       	data:  {'provinsinya':provinsinya},
			       	success: function(data){
			        	$("#select_kota").html(data);
			        	$("#select_kota").show();
			        	$("#select_kota_chzn").hide();
			        }
			    })
		    });
		    $('#select_provinsi_tujuan').on('change', function() {
		        var provinsinya = $(this).val();
		        $.ajax({
			       	url: 'travel-guides/tampildatakota/',
					type: 'POST',
			       	data:  {'provinsinya':provinsinya},
			       	success: function(data){
			        	$("#select_kota_tujuan").html(data);
			        	$("#select_kota_tujuan").show();
			        	$("#select_kota_tujuan_chzn").hide();
			        }
			    })
		    });
		</script>
		