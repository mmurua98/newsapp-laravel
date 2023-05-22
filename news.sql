-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 01:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `date`, `url`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Stock futures fall slightly as Wall Street focuses on tense debt ceiling negotiations - CNBC', 'Jesse Pound', '2023-05-21 22:19:00', 'https://www.cnbc.com/2023/05/21/stock-market-today-live-updates.html', 'https://image.cnbcfm.com/api/v1/image/107242766-1684340767064-NYSE-Traders-OB-20230517-CC-PRESS-2.jpg?v=1684706764&w=1920&h=1080', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(2, 'SpaceX mission lifts off with former NASA astronaut, three paying customers - CNN', 'Jackie Wattles', '2023-05-21 22:00:00', 'https://www.cnn.com/2023/05/21/world/spacex-axiom-mission-2-launch/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/230521174553-03-axiom-launch-0521.jpg?c=16x9&q=w_800,c_fill', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(3, 'WATCH: Club pro Michael Block dunks hole-in-one, breaking cup in incredible PGA Championship moment - CBS Sports', '', '2023-05-21 21:31:00', 'https://www.cbssports.com/golf/news/watch-club-pro-michael-block-dunks-hole-in-one-breaking-cup-in-incredible-pga-championship-moment/', 'https://sportshub.cbsistatic.com/i/r/2023/05/21/c81a12a6-e0f7-4109-ae05-3305e345527c/thumbnail/1200x675/78a3a59461510eb95ffc5279c48052fa/michael-block-ace-pga-2023-g.png', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(4, 'Linda Yaccarino Shares Reaction To Instagram’s Twitter Competitor - Deadline', 'Armando Tinoco', '2023-05-21 21:16:00', 'https://deadline.com/2023/05/linda-yaccarino-reaction-instagram-twitter-competitor-1235375154/', 'https://deadline.com/wp-content/uploads/2023/05/Linda-Yaccarino-instagram-twitter.jpg?w=1024', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(5, 'Kim Kardashian says parenting her 4 children is ‘the best chaos’ - CNN', 'Alli Rosenbloom', '2023-05-21 21:01:00', 'https://www.cnn.com/2023/05/21/entertainment/kim-kardashian-parenting-chaos/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/230521163314-kim-kardashian-children.jpg?c=16x9&q=w_800,c_fill', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(6, 'Martin Scorsese’s \'Killers of the Flower Moon\' gets nine-minute standing ovation at Cannes Film Festival - New York Post ', 'Jack Hobbs', '2023-05-21 20:27:00', 'https://nypost.com/2023/05/21/martin-scorseses-killers-of-the-flower-moon-gets-nine-minute-standing-ovation/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/NYPICHPDPICT000011516683.jpg?quality=75&strip=all&w=1024', '2023-05-23 04:25:16', '2023-05-23 04:25:16'),
(7, 'Taylor Swift Says She\'s Never Been Happier in Comments Made More Than a Month After Joe Alwyn Breakup - E! NEWS', 'Corinne Heller', '2023-05-21 18:55:00', 'https://www.eonline.com/news/1375075/taylor-swift-says-shes-never-been-happier-in-comments-made-more-than-a-month-after-joe-alwyn-breakup', 'https://akns-images.eonline.com/eol_images/Entire_Site/2023421/rs_1200x1200-230521114737-1200-Taylor-Swift-concert.jpg?fit=around%7C1080:1080&output-quality=90&crop=1080:1080;center,top', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(8, 'David Zaslav Gets Booed at Boston University Graduation Amid the Writers Strike - Hollywood Reporter', 'Abbey White', '2023-05-21 18:45:39', 'https://www.hollywoodreporter.com/news/general-news/david-zaslav-booed-boston-university-graduation-writers-strike-1235497440/', 'https://www.hollywoodreporter.com/wp-content/uploads/2023/05/GettyImages-1485170111-H-2023.jpg?w=1024', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(9, 'Republican senator: Trump will lose 2024 presidential race if nominated - The Guardian US', 'Ramon Antonio Vargas', '2023-05-21 18:38:00', 'https://www.theguardian.com/us-news/2023/may/21/republican-senator-bill-cassidy-trump-lose-2024-race', 'https://i.guim.co.uk/img/media/59706e875da3d198ad2d2453ab8ab788a0c66069/0_2_5055_3033/master/5055.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&enable=upscale&s=8964f41f5b48c1e54ca3e3cfb65d0606', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(10, 'Greece election: Centre-right wins but set to miss out on majority - BBC', 'https://www.facebook.com/bbcnews', '2023-05-21 18:32:43', 'https://www.bbc.com/news/world-europe-65666261', 'https://ichef.bbci.co.uk/news/1024/branded_news/6067/production/_129797642_f67f5e5043167e48e9b95f61f90f0e48dfe854fb0_31_6000_33751000x563.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(11, 'Team Canada’s Joe Veleno suspended 5 games in IIHF World Championship for leg stomp - The Athletic', 'The Athletic Staff', '2023-05-21 18:27:50', 'https://theathletic.com/4538879/2023/05/21/joe-veleno-suspension-stomp/', 'https://cdn.theathletic.com/app/uploads/2023/05/21131250/GettyImages-1256396560-1024x674.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(12, 'Transgender girl misses high school graduation after being told to dress like a boy - New York Post ', 'Isabel Keane', '2023-05-21 18:05:00', 'https://nypost.com/2023/05/21/transgender-girl-misses-her-high-school-graduation-after-told-to-dress-like-a-boy/', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/NYPICHPDPICT000011503805.jpg?quality=75&strip=all&w=1024', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(13, 'Shared Genetics for Cannabis Use and Psychiatric Disorders - Neuroscience News', 'Neuroscience News', '2023-05-21 17:29:20', 'https://neurosciencenews.com/genetics-cud-mental-health-23301/', 'https://neurosciencenews.com/files/2023/05/genetics-mental-health-cud-neurosicences.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(14, 'Magic Johnson Apologizes to Nuggets After Lakers’ Game 3 Loss - Sports Illustrated', 'Madison Williams', '2023-05-21 17:27:19', 'https://www.si.com/extra-mustard/2023/05/21/magic-johnson-apologizes-nuggets-lakers-game-3-loss', 'https://www.si.com/.image/ar_1.91%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_1200/MTk4MTA2NTYzMjEzMjcyMjU0/magic-johnson.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(15, 'These Zelda: Tears of Kingdom players are determined to pet the dog - Eurogamer.net', 'Vikki Blake', '2023-05-21 16:51:35', 'https://www.eurogamer.net/these-zelda-tears-of-kingdom-players-are-determined-to-pet-the-dog', 'https://assetsio.reedpopcdn.com/Screenshot-2023-05-13-at-18.01.13.png?width=1200&height=630&fit=crop&enable=upscale&auto=webp', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(16, 'As Bezos wins NASA contract to race Musk to put man on the Moon, the dark side of their 20-year feud - Daily Mail', 'Tom Leonard', '2023-05-21 16:33:43', 'https://www.dailymail.co.uk/news/article-12104501/As-Bezos-wins-NASA-contract-race-Musk-man-Moon-dark-20-year-feud.html', 'https://i.dailymail.co.uk/1s/2023/05/21/16/71200719-0-image-a-10_1684684458112.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(17, 'Ukraine war: Bakhmut \'not occupied\' by Russia, says defiant Zelensky - BBC', 'https://www.facebook.com/bbcnews', '2023-05-21 16:12:46', 'https://www.bbc.com/news/world-europe-65662563', 'https://ichef.bbci.co.uk/news/1024/branded_news/CC7D/production/_129794325_eb8587bd068b9d56e1b6d72ca621b533cccdc8a8420_212_2573_14481000x563.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(18, 'Civil rights groups warn tourists about Florida in wake of \'hostile\' laws - Yahoo News', 'MIKE SCHNEIDER', '2023-05-21 15:25:20', 'https://news.yahoo.com/civil-rights-groups-warn-tourists-152520992.html', 'https://s.yimg.com/ny/api/res/1.2/N_EG5QaA2WAwtL5jd2rlmg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02ODU-/https://media.zenfs.com/en/ap.org/8629752b4e67fb181c991b114224ebcb', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(19, 'Biden calls Republican debt ceiling offer \'unacceptable\' ahead of call with McCarthy - Reuters', '', '2023-05-21 14:57:00', 'https://www.reuters.com/world/us/biden-house-speaker-mccarthy-could-speak-sunday-debt-limit-2023-05-21/', 'https://www.reuters.com/resizer/LMYIU5-72X9Afb3xxxGs4DBgqqA=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/C24RVWDBYROQVAHG62WWIHI2P4.jpg', '2023-05-23 04:25:17', '2023-05-23 04:25:17'),
(20, 'Shark bites Florida angler on dock, in second attack of the week - CNN', 'Lauren Mascarenhas,Melissa Alonso', '2023-05-21 14:39:00', 'https://www.cnn.com/2023/05/21/us/florida-keys-shark-bite-trnd/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/230521100224-florida-shark-attacks-map.jpg?c=16x9&q=w_800,c_fill', '2023-05-23 04:25:17', '2023-05-23 04:25:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
