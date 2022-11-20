<?php 
  
  include('koneksi.php');
  
  $id = $_GET['id'];
  
  $query = "SELECT * FROM tb_video WHERE id_video = $id";

  $result = mysqli_query($koneksi, $query);

  $row = mysqli_fetch_array($result);

  ?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Edit Siswa</title>
  </head>

  <body>

    <div class="container" style="margin-top: 80px">
      <div class="row">
        <div class="col-md-8 offset-md-2">
          <div class="card">
            <div class="card-header">
              EDIT VIDEO
            </div>
            <div class="card-body">
              <form action="video.php" method="POST">
                
                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="text" name="tanggal" value="<?php echo $row['tanggal'] ?>" placeholder="Masukkan Tanggal class="form-control”>
                  <input type="hidden" name="id_video" value="<?php echo $row['id_video'] ?>">
                </div>

                <div class="form-group">
                  <label>Judul Video</label>
                  <input type="text" name="judul" value="<?php echo $row['judul_video'] ?>" placeholder="Masukkan Judul" class="form-control">
                </div>

                <div class="form-group">
                  <label>Link Video</label>
                  <textarea class="form-control" name="link" placeholder="Masukkan Link Video " rows="4"><?php echo $row['link_video'] ?></textarea>
                </div>
                
                <button type="submit" class="btn btn-success">UPDATE</button>
                <button type="reset" class="btn btn-warning">RESET</button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  </body>
</html>