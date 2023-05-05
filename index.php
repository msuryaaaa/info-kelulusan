<?php
include "database.php";
$que = mysqli_query($db_conn, "SELECT * FROM un_konfigurasi");
$hsl = mysqli_fetch_array($que);
$timestamp = strtotime($hsl['tgl_pengumuman']);
//echo $timestamp;

?>
<!DOCTYPE html>
<html>

<head>
	<link rel="icon" type="image/png" href="img/myicon.png" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="aplikasi sederhana untuk menampilkan pengumuman hasil ujian nasional secara online">
	<meta name="author" content="slamet.bsan@gmail.com">
	<title>Pengumuman Kelulusan Siswa</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/jasny-bootstrap.min.css" rel="stylesheet">
	<link href="css/kelulusan.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="./">Pengumuman Kelulusan Siswa</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="./">Home</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">
		<h3><strong>Pengumuman Kelulusan Siswa SMAN 15 Bandung Tahun <?= $hsl['tahun'] ?></strong></h3>
		<!-- countdown -->

		<div id="clock" class="lead"></div>


		<div id="xpengumuman">
			<?php
			if (isset($_REQUEST['submit'])) {
				//tampilkan hasil queri jika ada
				$no_nisn = $_REQUEST['nomor'];

				$hasil = mysqli_query($db_conn, "SELECT * FROM un_siswa WHERE no_nisn='$no_nisn'");
				if (mysqli_num_rows($hasil) > 0) {
					$data = mysqli_fetch_array($hasil);

			?>
					<table class="table table-bordered">
						<tr>
							<td>NISN</td>
							<td><?php echo $data['no_nisn']; ?></td>
						</tr>
						<tr>
							<td>NIS</td>
							<td><?php echo $data['no_nis']; ?></td>
						</tr>
						<tr>
							<td>Nama Siswa</td>
							<td><?php echo $data['nama']; ?></td>
						</tr>
						<tr>
							<td>Kelas</td>
							<td><?php echo $data['jur']; ?></td>
						</tr>
						<tr align="center">
							<td colspan="2">
								<h4><strong>KRITERIA KELULUSAN</strong></h4>
							</td>
						</tr>
						<tr>
							<td>SEM 1 - 6</td>
							<td><?php echo $data['kriteria1']; ?></td>
						</tr>
						<tr>
							<td>Perilaku</td>
							<td><?php echo $data['kriteria2']; ?></td>
						</tr>
						<tr>
							<td>PSAJ</td>
							<td><?php echo $data['kriteria3']; ?></td>
						</tr>
					</table>

					<?php
					if ($data['status'] == 1) {
						echo '<div class="alert alert-success" role="alert"><strong>SELAMAT !</strong> Anda dinyatakan <strong>LULUS</strong> pada Tahun Pelajaran 2022/2023 di SMA Negeri 15 Bandung dengan <strong>Kriteria Kelulusan</strong> di atas.</div>';
					} else {
						echo '<div class="alert alert-danger" role="alert"><strong>MAAF !</strong> Anda dinyatakan <strong>TIDAK LULUS</strong> pada Tahun Pelajaran 2022/2023 di SMA Negeri 15 Bandung. TETAP SEMANGAT!.</div>';
					}
					?>


				<?php
				} else {
					echo '<strong>Nomor NISN</strong> yang anda inputkan tidak ditemukan! periksa kembali <strong>Nomor NISN</strong> anda.';
					//tampilkan pop-up dan kembali tampilkan form
				}
			} else {
				//tampilkan form input nomor ujian
				?>
				<p>Masukkan NISN pada form yang disediakan.</p>

				<form method="post">
					<div class="input-group">
						<input type="text" name="nomor" class="form-control" data-mask="9999999999" placeholder="Masukkan NISN" required>
						<span class="input-group-btn">
							<button class="btn btn-primary" type="submit" name="submit">Periksa!</button>
						</span>
					</div>
				</form>
			<?php
			}
			?>
		</div>
	</div><!-- /.container -->

	<footer class="footer">
		<div class="container">
			<p class="text-muted">&copy; <?= $hsl['tahun'] ?> &middot; Tim IT <?= $hsl['sekolah'] ?></p>
		</div>
	</footer>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jasny-bootstrap.min.js"></script>
	<script type="text/javascript">
		var skrg = Date.now();
		$('#clock').countdown("<?= $hsl['tgl_pengumuman'] ?>", {
				elapse: true
			})
			.on('update.countdown', function(event) {
				var $this = $(this);
				if (event.elapsed) {
					$("#xpengumuman").show();
					$("#clock").hide();
				} else {
					$this.html(event.strftime('<strong>%H</strong> Jam <strong>%M</strong> Menit <strong>%S</strong> Detik Lagi Menuju Pengumuman Kelulusan'));
					$("#xpengumuman").hide();
				}
			});
	</script>
</body>

</html>