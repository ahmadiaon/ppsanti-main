/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.25-MariaDB : Database - db_aplikasi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_aplikasi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_aplikasi`;

/*Table structure for table `tb_kuis` */

DROP TABLE IF EXISTS `tb_kuis`;

CREATE TABLE `tb_kuis` (
  `id_kuis` int(11) NOT NULL,
  `nomor` int(11) DEFAULT NULL,
  `soal_kuis` varchar(600) DEFAULT NULL,
  `jawab_a` varchar(200) DEFAULT NULL,
  `jawab_b` varchar(200) DEFAULT NULL,
  `jawab_c` varchar(200) NOT NULL,
  `jawaban` enum('a','b','c') NOT NULL,
  PRIMARY KEY (`id_kuis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_kuis` */

insert  into `tb_kuis`(`id_kuis`,`nomor`,`soal_kuis`,`jawab_a`,`jawab_b`,`jawab_c`,`jawaban`) values 
(11,NULL,'Apa Bahasa Inggris Buah Apel','pineapple','apple','banana','b'),
(12,NULL,'B-A-N-A-N-A \r\nDi bawah ini yang merupakan teks diatas adalah','BANANA','WATERMELON','APPLE','a'),
(13,NULL,'Bahasa Inggrisnya SINGA adalah','Tiger','Lion','Wolf','b');

/*Table structure for table `tb_lagu` */

DROP TABLE IF EXISTS `tb_lagu`;

CREATE TABLE `tb_lagu` (
  `id_lagu` int(11) NOT NULL,
  `judul_lagu` varchar(50) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `link_lagu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_lagu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_lagu` */

insert  into `tb_lagu`(`id_lagu`,`judul_lagu`,`tanggal`,`link_lagu`) values 
(0,'Head shoulger knees and toes','2022-11-13 15:29:41','https://youtu.be/1io44ucVgtI'),
(1,'Lagu Alphabet Bahasa Inggris','2022-11-13 15:31:47','https://youtu.be/LGjC_yiaTjc'),
(2,'Mengenal Buah-Buahan Dalam Bahasa Inggris','2022-11-13 15:34:16','https://youtu.be/0jHDwRzDEk8');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `password_user` varchar(255) DEFAULT NULL,
  `level_user` enum('admin','siswa') DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`nama_user`,`email_user`,`password_user`,`level_user`,`nama_lengkap`,`alamat`,`no_hp`) values 
(0,'Selly','selly67@gmail.com','25d55ad283aa400af464c76d713c07ad','siswa','Selly','jl.guramr','082143567899'),
(1,'admin','santiselly59@gmail.com','12345678','admin','santi','jl.gurame','082155136299'),
(2,'santi1','santi01@mhs.eng.upr.ac.id','b717415eb5e699e4989ef3e2c4e9cbf7','admin','santisanti','jl.gurame induk','082155136299'),
(5,'admin','admin','fcea920f7412b5da7be0cf42b8c93759','admin','siandra','jl.tjilik riwut km.18','082198616604');

/*Table structure for table `tb_video` */

DROP TABLE IF EXISTS `tb_video`;

CREATE TABLE `tb_video` (
  `id_video` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `judul_video` varchar(50) DEFAULT NULL,
  `link_video` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_video` */

insert  into `tb_video`(`id_video`,`tanggal`,`judul_video`,`link_video`) values 
(0,'2022-11-06','Video Game Bahasa Inggris','https://youtu.be/fguLqA7u2ZI'),
(1,'2022-11-13','ABJAD','https://youtu.be/-292I9naeH8'),
(2,'2022-11-13','ANGKA','https://youtu.be/A2qAMy2exTI'),
(3,'2022-11-13','Mengenal Hewan','https://youtu.be/c9fbuARCE9Y'),
(4,'2022-11-13',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
