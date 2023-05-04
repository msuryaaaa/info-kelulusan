-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 03, 2021 at 11:44 AM
-- Server version: 10.3.10-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smanbdgs_pdss`
--

-- --------------------------------------------------------

--
-- Table structure for table `un_konfigurasi`
--

CREATE TABLE `un_konfigurasi` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_konfigurasi`
--

INSERT INTO `un_konfigurasi` (`id`, `sekolah`, `tahun`, `tgl_pengumuman`) VALUES
(2, 'SMAN 15 BANDUNG', 2021, '2021-01-27 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `un_siswa`
--

CREATE TABLE `un_siswa` (
  `no_nis` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jur` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_siswa`
--

INSERT INTO `un_siswa` (`no_nis`, `nama`, `jur`, `status`) VALUES
('171810002', 'AMANDA INDAH PUTRI', 'XII IBB', 1),
('181910001', 'AHMAD REZA AFANDI', 'XII IBB', 0),
('181910003', 'ALMI SUPRIYATI INTAN', 'XII IBB', 1),
('181910004', 'AMANDA APRYAMARDA', 'XII IBB', 0),
('181910005', 'ANDINA SYIFA NURACHMA', 'XII IBB', 0),
('181910006', 'ANNISA NURBAITI KHIMAR', 'XII IBB', 1),
('181910007', 'AZHAR DZULFIKAR', 'XII IBB', 0),
('181910009', 'CHAIRUNNISSA SYAFARINA', 'XII IBB', 0),
('181910010', 'DANI LUTFIE PRINANDIA', 'XII IBB', 0),
('181910011', 'DEDEN MUHAMMAD ABDUL KHOHAR', 'XII IBB', 0),
('181910012', 'DHEANDRA HALWA GHASSANI', 'XII IBB', 1),
('181910013', 'ERIGIDHIA HENDRA PRATAMA', 'XII IBB', 0),
('181910014', 'FARHAN KUSUMAWARDHANA', 'XII IBB', 0),
('181910015', 'FIRDA FAUJIAH', 'XII IBB', 0),
('181910016', 'FIRMANSYAH', 'XII IBB', 1),
('181910018', 'KHARISMA PUTRI NUR FATIMA', 'XII IBB', 1),
('181910019', 'MUHAMAD RAFI ARYAPUTRA RAHMATULLAH', 'XII IBB', 0),
('181910021', 'MUHAMMAD RAIHAN FASYA', 'XII IBB', 1),
('181910022', 'MUTHIA DEWI ANDRIANI', 'XII IBB', 0),
('181910024', 'NADILA PUTRI LESTARI', 'XII IBB', 0),
('181910025', 'NAJWA NUR AFIFA', 'XII IBB', 1),
('181910026', 'NARA FAIZ SASKARA', 'XII IBB', 1),
('181910027', 'ORWITA NOVALINA', 'XII IBB', 1),
('181910029', 'SALWA TSABITAH NAVISA EKA PUTRI', 'XII IBB', 1),
('181910030', 'SEPTIAN REY NUGRAHA', 'XII IBB', 0),
('181910031', 'SITI NURHIKMAH', 'XII IBB', 0),
('181910032', 'TIARA FASYA MANIKA', 'XII IBB', 1),
('181910033', 'VARZHA FEBRIANA', 'XII IBB', 0),
('181910034', 'ABDUL FATAH HOERUDIN', 'XII IPS 1', 0),
('181910035', 'ANISSA JULIANTI HIDAYAT', 'XII IPS 1', 0),
('181910036', 'CHANDRA SURYA ADITYA', 'XII IPS 1', 0),
('181910037', 'CINTHYA GINOVA CIPTADY PUTRI', 'XII IPS 1', 1),
('181910039', 'DEANDRA NAJA MAHARANI', 'XII IPS 1', 1),
('181910040', 'DEVIRA APRILIANI', 'XII IPS 1', 1),
('181910041', 'DISHA NURAISYA', 'XII IPS 1', 1),
('181910042', 'FIRANI SYAKIRAH', 'XII IPS 1', 1),
('181910043', 'FITRIYANI', 'XII IPS 1', 1),
('181910044', 'GITHA FATHIA AULIANI', 'XII IPS 1', 1),
('181910045', 'HALWI SAMROTUL FUADAH', 'XII IPS 1', 1),
('181910046', 'HARIS DAUD MAULANA', 'XII IPS 1', 0),
('181910047', 'IHSAN FAJRIA TSALATS', 'XII IPS 1', 0),
('181910048', 'MUHAMAD RIDWAN FIRDAUS', 'XII IPS 1', 0),
('181910049', 'MUHAMAD RIVALDO ADLI FAUZAN', 'XII IPS 1', 0),
('181910050', 'NABILA ARWA PUTRINADYA', 'XII IPS 1', 1),
('181910051', 'NISA SA\'BANIAH', 'XII IPS 1', 0),
('181910052', 'NOVIA CHOERUNNISSA', 'XII IPS 1', 1),
('181910053', 'PERANICA DEACOSTA GABRILA', 'XII IPS 1', 1),
('181910054', 'PHOEBE MELATI PUTRI', 'XII IPS 1', 0),
('181910055', 'PIPIH YANUARTI', 'XII IPS 1', 1),
('181910056', 'RAFINA JULIANTINI', 'XII IPS 1', 1),
('181910058', 'RIZALU DWI PUTRA', 'XII IPS 1', 0),
('181910059', 'RULLY FIRMANSYAH', 'XII IPS 1', 0),
('181910060', 'RUTH TIURMA TESALONIKA', 'XII IPS 1', 1),
('181910061', 'SATRIO RAFAEL B', 'XII IPS 1', 0),
('181910062', 'SHAIRA AULIA MELANI', 'XII IPS 1', 0),
('181910063', 'SITI ASSYIFA NURHASANAH', 'XII IPS 1', 1),
('181910064', 'SITI NABILA NUR ROSIDIN', 'XII IPS 1', 0),
('181910065', 'SITI SOPIAH', 'XII IPS 1', 0),
('181910066', 'SYAHRIL AKASAH SENOAJI', 'XII IPS 1', 1),
('181910067', 'YEHEZKIEL GERSON', 'XII IPS 1', 0),
('181910068', 'ADESTHA PUTRA WIJAN', 'XII IPS 2', 0),
('181910069', 'ADNAN WIJAYA SOLAHUDIN', 'XII IPS 2', 0),
('181910070', 'AZKIA NASYWA LUTFIA', 'XII IPS 2', 1),
('181910071', 'BINTANG ANRI HAPIT', 'XII IPS 2', 0),
('181910072', 'BUNGA PUTRI GUNAWAN', 'XII IPS 2', 1),
('181910073', 'DIAN HERDIANSYAH', 'XII IPS 2', 0),
('181910074', 'DIVVASTI AQILLA', 'XII IPS 2', 1),
('181910075', 'DWI MAISYARAH', 'XII IPS 2', 1),
('181910076', 'FARIDA MUSTIKA', 'XII IPS 2', 0),
('181910077', 'FEBI NATASYA', 'XII IPS 2', 0),
('181910078', 'GHUFRAN MUHAMMAD RIZQULLAH', 'XII IPS 2', 0),
('181910079', 'HILMANSYAH', 'XII IPS 2', 0),
('181910080', 'HYESHA PEBRIANA', 'XII IPS 2', 1),
('181910081', 'IRSA RISMAYA', 'XII IPS 2', 1),
('181910082', 'KIARA SHAFIRA SOERIAATMADJA', 'XII IPS 2', 1),
('181910083', 'KINANTI PUTRI KUSUMAH LESTARI', 'XII IPS 2', 1),
('181910085', 'MUHAMMAD DITO YULIANTO', 'XII IPS 2', 1),
('181910086', 'MUHAMMAD JAISYUL MUJADDID ENSY', 'XII IPS 2', 0),
('181910087', 'NAZWA ZAHRANTI MEDINA GARNA', 'XII IPS 2', 1),
('181910088', 'NEVAL RAFNI WAHYUDI', 'XII IPS 2', 1),
('181910089', 'NICHOLAS DWI NUGROHO AGUNG', 'XII IPS 2', 1),
('181910090', 'PUTRI AWALIA RAMADHANI', 'XII IPS 2', 1),
('181910091', 'QIESSA SOFFI KHALILLAH', 'XII IPS 2', 1),
('181910092', 'RAZAQA DIFAN PRATAMA', 'XII IPS 2', 0),
('181910093', 'REGINA PUTRI SOPANDI', 'XII IPS 2', 0),
('181910094', 'RIFKI KHOERULFALLAH', 'XII IPS 2', 0),
('181910095', 'SALMA LATHIFAH SANI', 'XII IPS 2', 1),
('181910096', 'SITI JUBAEDAH', 'XII IPS 2', 0),
('181910097', 'SURYA PERMANA SHIDDIQ', 'XII IPS 2', 0),
('181910098', 'SYIFA ISNAINI', 'XII IPS 2', 0),
('181910099', 'TIARA SITI NURHASANAH', 'XII IPS 2', 1),
('181910100', 'WAHYU ALVAN MUHAMAD ZAENAL ASIKIN', 'XII IPS 2', 0),
('181910101', 'WENDI AGUS SETIAWAN', 'XII IPS 2', 0),
('181910102', 'ALFIONIE SYAFIRA FITRIANI', 'XII IPS 3', 0),
('181910103', 'ALIKA RAKI JAUZA KUSDINI', 'XII IPS 3', 1),
('181910104', 'ANGELINA DAMARIS GRATIA', 'XII IPS 3', 1),
('181910105', 'ANNISA OCTAVIANTY PUTRITANA', 'XII IPS 3', 1),
('181910106', 'ARRYZALUL MUKAROM PAMUNGKAS', 'XII IPS 3', 0),
('181910108', 'DESTIANI AULIA RAHMAH', 'XII IPS 3', 0),
('181910109', 'DEVINA MEYZWA ARIANA', 'XII IPS 3', 0),
('181910110', 'FACHRULLY ADIRA MUHAMMAD', 'XII IPS 3', 0),
('181910111', 'FAJAR FATHURROHMAN', 'XII IPS 3', 1),
('181910112', 'FANI RAHMASARI KOSASIH', 'XII IPS 3', 1),
('181910113', 'FANYA YASMINASARI GUNAWAN', 'XII IPS 3', 1),
('181910114', 'GAGAN NUGRAHA', 'XII IPS 3', 0),
('181910115', 'IRGI RYAN FIRMANSYAH', 'XII IPS 3', 0),
('181910116', 'JIHAN SEILA AZIZA', 'XII IPS 3', 1),
('181910117', 'KEISYA ELVIDA ZAMYPHA', 'XII IPS 3', 1),
('181910118', 'KINTAN SYAFITRI', 'XII IPS 3', 1),
('181910119', 'LAYTISA KHAIRUN NISA AZ ZAHRA', 'XII IPS 3', 1),
('181910120', 'MARCEL HERMAWAN', 'XII IPS 3', 1),
('181910121', 'MUHAMMAD FAUZAN RAMANDHIKA', 'XII IPS 3', 1),
('181910122', 'MUHAMMAD HUSNI MUBARAK', 'XII IPS 3', 0),
('181910123', 'MUHAMMAD MARDIANSAH', 'XII IPS 3', 0),
('181910124', 'MUHAMMAD NABIL MULK', 'XII IPS 3', 1),
('181910126', 'NAWAAL RANAA SYAKIRA', 'XII IPS 3', 1),
('181910127', 'NAZLA NURUL AMALIA', 'XII IPS 3', 1),
('181910129', 'PUTRI IRINE SEPTIUTAMI', 'XII IPS 3', 1),
('181910130', 'QISNAYA AMAGITA GEANTORO', 'XII IPS 3', 1),
('181910131', 'TAUFIQ AWAL RAMADAN', 'XII IPS 3', 0),
('181910132', 'UPI NURAENI', 'XII IPS 3', 0),
('181910133', 'VANYA MAZAYA KALILAH', 'XII IPS 3', 1),
('181910134', 'WAWAN HERMAWAN', 'XII IPS 3', 1),
('181910135', 'ZAHRA YASMINE ASHILA', 'XII IPS 3', 1),
('181910136', 'ABDHILAH NUR RIZKIA ZULKARNAEN', 'XII MIPA 1', 0),
('181910137', 'ADAM FAUZAN ARDANU', 'XII MIPA 1', 0),
('181910138', 'ADELA APRILIYANTI', 'XII MIPA 1', 0),
('181910139', 'ADELIA JANATI ZAHWA HARTANTI', 'XII MIPA 1', 0),
('181910140', 'ARIEF RAHMAN AHMADHUSEIN', 'XII MIPA 1', 1),
('181910141', 'ATHIYYA DINDA TAKHIRA', 'XII MIPA 1', 1),
('181910142', 'AZMI MUZAKKI DENASSANYA PUTRA', 'XII MIPA 1', 1),
('181910143', 'AZQIA FADILLAH PUTERI', 'XII MIPA 1', 0),
('181910144', 'DWI APRIL HASYYATI ADINI', 'XII MIPA 1', 0),
('181910145', 'ELDA RESTI PURNAMA', 'XII MIPA 1', 0),
('181910146', 'FEBYA WIASTI BATARI', 'XII MIPA 1', 0),
('181910147', 'FIDELIA SYAHLA', 'XII MIPA 1', 1),
('181910148', 'HIQMAL MAHANDIKA', 'XII MIPA 1', 0),
('181910149', 'INDAH CAHAYA FIRANI', 'XII MIPA 1', 0),
('181910151', 'KARJASA RAMADHANI', 'XII MIPA 1', 0),
('181910152', 'LIDIYA JUNAEDI', 'XII MIPA 1', 1),
('181910153', 'LUH PUTU IRMA SRIDEWI YOGESWARI', 'XII MIPA 1', 1),
('181910154', 'MUHAMMAD SATRIO AGUNG HARYOKO', 'XII MIPA 1', 0),
('181910155', 'MAHESWARA RESENDRYA', 'XII MIPA 1', 0),
('181910156', 'MUHAMMAD JAKA SYAHPUTRA', 'XII MIPA 1', 1),
('181910157', 'MUHAMMAD RAIHAN AKBAR NUGRAHA', 'XII MIPA 1', 1),
('181910158', 'MUHAMMAD RAYYIS SHADDAM', 'XII MIPA 1', 0),
('181910159', 'MUHAMMAD RHAZES ALHAMBRA A.D.', 'XII MIPA 1', 1),
('181910160', 'NAURA SABNA', 'XII MIPA 1', 1),
('181910161', 'NAZLA AULIA RAMADHAN', 'XII MIPA 1', 0),
('181910162', 'RAHMA AZURA SURIADITA', 'XII MIPA 1', 1),
('181910163', 'RAIDA RAHMAH KAMILA', 'XII MIPA 1', 1),
('181910164', 'RISNALDI FADHILAH SAMSIR', 'XII MIPA 1', 0),
('181910165', 'RIYALDI DITHIA PERMANA', 'XII MIPA 1', 1),
('181910166', 'SINTA SENTIYAWATI', 'XII MIPA 1', 0),
('181910167', 'SITI HANIFAH RIANI', 'XII MIPA 1', 0),
('181910168', 'VELYSHA SHAFA PUTRI FIRDAUS', 'XII MIPA 1', 0),
('181910169', 'VERONICA BERNADETTE NUGROHO', 'XII MIPA 1', 0),
('181910170', 'ADARA SHAFIYAH SATIADI', 'XII MIPA 2', 1),
('181910171', 'ADNAN ABDUSSALAM PUTRA YANHAS', 'XII MIPA 2', 1),
('181910172', 'AGNES BR. SEMBIRING', 'XII MIPA 2', 0),
('181910173', 'AGNI AGRAPRANA INAS YUSUF SOEPANDI', 'XII MIPA 2', 1),
('181910174', 'AZHARI LAZUARDI', 'XII MIPA 2', 0),
('181910175', 'BAGOES ELDINE SADEWA', 'XII MIPA 2', 1),
('181910176', 'BELLA WAFA SALSABILA', 'XII MIPA 2', 0),
('181910177', 'CAHIYA AFIARIZQA', 'XII MIPA 2', 0),
('181910178', 'ELSA ARMELIA', 'XII MIPA 2', 1),
('181910179', 'EVELIN KANTATE', 'XII MIPA 2', 0),
('181910180', 'FIRA AMALIA NADYA', 'XII MIPA 2', 1),
('181910181', 'FITRIA NUR MARDOTILLAH', 'XII MIPA 2', 1),
('181910182', 'HILMI ASYSYAKUR ISLAM', 'XII MIPA 2', 1),
('181910183', 'HILMY AZMI RASENDRIYA', 'XII MIPA 2', 0),
('181910184', 'INTAN PUTRI WIDYASARI', 'XII MIPA 2', 1),
('181910185', 'IRFANA NUR\'AZIZAH', 'XII MIPA 2', 1),
('181910186', 'MARGARETH MARIA ULI', 'XII MIPA 2', 0),
('181910187', 'MARSA SALAMA', 'XII MIPA 2', 0),
('181910188', 'MARSAI GILANG KENCANA', 'XII MIPA 2', 1),
('181910189', 'MAULANA YUSUF IBRAHIM SUMADIPURA', 'XII MIPA 2', 1),
('181910190', 'MUHAMMAD HILMI ASSIDIQI', 'XII MIPA 2', 0),
('181910191', 'MUHAMMAD HISYAM FADHIL', 'XII MIPA 2', 1),
('181910192', 'MUHAMMAD RIFQI ZAKARIA', 'XII MIPA 2', 1),
('181910193', 'MUHAMMAD RIZQI RAHADIANSYAH', 'XII MIPA 2', 0),
('181910194', 'NAZWA ROMYZA AUFA', 'XII MIPA 2', 1),
('181910195', 'NIKITA PUTRI', 'XII MIPA 2', 0),
('181910196', 'REGINA PUTRI DARSONO', 'XII MIPA 2', 0),
('181910197', 'REPITA BERLIANA', 'XII MIPA 2', 0),
('181910198', 'RIZAL ARIF', 'XII MIPA 2', 0),
('181910199', 'RIZAL FIRMANSYAH', 'XII MIPA 2', 0),
('181910200', 'SITI NUR AJIJAH', 'XII MIPA 2', 0),
('181910201', 'SORAYA ZAHRA', 'XII MIPA 2', 0),
('181910202', 'VELYA AMANDA PUTRI', 'XII MIPA 2', 0),
('181910203', 'AHMAD FAISHAL RAMADHAN', 'XII MIPA 3', 0),
('181910204', 'AHMAD FAJAR MUHANDIS', 'XII MIPA 3', 1),
('181910205', 'AISYA NAILA ZULFA', 'XII MIPA 3', 1),
('181910206', 'AISYAH ANJANI ALIANTI', 'XII MIPA 3', 0),
('181910208', 'BAYU WICAKSONO', 'XII MIPA 3', 1),
('181910209', 'CHAERUNISA RAHMADHANI', 'XII IBB', 0),
('181910210', 'CIKA CANTIKA PERTIWI', 'XII MIPA 3', 1),
('181910212', 'FADYA DAMA YAAFI', 'XII MIPA 3', 1),
('181910213', 'FITRINA AULIA PERTIWI', 'XII MIPA 3', 1),
('181910214', 'HASYIM JAMIL', 'XII MIPA 3', 0),
('181910215', 'HENRI VANNES CHRISTIAN SON', 'XII MIPA 3', 1),
('181910216', 'ISZABEL MARGARETH TAMPUBOLON', 'XII MIPA 3', 0),
('181910218', 'MARSHYA FIRSTAFIRA PUTRI SUHERWAN', 'XII MIPA 3', 0),
('181910219', 'MAULIA RUSYDA PERMANASARI', 'XII MIPA 3', 1),
('181910220', 'MICHAEL CHRISTIAN', 'XII MIPA 3', 0),
('181910221', 'MIKAIL HARITS SULAEMAN', 'XII MIPA 3', 0),
('181910222', 'MUHAMMAD HISYAM RIZQULLAH', 'XII MIPA 3', 0),
('181910223', 'MUHAMMAD ISKANDAR AL RASYID', 'XII MIPA 3', 0),
('181910224', 'MUHAMMAD SAKTI SETIAWAN', 'XII MIPA 3', 0),
('181910225', 'MUHAMMAD SALMAN SATRIA AGUNG', 'XII MIPA 3', 1),
('181910226', 'NIRINA AULIA SYACHRIE', 'XII MIPA 3', 1),
('181910227', 'NISA AGISTA', 'XII MIPA 3', 0),
('181910228', 'REVINA HASNA NABILA', 'XII MIPA 3', 0),
('181910229', 'RISMA RAHMA KHAIRUNNISA', 'XII MIPA 3', 0),
('181910230', 'RIZAL MUHARAM', 'XII MIPA 3', 0),
('181910231', 'ROBERT TIMOTHY', 'XII MIPA 3', 1),
('181910232', 'SRI NURAENI', 'XII MIPA 3', 0),
('181910233', 'SYADZA SYAHIDA ZAHRA', 'XII MIPA 3', 0),
('181910234', 'WIDYA PRATIWI', 'XII MIPA 3', 1),
('181910235', 'AKIFA RAYYANI ZAKIYA', 'XII MIPA 4', 1),
('181910237', 'ALI AKBAR BEHESHTI IFALDI', 'XII MIPA 4', 0),
('181910238', 'ALISHA SALSABILA PUTRI HAPSARI', 'XII MIPA 4', 1),
('181910239', 'CHRISTOFORUS EZRA', 'XII MIPA 4', 0),
('181910240', 'CITRA ADAWIAH', 'XII MIPA 4', 1),
('181910241', 'DARA SANTIKA PUTRI BANARANTO', 'XII MIPA 4', 1),
('181910242', 'DAVU RIZKY NIRWASTASYAH', 'XII MIPA 4', 0),
('181910243', 'FAHIRA KHOIRIYYAH SHABIRAH RAHARDJO', 'XII MIPA 4', 0),
('181910244', 'FAJAR HIDAYATI NUR FATIMAH', 'XII MIPA 4', 0),
('181910245', 'GLORIA ANGELICA ABOLLA', 'XII MIPA 4', 1),
('181910246', 'HAFIDZ FAUZAN MUSLIM ZAINUDDIN', 'XII MIPA 4', 1),
('181910247', 'HAFSAH NURUL FAUZIAH', 'XII MIPA 4', 0),
('181910248', 'HAIDAR AL FARDAN FIRMANSYAH', 'XII MIPA 4', 0),
('181910249', 'JOANA FERNANDA', 'XII MIPA 4', 1),
('181910250', 'JUNDIYAH NURUL KARIMAH', 'XII MIPA 4', 0),
('181910251', 'MAYRAHMAULINA DWI ADINDA PUTRI', 'XII MIPA 4', 0),
('181910252', 'MOCHAMAD FADDLY UTAMA', 'XII MIPA 4', 0),
('181910253', 'MOCHAMAD FIQRI FAHRUDIN', 'XII MIPA 4', 0),
('181910254', 'MUHAMMAD HASYR YUDHA PRAWIRA', 'XII MIPA 4', 0),
('181910255', 'MUHAMMAD HAUNAN NAIL', 'XII MIPA 4', 0),
('181910256', 'MUHAMMAD ZULFA AL RASYID', 'XII MIPA 4', 0),
('181910257', 'NABILA SAHDA MARYAM', 'XII MIPA 4', 0),
('181910258', 'NAZRIE PRATAMA ZUHUR PUTRA', 'XII MIPA 4', 0),
('181910259', 'NOLA IVYREYA', 'XII MIPA 4', 0),
('181910260', 'NURAMDA AINUN', 'XII MIPA 4', 1),
('181910261', 'SABIQ SALMANDHIYA HARITS', 'XII MIPA 4', 1),
('181910262', 'SALMA SETYA ABIDAH', 'XII MIPA 4', 1),
('181910263', 'SARAH SALSABILA WIDIANA', 'XII MIPA 4', 0),
('181910264', 'SHAYMA NAZIHA SETIAWAN', 'XII MIPA 4', 0),
('181910265', 'SRI MULYANI', 'XII MIPA 4', 0),
('181910266', 'SYAFIRA RIZKI REGITA', 'XII MIPA 4', 0),
('181910267', 'WIKA PRADITA INGGAR YANTI', 'XII MIPA 4', 1),
('181910268', 'ALIF RIZKI RIYYASY', 'XII MIPA 5', 0),
('181910269', 'ALVI ZURAIDAH', 'XII MIPA 5', 1),
('181910270', 'ALYA DEWI KINANTI', 'XII MIPA 5', 1),
('181910271', 'AMANDA WULAN PERMATA', 'XII MIPA 5', 0),
('181910272', 'DEA DELIYANA FEBRIYANTI', 'XII MIPA 5', 0),
('181910273', 'DENIERA RAFI\'UFARRASHADY', 'XII MIPA 5', 1),
('181910274', 'DEVANO FERNANDO BOES', 'XII MIPA 5', 1),
('181910275', 'DHIEKA FEBRYAN', 'XII MIPA 5', 1),
('181910276', 'FARAH FAUZIAH', 'XII MIPA 5', 1),
('181910277', 'FASYA ANANDA FATHARANI', 'XII MIPA 5', 0),
('181910278', 'GIAN GUIDO HIBATULLOH', 'XII MIPA 5', 0),
('181910279', 'GIBRAN AMALIO PRANATA', 'XII MIPA 3', 1),
('181910280', 'GLORIA THEODORA WAHI LEO', 'XII MIPA 5', 1),
('181910281', 'HANA AULIA EFFENDI', 'XII MIPA 5', 0),
('181910283', 'KARINA NUR KHAIRUNNISA PRASETYO', 'XII MIPA 5', 1),
('181910284', 'MOCHAMAD NABIEL ADIPUTRA', 'XII MIPA 5', 0),
('181910285', 'MOHAMMAD DZIKRY RIZKYAWAN', 'XII MIPA 5', 0),
('181910286', 'MUHAMMAD FIRJA MAHARDIKA', 'XII MIPA 5', 0),
('181910287', 'MUHAMMAD HAFIDZ ZAHRAN HERMAWAN', 'XII MIPA 5', 0),
('181910289', 'NAILAH FAUZIYYAH NUR', 'XII MIPA 5', 0),
('181910291', 'PUTRI HASIFAH RAHMAWATI', 'XII MIPA 3', 1),
('181910292', 'RADEN ARIA AJI PUJAWANGI HANIPRAJA', 'XII MIPA 5', 0),
('181910293', 'SALMA AMARA ZAHRA', 'XII MIPA 5', 1),
('181910294', 'SARAH SITI NURAINI RACHMAN SAPUTRA', 'XII MIPA 5', 1),
('181910296', 'SYABHALKA DHARMABAKTI RABBANI', 'XII MIPA 5', 0),
('181910297', 'SYERIL PUTRI BADRHEINA', 'XII MIPA 5', 0),
('181910298', 'SYIFA KHAIRUNISA RIZKIKA LESMANA', 'XII MIPA 5', 0),
('181910299', 'WULANSARI', 'XII MIPA 5', 1),
('181910300', 'ANA NUR\'AINI LUTFIYYAH', 'XII MIPA 6', 0),
('181910301', 'ANDIKA AGNIYAWAN', 'XII MIPA 6', 0),
('181910302', 'ANDIKA TRIPUTRA TRESNASENA', 'XII MIPA 6', 1),
('181910303', 'ANISA VIRA DWIYANTI', 'XII MIPA 6', 1),
('181910304', 'DEVINA MAHARANI', 'XII MIPA 6', 1),
('181910305', 'DINA MARDIANA', 'XII MIPA 6', 0),
('181910306', 'DITO DWI NASAR PRAKOSO', 'XII MIPA 6', 0),
('181910307', 'DZAKI ADNAN', 'XII MIPA 6', 0),
('181910308', 'FATHIMAH GHAIDA NAFISA', 'XII MIPA 6', 1),
('181910309', 'FATHIYYA AMIRA', 'XII MIPA 6', 1),
('181910310', 'FIRMANSYAH', 'XII MIPA 6', 0),
('181910311', 'GHALIB MUHAMMAD', 'XII MIPA 6', 0),
('181910312', 'HANA KHALDA ANDANI', 'XII MIPA 6', 0),
('181910313', 'HAURA SALWA FEBRIANI', 'XII MIPA 6', 0),
('181910314', 'KARENIVA TSUROYYA', 'XII MIPA 6', 1),
('181910315', 'KARIN GHAISANI HABIBATI', 'XII MIPA 6', 0),
('181910316', 'MUHAMMAD ABDURRASYIID FIQAR', 'XII MIPA 6', 0),
('181910317', 'MUHAMMAD ABRAR TRIYADI', 'XII MIPA 6', 1),
('181910318', 'MUHAMMAD FAKHRAAN DEVANDRIAN', 'XII MIPA 6', 1),
('181910319', 'MUHAMMAD FASYA ARYA MAHISWARA', 'XII MIPA 6', 0),
('181910320', 'NASYWA CHOIRULNISA RESTU PUTRI HUSEIN', 'XII MIPA 6', 0),
('181910321', 'NATHANIA ALYABASYAA', 'XII MIPA 6', 1),
('181910322', 'PUTRIANI SALSABILA', 'XII MIPA 6', 0),
('181910323', 'R. MARSYALIA KARINA RAHARJAPUTRI', 'XII MIPA 6', 1),
('181910324', 'RAFI ATHALLAH', 'XII MIPA 6', 1),
('181910325', 'RAFID GUSTYAN WAHYUHADI', 'XII MIPA 6', 0),
('181910326', 'SAVA SAFIRA PUTRI', 'XII MIPA 6', 0),
('181910327', 'SHAFA PUTRI FATIHAH', 'XII MIPA 6', 1),
('181910328', 'SILVIA PUTRI OKTAVIANI', 'XII MIPA 7', 0),
('181910329', 'TASYA SALSHABILA JULYANA', 'XII MIPA 6', 0),
('181910330', 'TYO IVANKA', 'XII MIPA 6', 0),
('181910331', 'VERREL ZAKIA RAFILANTI', 'XII MIPA 6', 0),
('181910332', 'ZAHRA DIVA SHAFIRA', 'XII MIPA 6', 0),
('181910333', 'ANDRE DZIKRY SURYA ATMOJO', 'XII MIPA 7', 0),
('181910334', 'ANDRENE MARIETTA', 'XII MIPA 7', 0),
('181910335', 'ANNISA NURUL UTAMY', 'XII MIPA 7', 0),
('181910336', 'AZKIA KHUMAIRANI RACHMAN', 'XII MIPA 7', 0),
('181910337', 'DITA MARITZA SASIKALIHANTI', 'XII MIPA 7', 1),
('181910338', 'DZAKWAN SURYA RAMADHAN', 'XII MIPA 7', 0),
('181910339', 'ERY AVRILIO', 'XII MIPA 7', 0),
('181910340', 'FARHAN AKMAL', 'XII MIPA 7', 1),
('181910341', 'FARHAN MIDO FIRDAUS', 'XII MIPA 7', 0),
('181910342', 'FATYA DESTIANTI NUR RAMADHANI', 'XII MIPA 7', 0),
('181910343', 'FAZA AFIFA MUTTAQIYA', 'XII MIPA 7', 1),
('181910344', 'HASNAA RIZKA DWIYANI', 'XII MIPA 7', 1),
('181910345', 'IKLIMA AZKA NUR RAUDHAH', 'XII MIPA 7', 0),
('181910346', 'KAYLA PUTERI GUNAWAN', 'XII MIPA 7', 1),
('181910347', 'KHAIRUNISA TRIE SURYANINGSIH', 'XII MIPA 7', 1),
('181910348', 'MUHAMMAD ATHALLA NAUFAL FAIRUZ', 'XII MIPA 7', 0),
('181910349', 'MUHAMMAD AULIA AL-GHIFARI', 'XII MIPA 7', 0),
('181910350', 'MUHAMMAD DANU LINDIANSYAH', 'XII MIPA 7', 1),
('181910351', 'MUHAMMAD FADLY IHSAN', 'XII MIPA 7', 0),
('181910352', 'NATASYA AMELIA', 'XII MIPA 7', 1),
('181910353', 'NAURA HASNA\' QURRATU\'AIN', 'XII MIPA 7', 0),
('181910354', 'RADEN FELITA PUTRI ANGGINI', 'XII MIPA 7', 0),
('181910355', 'RAFLI RIZKI FAUZI', 'XII MIPA 7', 1),
('181910356', 'RAHIMA AIDA ZAKIYYA', 'XII MIPA 7', 1),
('181910357', 'RAIHAN TSAQIB', 'XII MIPA 7', 0),
('181910358', 'SHEVA ROGA GUSTOMO', 'XII MIPA 7', 0),
('181910359', 'TIARA ARDIANI ANGGRAENI', 'XII MIPA 6', 0),
('181910360', 'TIARA LAELLA DESTIYANI', 'XII MIPA 7', 0),
('181910361', 'TYSHA ALYA RAMADHANY', 'XII MIPA 7', 1),
('181910362', 'VIKI EKA PRATAMA', 'XII MIPA 7', 0),
('181910363', 'WILLY AULIYA YASHILVA', 'XII MIPA 7', 1),
('181910364', 'ZAKI WIDYADANA WIRAWAN', 'XII MIPA 7', 0),
('181910365', 'ZENITA AINA RIFANIA', 'XII MIPA 7', 1),
('181910366', 'AMANDA SYIFA PUTRI PRANOTO', 'XII MIPA 5', 0),
('181910502', 'NADIRA RISKA BELINDA', 'XII MIPA 6', 0),
('192011392', 'IZZAN ORDINA SITA OCTAVIA', 'XII MIPA 1', 1),
('192011393', 'NAJLA FAUZIYYAH NUR', 'XII MIPA 5', 0),
('192011394', 'AKHMAD FAIQ BAIHAQI', 'XII IPS 1', 0),
('192011395', 'WILDAN DAI ROBI', 'XII IPS 1', 0),
('192011397', 'FAJAR RAMDHANI', 'XII IPS 2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `un_user`
--

CREATE TABLE `un_user` (
  `UID` tinyint(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `un_user`
--

INSERT INTO `un_user` (`UID`, `username`, `password`) VALUES
(1, 'admin', 'd8c6f590f819e7fe56c257ddddf2ab32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `un_siswa`
--
ALTER TABLE `un_siswa`
  ADD PRIMARY KEY (`no_nis`);

--
-- Indexes for table `un_user`
--
ALTER TABLE `un_user`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `un_konfigurasi`
--
ALTER TABLE `un_konfigurasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `un_user`
--
ALTER TABLE `un_user`
  MODIFY `UID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
