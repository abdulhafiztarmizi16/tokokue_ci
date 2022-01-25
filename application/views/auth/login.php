<div class="container">
	<?= $this->session->flashdata('message'); ?>
	<form class="form-login" method="post" action="<?= base_url('auth'); ?>">
		<h2 class="form-login-heading">Login AF4BAKERY</h2>
		<div class="login-wrap">
			<input type="text" class="form-control form-control-form-login" value="<?= set_value('email'); ?>" id="email" name="email" placeholder="Masukkan Alamat Email...">
			<?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
		</div>
		<div class="login-wrap">
			<input type="password" class="form-control form-control-form-login" value="<?= set_value('nama'); ?>" name="password" id="password" placeholder="Password">
			<?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>

			<label class="checkbox">
				<input type="checkbox" value="remember-me"> Remember me
				<span class="pull-right">
					<a data-toggle="modal" href=""> Forgot Password?</a>
				</span>
			</label>
		</div>
		<button type="submit" class="btn btn-theme btn-primary btn-form-login btn-block" class="fa fa-lock">
			Login
		</button>
		<hr>
		<div class="text-center">
			<div class="registration">
				Don't have an account yet?<br />
				<a class="" href="<?= base_url(); ?>auth/registrasi">
					Create an account
				</a>
			</div>
		</div>
		<hr>
		<p class="footer-text text-center">copyright © 2021 Bootstrapdash.</p>
		<p class="footer-text text-center text-center"><a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank"> Free Bootstrap template </a> from BootstrapDash templates</p>
	</form>
</div>
