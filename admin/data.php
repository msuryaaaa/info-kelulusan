<?php
session_start();
if (isset($_SESSION['logged']) && !empty($_SESSION['logged'])) {
	include "../database.php";
	include '_header.php';
?>

	<div class="container">
		<h2>Data Kelulusan</h2>
		<hr>
		<div class="row col-sm-8">
			<form class="form-horizontal well" method="post" action="data_upload.php" enctype="multipart/form-data">
				<div class="form-group">
					<label for="importCsv" class="col-sm-3 control-label">CSV/Excel File</label>
					<div class="col-sm-9">
						<div class="fileinput fileinput-new input-group" data-provides="fileinput">
							<div class="form-control" data-trigger="fileinput">
								<i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span>
							</div>
							<span class="input-group-addon btn btn-default btn-file">
								<span class="fileinput-new">Pilih file</span>
								<span class="fileinput-exists">Ganti</span>
								<input type="file" name="file">
							</span>
							<a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Buang</a>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-9">
						<button type="submit" name="submit" class="btn btn-default">Upload</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th rowspan="2" style="text-align:center">No</th>
						<th rowspan="2" style="text-align:center">NIS</th>
						<th rowspan="2" style="text-align:center">NISN</th>
						<th rowspan="2" style="text-align:center">Nama Siswa</th>
						<th rowspan="2" style="text-align:center">Kelas</th>
						<th rowspan="2" style="text-align:center">Kriteria1</th>
						<th rowspan="2" style="text-align:center">Kriteria2</th>
						<th rowspan="2" style="text-align:center">Kriteria3</th>
						<th rowspan="2" style="text-align:center">Status</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$batas = 50;
					$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
					$halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

					$previous = $halaman - 1;
					$next = $halaman + 1;

					$qsiswa = mysqli_query($db_conn, "SELECT * FROM un_siswa ORDER BY jur,nama");
					$jumlah_data = mysqli_num_rows($qsiswa);
					$total_halaman = ceil($jumlah_data / $batas);


					$data_qsiswa = mysqli_query($db_conn, "SELECT * FROM un_siswa ORDER BY jur,nama limit $halaman_awal, $batas");
					$no = $halaman_awal + 1;


					if (mysqli_num_rows($data_qsiswa) > 0) {
						while ($data = mysqli_fetch_array($data_qsiswa)) {
							echo '<tr>';
							echo '<td>' . $no++;
							echo '<td>' . $data['no_nis'] . '</td>';
							echo '<td>' . $data['no_nisn'] . '</td>';
							echo '<td>' . $data['nama'] . '</td>';
							echo '<td style="text-align:center">' . $data['jur'] . '</td>';
							echo '<td style="text-align:center">' . $data['kriteria1'] . '</td>';
							echo '<td style="text-align:center">' . $data['kriteria2'] . '</td>';
							echo '<td style="text-align:center">' . $data['kriteria3'] . '</td>';
							echo '<td style="text-align:center">';
							echo ($data['status'] == 1) ? '<b>Lulus<b>' : '<em>Tidak Lulus</em>';
							echo '</td>';
							echo '</tr>';
						}
					} else {
						echo '<tr><td colspan="8"><em>Belum ada data! Segera lakukan upload data.</em></td></tr>';
					}
					?>
				</tbody>
			</table>
			<nav>
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" <?php if ($halaman > 1) {
													echo "href='?halaman=$previous'";
												} ?>>Previous</a>
					</li>
					<?php
					for ($x = 1; $x <= $total_halaman; $x++) {
					?>
						<li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
					<?php
					}
					?>
					<li class="page-item">
						<a class="page-link" <?php if ($halaman < $total_halaman) {
													echo "href='?halaman=$next'";
												} ?>>Next</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
<?php
	include '_footer.php';
} else {
	header('Location: ./login.php');
}
?>