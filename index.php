    <?php include 'header.php'; ?>

    <!-- bagian banner -->
    <div class="banner" style="background-image: url('uploads/identitas/<?= $d->foto_sekolah ?>');">
       <div class="container">
         <div class="banner-text">
            <div class="container">
              <h3>Selamat datang di <?= $d->nama ?></h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
              Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
       </div> 
    </div>    
  </div>

  <!-- bagian sambutan -->
  <div class="section">
    <div class="container text-center">
      <h3>Sambutan Kepala Sekolah</h3>
      <img src="uploads/identitas/<?= $d->foto_kepsek ?>" width="250px">
      <h4><?= $d->nama_kepsek ?></h4>
      <p><?= $d->sambutan_kepsek ?></p>
    </div>
  </div>

  <!-- bagian jurusan -->
  <div class="section" id="jurusan">

    <div class="container text-center">
       <h3>Jurusan Sekolah</h3>

       <?php
          $jurusan = mysqli_query($conn, "SELECT * FROM jurusan ORDER BY id DESC");
          if(mysqli_num_rows($jurusan) > 0){
            while($j = mysqli_fetch_array($jurusan)){
       ?>

       <div class="col-4">
            <a href="detail-jurusan.php?id=<?= $j['id'] ?>" class="thumbnail-link">
            <div class="thumbnail-box">
                <div class="thumbnail-img" style="background-image: url('uploads/jurusan/<?= $j['gambar'] ?>');">
                   
                </div>

                <div class="thumbnail-text">
                        <?= $j['nama'] ?>
                </div>
            </div>
            </a>
       </div>

    <?php }}else{ ?>
          Tidak ada data
        <?php } ?>
    </div>

  </div>

  <!-- bagian informasi -->
  <div class="section">
    <div class="container text-center">
        <h3>Informasi Terbaru</h3>

        <?php
          $informasi = mysqli_query($conn, "SELECT * FROM informasi ORDER BY id DESC LIMIT 8");
          if(mysqli_num_rows($informasi) > 0) {
              while($p = mysqli_fetch_array($informasi)) {
       ?>

       <div class="col-4">
            <a href="detail-informasi.php?id=<?= $p['id'] ?>" class="thumbnail-link">
            <div class="thumbnail-box">
                <div class="thumbnail-img" style="background-image: url('uploads/informasi/<?= $p['gambar'] ?>');">
                   
                </div>

                <div class="thumbnail-text">
                        <?= substr($p['judul'], 0, 50) ?>
                </div>
            </div>
            </a>
       </div>

    <?php }}else{ ?>
          Tidak ada data
        <?php } ?>
    </div>

    </div>
    <?php include 'footer.php'; ?>

  