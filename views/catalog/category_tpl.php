<!-- header -->
<?php include ROOT.'/views/layouts/header.php';?>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>
					<div class="panel-group category-products" id="accordian"><!--category-productsr-->

						<?php foreach ($categories as $category):?>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="/catalog/<?=$category['id']?>">
											<?=$category['name']?>
										</a>
									</h4>
								</div>
							</div>
						<?php endforeach;?>

					</div><!--/category-products-->

					<div class="brands_products"><!--brands_products-->
						<h2>Brands</h2>
						<div class="brands-name">
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#"> <span class="pull-right">(50)</span>Acne</a></li>
								<li><a href="#"> <span class="pull-right">(56)</span>Grüne Erde</a></li>
								<li><a href="#"> <span class="pull-right">(27)</span>Albiro</a></li>
								<li><a href="#"> <span class="pull-right">(32)</span>Ronhill</a></li>
								<li><a href="#"> <span class="pull-right">(5)</span>Oddmolly</a></li>
								<li><a href="#"> <span class="pull-right">(9)</span>Boudestijn</a></li>
								<li><a href="#"> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
							</ul>
						</div>
					</div><!--/brands_products-->

					<div class="price-range"><!--price-range-->
						<h2>Price Range</h2>
						<div class="well text-center">
							<input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
							<b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
						</div>
					</div><!--/price-range-->

				</div>
			</div>

			<div class="col-sm-9 padding-right">
				<div class="features_items"><!--features_items-->

					<h2 class="title text-center">Features Items</h2>

					<?php foreach($categoryProducts as $product):?>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href="/product/<?=$product['id']?>">
											<img src="/template/images/home/product3.jpg" alt="" />
										</a>
										<h2><?=$product['price']?>$</h2>
										<a href="/product/<?=$product['id']?>">
											<p><?=$product['name']?></p>
										</a>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<?php if($product['is_new']):?>
										<img src="/template/images/home/new.png" class="new" alt="">
									<?php endif;?>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
									<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
								</ul>
							</div>
						</div>
					<?php endforeach;?>

				</div><!--features_items-->



			</div>
		</div>
	</div>
</section>

<!--Footer-->
<?php include ROOT.'/views/layouts/footer.php';?>