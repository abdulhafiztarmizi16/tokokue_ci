<section id="main-content">
	<section class="wrapper site-min-height">
		<div class="container-fluid">
			<!-- Page Heading -->
			<h1 class="h3 mb-4 text-gray-800"><?= $judul; ?></h1>
			<div class="row">
				<?= $this->session->flashdata('message');
				?>
				<div class="col-md-12">
					<?php $i = 1; ?>
					<?php foreach ($kue as $us) : ?>
						<div class="col-md-4 col-sm-4 mb">

							<div class="darkblue-panel pn">
								<div class="darkblue-header">

									<h5><?= $us['nama'] ?></h5>
								</div>
								<img style="width:100px; height:100px;" src="<?= base_url('assets/img/kue/') . $us['gambar']; ?>"></img>
								<p><?= $us['tanggal'] ?></p>
								<footer>
									<div class="pull-left">
										<h5>Rp.<?= $us['harga'] ?></h5>
									</div>
									<div class="pull-right">
										<h5>Jumlah: <?= $us['stok'] ?></h5>
									</div>
									<a href="<?= base_url('Profil/keranjang/') . $us['id'] ?>" class="badge badge-warning badge-block">Beli</a>
								</footer>
							</div>
							<!--  /darkblue panel -->
						</div>
					<?php endforeach ?>
				</div>
			</div>
		</div>
	</section>
</section>
