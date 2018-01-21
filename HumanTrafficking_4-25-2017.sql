-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Host: db665895770.db.1and1.com
-- Generation Time: Apr 25, 2017 at 07:57 AM
-- Server version: 5.5.54-0+deb7u2-log
-- PHP Version: 5.4.45-0+deb7u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db665895770`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `articleID` int(10) NOT NULL AUTO_INCREMENT,
  `categoryID` int(10) NOT NULL,
  `articleTransactionID` int(10) NOT NULL,
  `articleAuthorID` int(10) NOT NULL,
  `articleCreateDate` datetime NOT NULL,
  `articleVisible` tinyint(1) NOT NULL,
  `articleLock` tinyint(1) NOT NULL,
  PRIMARY KEY (`articleID`),
  KEY `FK_articles1` (`categoryID`),
  KEY `FK_articles2` (`articleTransactionID`),
  KEY `FK_articles3` (`articleAuthorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=43 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`articleID`, `categoryID`, `articleTransactionID`, `articleAuthorID`, `articleCreateDate`, `articleVisible`, `articleLock`) VALUES
(23, 3, 23, 18, '2017-03-05 23:32:28', 0, 1),
(22, 245, 22, 1, '2017-03-05 20:36:54', 1, 0),
(19, 104, 19, 19, '2017-02-20 09:35:36', 0, 1),
(18, 104, 18, 19, '2017-02-20 09:33:56', 0, 1),
(17, 1, 17, 19, '2017-02-19 15:50:05', 1, 1),
(21, 1, 21, 1, '2017-03-05 19:23:19', 0, 1),
(15, 251, 15, 19, '2017-02-19 15:41:54', 1, 0),
(24, 245, 24, 23, '2017-03-17 17:30:14', 0, 1),
(25, 5, 25, 23, '2017-03-17 21:17:17', 0, 1),
(26, 5, 26, 23, '2017-03-17 21:21:02', 0, 1),
(27, 5, 27, 23, '2017-03-17 21:43:25', 1, 0),
(28, 5, 28, 23, '2017-03-17 21:47:41', 0, 1),
(29, 251, 29, 19, '2017-03-20 19:21:21', 1, 0),
(30, 245, 30, 23, '2017-03-21 20:33:12', 0, 1),
(31, 4, 31, 23, '2017-03-21 21:25:57', 1, 0),
(33, 244, 33, 27, '2017-03-28 19:19:53', 1, 0),
(34, 245, 34, 27, '2017-03-28 19:30:10', 0, 0),
(35, 3, 35, 1, '2017-03-28 20:51:25', 1, 0),
(36, 3, 36, 1, '2017-03-28 20:53:14', 1, 1),
(37, 251, 37, 19, '2017-03-30 19:37:20', 1, 0),
(38, 245, 38, 24, '2017-03-31 17:07:13', 1, 0),
(39, 2, 39, 1, '2017-03-31 22:53:40', 0, 1),
(40, 3, 40, 1, '2017-04-01 00:07:12', 1, 0),
(41, 3, 41, 1, '2017-04-01 00:14:23', 1, 0),
(42, 2, 42, 23, '2017-04-23 21:05:58', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `articleTransactions`
--

CREATE TABLE IF NOT EXISTS `articleTransactions` (
  `transactionID` int(10) NOT NULL AUTO_INCREMENT,
  `articleID` int(10) NOT NULL,
  `transactionAuthorID` int(10) NOT NULL,
  `articleTitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `articleContent` text COLLATE latin1_general_ci NOT NULL,
  `articleImage` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `fileName` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `articleTags` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `articlePending` tinyint(4) NOT NULL DEFAULT '1',
  `transactionDate` datetime NOT NULL,
  `articleVersionID` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`transactionID`),
  KEY `FK_at1` (`articleID`),
  KEY `FK_at2` (`transactionAuthorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=43 ;

--
-- Dumping data for table `articleTransactions`
--

INSERT INTO `articleTransactions` (`transactionID`, `articleID`, `transactionAuthorID`, `articleTitle`, `articleContent`, `articleImage`, `fileName`, `articleTags`, `articlePending`, `transactionDate`, `articleVersionID`) VALUES
(17, 17, 19, 'About', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>About</p>\r\n<p>Details on what you want on the about page.&nbsp;</p>\r\n</body>\r\n</html>', '', '', 'about', 0, '2017-02-19 15:50:05', 1),
(21, 21, 1, 'Facts', '<p>This is a special page. Special pages are just like articles except they are directly accessed by a navigation item instead of a category. Special pages are best for FAQs, About pages, Contact pages, or pages with information you want to be quick and easy for you users to access.</p>', 'images/Asset_2.png', '', 'facts', 2, '2017-03-05 19:23:19', 1),
(15, 15, 19, 'Ashton Kutcher talking to Senate on Human Trafficking', '<p>&nbsp;</p>\r\n<p><iframe src="//www.youtube.com/embed/lBZdRe8cheQ" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', '', '', 'ashton kutcher', 0, '2017-04-05 12:40:17', 1),
(18, 18, 19, 'Not locked', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Example of editable article.&nbsp;Locked ones mean somebody is currently editing the article.&nbsp; They may have also disconnected without saving, but it can be unlocked by administrator if needed.</p>\r\n</body>\r\n</html>', '', '', 'no locked', 2, '2017-02-20 09:33:56', 1),
(19, 19, 19, 'Locked article example', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Example of a locked article somebody might be editing.&nbsp; It helps so that two people do not try and edit the same article at the same time.</p>\r\n</body>\r\n</html>', '', '', 'locked', 2, '2017-02-20 09:37:49', 1),
(22, 22, 23, 'Blue Campaign Infographic', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2 style="text-align: center;"><span style="text-decoration: underline; font-size: 18pt;"><strong>Homeland Security - Blue Campaign</strong></span>&nbsp;</h2>\r\n<p style="text-align: center;"><img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_02.jpg?1488763887963" alt="16_0510_bluecampaign_infographic_02" width="799" height="349" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_03.jpg?1488763937981" alt="16_0510_bluecampaign_infographic_03" width="799" height="291" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_04.jpg?1488763982528" alt="16_0510_bluecampaign_infographic_04" width="799" height="185" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_06.jpg?1488763999287" alt="16_0510_bluecampaign_infographic_06" width="799" height="405" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_08.jpg?1488764028704" alt="16_0510_bluecampaign_infographic_08" width="798" height="186" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_09_01.jpg?1488764042029" alt="16_0510_bluecampaign_infographic_09_01" width="799" height="376" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_09_02.jpg?1488764055855" alt="16_0510_bluecampaign_infographic_09_02" width="799" height="384" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_09_03.jpg?1488764069521" alt="16_0510_bluecampaign_infographic_09_03" width="798" height="375" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_09_04.jpg?1488764086692" alt="16_0510_bluecampaign_infographic_09_04" width="799" height="360" /> <img style="display: block; margin: 0 auto 0 auto;" src="../uploads/images/16_0510_bluecampaign_infographic_10.jpg?1488764098667" alt="16_0510_bluecampaign_infographic_10" width="798" height="369" /></p>\r\n</body>\r\n</html>', '', '', '', 0, '2017-03-31 23:12:57', 1),
(40, 40, 1, 'Social Networking Sites: Online Friendships Can Mean Offline Peril (fbi.gov)', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Social networking sites are websites that encourage people to post profiles of themselves&mdash;complete with pictures, interests, and even journals&mdash;so they can meet like-minded friends. Most also offer chat rooms. Most sites are free; some restrict membership by age.&nbsp;</p>\r\n<p>These sites can be appealing to child sexual predators, too: all that easy and immediate access to information on potential victims. Even worse, kids want to look cool, so they sometimes post suggestive photos of themselves on the sites.</p>\r\n<p>How pervasive is the problem? Even with all the media attention on the dangers of social networking, we still receive hundreds of complaints per year about children who have been victims of criminal incidents on social networks. These incidents include but are not limited to:</p>\r\n<ul>\r\n<li>Adults posing as children who are about the same age as the victim who later travel to abuse the child; and</li>\r\n<li>Adults posing as children who convince the child to expose themselves and/or perform sexual acts over webcam and later extort the child to perform additional acts.</li>\r\n</ul>\r\n<p>According to an Internet safety pamphlet recently published by NCMEC, a survey of 12 to 17 year olds revealed that 38 percent had posted self-created content such as photos, videos, artwork, or stories. Another survey of 10 to 17 year olds revealed 46 percent admit to having given out their personal information to someone they did not know. The likelihood that kids will give out personal information over the Internet increases with age, with 56 percent of 16 to 17 year olds most likely sharing personal information.&nbsp;</p>\r\n<p>Social networking websites often ask users to post a profile with their age, gender, hobbies, and interests. While these profiles help kids connect and share common interests, individuals who want to victimize kids can use those online profiles to search for potential victims. Kids sometimes compete to see who has the greatest number of contacts and will add new people to their lists even if they do not know them in real life.</p>\r\n<p>Children often don&rsquo;t realize that they cannot &ldquo;take back&rdquo; the online text and images they post. They may not know that individuals with access to this information can save and forward these postings to an unlimited number of users. Kids also may not realize the potential ramifications of their online activities. They can face consequences for posting harmful, explicit, dangerous, or demeaning information online, including being humiliated in front of their families and peers, suspended from school, charged criminally, and denied employment or entry into schools.&nbsp;</p>\r\n<p>What can you do to keep your children safe, especially if they are visiting networking sites?</p>\r\n<p>Most importantly, be aware and involved:</p>\r\n<ul>\r\n<li><span style="font-size: 12pt;">Monitor your children&rsquo;s use of the Internet; keep your Internet computer in an open, common room of the house.</span></li>\r\n<li><span style="font-size: 12pt;">Tell your kids why it&rsquo;s so important not to disclose personal information online.</span></li>\r\n<li><span style="font-size: 12pt;">Check your kids&rsquo; profiles and what they post online.</span></li>\r\n<li><span style="font-size: 12pt;">Read and follow the safety tips provided on the sites.</span></li>\r\n<li><span style="font-size: 12pt;">Report inappropriate activity to the website or law enforcement immediately.</span></li>\r\n<li><span style="font-size: 12pt;">Explain to your kids that once images are posted online they lose control of them and can never get them back.</span></li>\r\n<li><span style="font-size: 12pt;">Only allow your kids to post photos or any type of personally identifying information on websites with your knowledge and consent.</span></li>\r\n<li><span style="font-size: 12pt;">Instruct your kids to use privacy settings to restrict access to profiles so only the individuals on their contact lists are able to view their profiles.</span></li>\r\n<li><span style="font-size: 12pt;">Remind kids to only add people they know in real life to their contact lists.</span></li>\r\n<li><span style="font-size: 12pt;">Encourage kids to choose appropriate screen names or nicknames.</span></li>\r\n<li><span style="font-size: 12pt;">Talk to your kids about creating strong passwords.</span></li>\r\n<li><span style="font-size: 12pt;">Visit social networking websites with your kids, and exchange ideas about acceptable versus potentially risky websites.</span></li>\r\n<li><span style="font-size: 12pt;">Ask your kids about the people they are communicating with online.</span></li>\r\n<li><span style="font-size: 12pt;">Make it a rule with your kids that they can never give out personal information or meet anyone in person without your prior knowledge and consent. If you agree to a meeting between your child and someone they met online, talk to the parents/guardians of the other individual first and accompany your kids to the meeting in a public place.</span></li>\r\n<li><span style="font-size: 12pt;">Encourage your kids to consider whether a message is harmful, dangerous, hurtful, or rude before posting or sending it online, and teach your kids not to respond to any rude or harassing remarks or messages that make them feel scared, uncomfortable, or confused and to show you the messages instead.&nbsp;</span></li>\r\n<li><span style="font-size: 12pt;">Educate yourself on the websites, software, and apps that your child uses.</span></li>\r\n<li><span style="font-size: 12pt;">Don&rsquo;t forget cell phones! They often have almost all the functionality of a computer.</span></li>\r\n</ul>\r\n<p><span style="font-size: 12pt;">(This article comes from <a href="https://www.fbi.gov/scams-and-safety/protecting-your-kids">https://www.fbi.gov/scams-and-safety/protecting-your-kids</a>&nbsp;and is provided for free by the government)</span></p>\r\n</body>\r\n</html>', '', '', 'security safety fbi child children predator social media', 0, '2017-04-01 00:07:12', 1),
(25, 25, 23, 'Article Title', '<p>Lorem ipsum dolor sit amet, ei ludus alterum ius, erat utroque corrumpit est et. Id veritus propriae erroribus quo, ne mei invidunt perpetua recteque, porro quaeque vivendum sea an. Et sea iudicabit gloriatur maiestatis. Ut nisl dolore explicari quo, pro ex quis blandit omittantur.</p>\r\n<p>Per graeci discere ad, eripuit detraxit ius ex. Graeco debitis appetere ut nam. Per maiorum percipitur ad. In suas sanctus mei, mea meis interesset ut.</p>\r\n<p>Te eam indoctum persecuti deseruisse, nulla ignota tibique ea eam. Laudem putant ea eum. An mel natum aliquando repudiandae, labitur quaestio inimicus ex ius. Per cu natum rationibus disputando. Eos ei vocibus oporteat deterruisset, mundi oportere eos ne.</p>\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;"><strong>Et pro putant eruditi. An possit nostrum legendos nec, erant ceteros reprimique mea te. Recteque reprehendunt ea duo. Cu voluptua recteque mei, nam democritum abhorreant et. Audiam omittam consectetuer vim at, utamur malorum ullamcorper no eos.</strong></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p>Atqui impedit corpora vel et, hinc tollit equidem usu ad. Mucius veritus dignissim ius ea, legere eligendi legendos ut est. Ad qui lorem admodum fierent, an menandri salutandi quaerendum ius. Ut sed molestie officiis pertinax, cu duo oratio causae ancillae. Error apeirian te eum.</p>', 'images/alone-12999.jpg', '', '', 2, '2017-03-17 21:17:17', 1),
(23, 23, 18, 'Power Point', '<p>Test powerpoint</p>', '', 'documents/testPowerpoint.pptx', '', 2, '2017-03-05 23:32:28', 1),
(24, 24, 23, 'Article Image Test', '<p>kjsdf oijwien skjdhgus;ag theise soijgj swoeijrap asienvsd,c soilxkdjfiew; sodfnlskdng ieerhgsnkg;n dkfnghsa s gas;;sroitjsg sudgndk adfgjhi sodkjgkds.</p>', 'images/girl-517555.jpg', '', '', 2, '2017-03-17 17:30:14', 1),
(26, 26, 23, 'Another Title', '<p>Blandit deleniti voluptaria mea ad, at commune adipiscing interesset mel. Cibo ullum posidonium cum at, ut prompta principes delicatissimi sea. Et sea accumsan accusamus accommodare. Minimum cotidieque est in, agam saepe voluptatum sed te. Sint consectetuer duo te, cum labitur philosophia ea, justo libris id duo. Vix semper scaevola comprehensam at, id quo habeo illud cetero, tempor efficiantur ad qui.</p>\r\n<p>Mei in elitr dicam facilis, eam ei dicam facilisi. An erant suscipiantur eos, ex mel simul partiendo. Nusquam inimicus an quo, mei te accusam adipisci forensibus, nam ei dicta viris deterruisset. Semper recteque ut mei, in has expetenda consequat elaboraret, sea odio hendrerit ne.Gloriatur rationibus ea mel, sed tation possim moderatius no. His ad mazim labores, mundi accusam nam an, voluptatum reprehendunt eu quo. Vix ea ubique ceteros praesent. An eleifend intellegebat definitiones has. Stet homero mentitum vis an.</p>\r\n<p>Semper accumsan vulputate has eu, vel adhuc solet te, ad sea ridens graeco numquam. Ad soleat mandamus mel, ei his dolore fabulas torquatos, vix quem altera conclusionemque ne. In meliore feugait vel, ei alienum vituperata est, sed augue dolor vivendo eu. Vix in lucilius percipitur complectitur, vis eu natum blandit. Illud utroque patrioque sed te. Te mei tota docendi suscipit, vim et graece principes. At vel liber appareat repudiare, no porro vitae tation sea. Ius ea eros laudem nominavi, mei in velit eirmod blandit. Sit eu porro dicit nostro, his soluta argumentum et. Ut pri nisl nobis tritani. Eu elitr noster ius. Cu has erant integre nostrum. Nec ea alia malorum eleifend, sit eu elitr saepe temporibus, usu ne tota adversarium. Congue oportere ne vel, veniam intellegat in sed. Labitur tractatos vis ei, eu vim nulla iudicabit conclusionemque. Ea vis modus scriptorem, sit cu quas brute voluptaria. Ei adipiscing quaerendum per, in facete urbanitas mei, veritus explicari qui ex. Decore meliore ea quo, virtute ornatus dolorum in per. Fugit facete assueverit duo ut, id quot nemore tibique vel. Elit solum simul ea pri. Corpora recusabo mea id, posse mediocritatem at vel. Mediocrem tincidunt ius an. Sed at amet eius verterem. Mei ea sanctus convenire vulputate. Qui utinam elaboraret quaerendum at. Cu semper ancillae sed, ei sale admodum his.</p>\r\n<p>Et usu quidam principes, idque doming splendide in mea, possim persius sanctus his an. Et per tollit epicurei euripidis. Sea scripta omittantur id. Mea libris scaevola appetere eu. Ne velit eligendi efficiantur his. Sea dicunt detraxit temporibus ad, similique omittantur vim ne. In inani propriae reformidans usu. Usu id sumo porro everti, diam erant simul id nam. Vel ex erat labitur. Appareat atomorum intellegebat ex est, oportere iudicabit sed ea. An tibique denique torquatos vel. Discere reprimique vel ad. An pro omnium doctus dignissim, sententiae posidonium ex duo. Oratio suscipiantur vis no, ex erant verear nec. Est timeam ocurreret eu. Appetere repudiare theophrastus per at, no imperdiet mnesarchum quaerendum vis, justo adipisci accusata his id. An aliquam gubergren prodesset pro. Illum saperet voluptua cu quo, sanctus propriae adipisci nec no, sea ornatus epicurei consectetuer an. Vivendo legendos duo ad, an eirmod voluptua concludaturque sea, eros labitur duo an. Offendit pertinacia an nec, purto ancillae eu ius, ubique scaevola ne sit. Eu ferri labore tincidunt per. Paulo scripta eu usu. Sint liber regione his at, has nibh everti mediocritatem ea. Omnium lucilius democritum ne vim, saperet moderatius eu mel. Eam ludus constituam deterruisset te, mea id libris bonorum adversarium, vel movet menandri singulis ea. Ridens vivendo periculis per te, per ut gubergren maiestatis conclusionemque. Melius reprimique inciderint eu his. Ne nec iusto nihil posidonium, sed autem semper repudiandae te. At noster nostro dignissim sea, nam eius denique neglegentur ex. Per eu solum paulo, eos et laoreet fastidii gloriatur.</p>\r\n<p>Usu omnium deseruisse necessitatibus ne, pro eu reque liberavisse. Ut inani possit nostrud eum, in his ridens democritum. Purto eirmod recusabo est te, virtute nusquam urbanitas an qui, eam id tation omnesque sapientem. Ne dicit persius pericula ius. An adhuc essent interesset vel, usu cu utroque repudiandae, eam ipsum noster pericula id. Vero fierent democritum vel ei, nam commune liberavisse no. Nec ex dicat summo. Nostrud iuvaret pri te, et vix oratio platonem. Ex pro illud fuisset, mea probo dolore ad, ne quem malis vix. Eam simul iriure reprehendunt in, est te quot ullum petentium. Ei dicat aperiri interpretaris vix, ad nibh fierent referrentur mel, te eos vitae volutpat. Laudem tamquam inimicus te nam. Ut usu consequat mediocritatem.Ei mei detraxit scribentur, quo cu ornatus utroque volutpat. Ea velit offendit sed, cum stet constituam consequuntur ne. Ea volutpat partiendo adipiscing eum, mea insolens gloriatur dissentias id, exerci patrioque nam no. Sit vide sale at, ex mei prompta propriae. Eripuit meliore est eu. Ne unum augue placerat mei.</p>\r\n<p>Eu per iisque mandamus contentiones, reque dolore at usu, porro ocurreret vituperata at eos. Id per scaevola pericula, mea no minim dissentiunt, enim dissentias mediocritatem eam in. Liber facete definitiones has et, stet munere philosophia qui an. Adolescens omittantur ad vix, periculis efficiendi ea vis. Per porro argumentum eu, vix id aliquid nostrum, possit lucilius patrioque vix id.Nam nulla expetendis an, eu tamquam numquam omittam quo. Usu an illum inciderint accommodare. Ei apeirian inimicus nam, nonumy essent rationibus no nam. Usu voluptaria definiebas no.</p>\r\n<p>Ex qui modo postulant, no numquam assentior tincidunt vel. Usu periculis quaerendum ne, alienum phaedrum salutatus mei ei. Quo cu aperiri referrentur. In usu eros prima, audiam labores liberavisse usu ut, ut graecis atomorum mnesarchum eam. Et iudico propriae eum, ex vis probo euismod epicuri. Mea duis electram liberavisse ea, soluta laoreet id mei. Posse euripidis ex eam. Falli eleifend intellegebat mel cu. Sit habeo mucius nominati et, porro tritani veritus ne eam, utinam conceptam qui ea. Homero maiorum ius te, ne has vide laoreet, falli albucius ponderum has ea. Te putant inimicus abhorreant cum, no mea illum dissentias, eu velit munere dictas ius. Ad saepe tacimates vel, soleat accusam ut eam, ei vel labores commune dignissim. No case neglegentur qui, iusto corrumpit ne nec. Eu solet gloriatur usu, pro graeco essent ocurreret ad. At velit tibique perpetua quo. Dolorem mandamus electram ut mei, adipisci hendrerit sea at, et cibo dicit volutpat nec.</p>\r\n<p>An cum erat facilisis voluptaria. In audire temporibus nam. Ne velit soleat bonorum est, per in duis vidisse vituperata. Facete everti complectitur ius te. Sed utamur verterem voluptatum no, populo meliore ex usu, tale option quo at. Vis graece vidisse vituperata id, nulla dicant volumus te mel. Ad vim similique expetendis, autem modus ex nec, ad dico fugit duo. Suas debet perpetua vix et, sit no alii viris. Pertinax intellegebat est ad. Est id velit debet prompta, tale noluisse consulatu est eu. Et cibo tamquam repudiare mea, ea sit modus iusto scripserit. Voluptaria omittantur est eu. At diceret periculis adolescens sit. Eu per nisl nemore.</p>\r\n<p>Doctus similique sed ad, quo eu mucius adipisci. Ius tota salutatus no, no sonet postea qui, sed detracto iudicabit.</p>', 'images/girl-517555.jpg', '', '', 2, '2017-03-17 21:22:52', 1),
(27, 27, 23, 'Teen Online & Wireless Safety Survey', '<p>Teen Online &amp; Wireless Safety Survey</p>', '', 'documents/2009teensurvey.pdf', 'teen online wireless mobile virtual safety survey', 0, '2017-03-31 23:16:18', 1),
(28, 28, 23, 'PowerPoint', '<p>Test PowerPoint</p>', '', 'documents/testPowerpoint.pptx', '', 2, '2017-03-31 23:14:41', 1),
(29, 29, 19, 'Priceless - Bringing awareness to Human Trafficking', '<p><iframe src="//www.youtube.com/embed/OLhJlADZ_jo" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', 'images/PricelessPoster.jpg', '', 'priceless movie', 0, '2017-04-05 12:39:56', 1),
(30, 30, 23, 'What is Human Trafficking?', '<p>&nbsp;</p>\r\n<p><strong>What Is Human Trafficking? | Homeland Security</strong></p>\r\n<p>Human trafficking is modern-day slavery and involves the use of force, fraud, or coercion to obtain some type of labor or commercial sex act.</p>\r\n<p>Every year, millions of men, women, and children are trafficked in countries around the world, including the United States. It is estimated that human trafficking generates many billions of dollars of profit per year, second only to drug trafficking as the most profitable form of transnational crime.</p>\r\n<p>Human trafficking is a hidden crime as victims rarely come forward to seek help because of language barriers, fear of the traffickers, and/or fear of law enforcement.</p>\r\n<p>Traffickers use force, fraud, or coercion to lure their victims and force them into labor or commercial sexual exploitation. They look for people who are susceptible for a variety of reasons, including psychological or emotional vulnerability, economic hardship, lack of a social safety net, natural disasters, or political instability. The trauma caused by the traffickers can be so great that many may not identify themselves as victims or ask for help, even in highly public settings.</p>\r\n<p>Many <a href="https://www.dhs.gov/blue-campaign/myths-and-misconceptions" target="_blank" rel="noopener noreferrer">myths and misconceptions</a> exist. Recognizing key <a href="https://www.dhs.gov/blue-campaign/indicators-human-trafficking" target="_blank" rel="noopener noreferrer">indicators</a> of human trafficking is the first step in identifying victims and can help <a href="https://www.dhs.gov/blue-campaign/human-interest-stories" target="_blank" rel="noopener noreferrer">save a life</a>. Not all indicators listed are present in every human trafficking situation, and the presence or absence of any of the indicators is not necessarily proof of human trafficking.</p>\r\n<p>The safety of the public as well as the victim is paramount. <strong>Do not attempt to confront a suspected trafficker directly or alert a victim to any suspicions.</strong> It is up to law enforcement to investigate suspected cases of human trafficking.</p>\r\n<p>Source: <a href="https://www.dhs.gov/blue-campaign/what-human-trafficking" target="_blank" rel="noopener noreferrer">https://www.dhs.gov/blue-campaign/what-human-trafficking</a></p>', 'images/HumanTraffickingIs_1.png', '', 'human trafficking information info definition defined', 2, '2017-03-21 21:26:21', 1),
(31, 31, 23, 'Recognizing the Signs', '<p><strong>Recognizing the Signs of Trafficking</strong></p>\r\n<p>According to the Texas Human Trafficking Task Force, traffickers can play the quintessential role of a parent, student, or friend<sup>5</sup>. Trafficking victims range in ages from three to eighteen years old and have been found to be predominantly females for sexual exploitation. Males are also trafficked for sexual exploitation; however, evidence shows that they are more likely to be used for forced labor<sup>5</sup>. Both traffickers and trafficking victims can be found in schools, playgrounds, and other places where children and teenagers congregate as well as in larger places such as, inner-cities, suburbs, and rural areas<sup>5</sup>. The Texas Human Trafficking Task Force notes that educators, school administrators, and SBLE are in the best position to monitor student''s behaviors because they spend a large amount of time at school<sup>5</sup>. For instance, the Texas Commissioner of Education highlighted the important role the public education system played in reporting abuse<sup>5</sup>. They noted that 35,100 investigations of suspected child abuse and neglect completed by DFPS in 2012 were a result of reports from school personnel<sup>3</sup>. In Fiscal Year 2013, school personnel were also the reporting source for 33,146 completed investigations of possible abuse or neglect<sup>5</sup>. These data suggest that observations made by school personnel can produce opportunities to make life-altering decisions on behalf of the students.</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="../uploads/images/Quote.png?1490146477079" alt="Quote" /></p>\r\n<p>Table 1 provides several potential indicators of human trafficking that school staff should keep in mind. It is important to note, that no one indicator or combination of indicators necessarily signals trafficking is occurring. Rather, these indicators may serve as warning signs, especially if the indicator represents a significant change in the child<sup>5</sup>.</p>\r\n<div class="image">\r\n<h4 style="text-align: center;">Table 1. Potential Indicators of Human Trafficking<sup>5</sup></h4>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="../uploads/images/article_recognizing_human_trafficking_1.jpg?1490146907044" alt="article_recognizing_human_trafficking_1" /></p>\r\n<p><sup>3</sup>Texas Education Agency. (2013). Child abuse and neglect reporting requirements. Austin, TX: Retrieved from <a href="http://www.tea.state.tx.us/index4.aspx?id=25769803997" target="_blank" rel="noopener noreferrer">http://www.tea.state.tx.us/index4.aspx?id=25769803997</a>.</p>\r\n<p><sup>5</sup>Texas Human Trafficking Prevention Task Force. (2014). Introduction to human trafficking: A Guide for Texas education professionals. Austin, TX: Retrieved from <a href="http://www.texasattorneygeneral.gov/" target="_blank" rel="noopener noreferrer">http://www.texasattorneygeneral.gov</a>.</p>\r\n<p>Source: <a title="Page Source" href="https://txssc.txstate.edu/topics/school-violence/articles/recognizing-human-trafficking" target="_blank" rel="noopener noreferrer">https://txssc.txstate.edu/topics/school-violence/articles/recognizing-human-trafficking</a></p>\r\n</div>', 'images/Recognize.png', '', 'recognizing signs recognize warning teens students teachers human trafficking', 0, '2017-03-21 23:36:37', 1),
(33, 33, 27, '2016 Michigan Human Trafficking Commission Report', '<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><strong><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">The content in this article is for example purposes only. This article was originally found at&nbsp;<a title="michigan.gov link" href="http://www.michigan.gov/som/0,4669,7-192-47796-407478--,00.html" target="_blank" rel="noopener noreferrer"><span style="color: blue;">michigan.gov</span></a>.</span></strong></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">March 22, 2017</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><strong><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">LANSING</span></strong><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">&nbsp;&ndash; The 2016&nbsp;<a href="http://www.michigan.gov/documents/ag/2016+Human+Trafficking+Report_555198_7.pdf"><span style="color: blue;">Michigan Human Trafficking Commission Report</span></a>&nbsp;landed on the desks of Michigan lawmakers today, just as legislation recommended by the Commission unanimously passed the Michigan House.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">The report highlights the work completed and the ongoing work by the Commission, including:</span></p>\r\n<ul type="disc">\r\n<li class="MsoNormal" style="line-height: normal;"><span style="font-size: 10.5pt; font-family: ''Verdana'',sans-serif; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman'';">State-wide Human Trafficking Conference (<a href="http://www.michigan.gov/ag/0,4534,7-164-46849_47203-394509--,00.html"><span style="color: blue;">September 2016</span></a>)</span></li>\r\n<li class="MsoNormal" style="line-height: normal;"><span style="font-size: 10.5pt; font-family: ''Verdana'',sans-serif; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman'';">Working with medical societies to develop a comprehensive training video for health care professionals to use to identify human trafficking victims</span></li>\r\n<li class="MsoNormal" style="line-height: normal;"><span style="font-size: 10.5pt; font-family: ''Verdana'',sans-serif; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman'';">Reviewing state law and policies to make legislative recommendations</span></li>\r\n</ul>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">Schuette also thanked State Representative Bronna Kahle for her introduction of&nbsp;<a href="http://legislature.mi.gov/(S(bcibbpqj3hdabuxot2fhf5bu))/mileg.aspx?page=GetObject&amp;objectName=2017-HB-4219"><span style="color: blue;">House Bill 4219</span></a>, legislation recommended by the Michigan Human Trafficking Commission.&nbsp;If passed by the Senate and signed by the Governor, victims of human trafficking would have the ability to have a prostitution-related offense that they were forced to commit removed from their criminal record, even if the individual had a prior conviction for such an offense.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">&ldquo;Victims of human trafficking deserve a fresh start after the terrifying ordeal they have gone through,&rdquo; said Schuette. &ldquo;Being forced into prostitution through fraud or coercion is traumatic, and piecing together a life afterward can be complicated by past criminal charges. My hope is that this legislation becomes law and helps a victim set their record straight, and allows them to secure a job or continue their education.&rdquo;</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">The next meeting of the Michigan Human Trafficking Commission is scheduled for May 3, 2017 at 11:30 a.m. at the G. Mennen Williams Building in Lansing.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2;"><strong><span style="font-size: 18pt; font-family: Verdana, sans-serif;">PROTECTING VICTIMS, STOPPING TRAFFICKING IN MICHIGAN</span></strong></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">Created by reallocating resources in the Attorney General''s Criminal Division, Schuette''s Human Trafficking Unit has placed an increased focus on combating human trafficking in Michigan, a priority Schuette identified upon taking office. The unit works closely with local, state and federal law enforcement agencies to uncover and prosecute cases of modern-day slavery involving both children and adults.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2;"><strong><span style="font-size: 18pt; font-family: Verdana, sans-serif;">RECENT HUMAN TRAFFICKING CONVICTIONS IN MICHIGAN</span></strong></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">On&nbsp;<a href="http://www.michigan.gov/ag/0,4534,7-164-46849_47203-406810--,00.html"><span style="color: blue;">March 9, 2017</span></a>, Jonathon Colon, of Bronx, New York, pleaded guilty to one count of Human Trafficking, a felony punishable by up to 10 years in prison and is scheduled to be sentenced on March 30, 2017.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">In&nbsp;<a href="http://www.michigan.gov/ag/0,4534,7-164-46849_47203-382329--,00.html"><span style="color: blue;">April of 2016</span></a>, Jahan Satati Green, 38, of Inkster, was sentenced to 20-40 years in prison following his conviction on five felonies for running a prostitution ring across Oakland, Macomb and Wayne Counties. He was arrested by Schuette&rsquo;s Human Trafficking Unit in June 2015 after an extensive investigation conducted by the Department of Homeland Security.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">For more information, please visit the Attorney General&rsquo;s&nbsp;<a href="http://www.michigan.gov/ag/0,4534,7-164-60857---,00.html"><span style="color: blue;">human trafficking webpage</span></a>.</span></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">###</span></p>\r\n<p>&nbsp;</p>\r\n<p class="MsoNormal">&nbsp;</p>', 'images/LOGO.png', 'documents/2016MCoHT.pdf', 'Michigan Commission Report Data Statistics 2016', 0, '2017-03-28 21:44:29', 1),
(34, 34, 27, 'Human trafficking survivor to speak in West Michigan', '<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><strong><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">The content in this article is for example purposes only. This article was originally found at&nbsp;<a title="Survivor To Speak in West Michigan" href="http://wotv4women.com/2017/03/24/human-trafficking-survivor-to-speak-in-west-michigan/" target="_blank" rel="noopener noreferrer"><span style="color: blue;">wotv4women.com</span></a>, published on March 24, 2017.</span></strong></p>\r\n<p class="MsoNormal" style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;"><span style="font-size: 10.5pt; font-family: Verdana, sans-serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 13.5pt; line-height: normal;"><span style="font-size: 12.0pt; font-family: ''Arial'',sans-serif; mso-fareast-font-family: ''Times New Roman''; color: #454545;">Holland, Mich. &ndash;&nbsp;<a href="https://cwitmi.org/" target="_blank" rel="noopener noreferrer"><span style="color: blue; text-decoration: none; text-underline: none;">The Center for Women in Transition&nbsp;</span></a>proudly announces the 25th anniversary of its signature fundraising event, Reach for the Stars. The event raises approximately $150,000 annually, which the Center uses to provide crisis and supportive services to victims of domestic violence and sexual assault, along with violence prevention work in the community.</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 13.5pt; line-height: normal;"><span style="font-size: 12.0pt; font-family: ''Arial'',sans-serif; mso-fareast-font-family: ''Times New Roman''; color: #454545;"><a href="http://brookeaxtell.com/bio/" target="_blank" rel="noopener noreferrer"><span style="color: blue; text-decoration: none; text-underline: none;">Brooke Axtell</span></a>, keynote speaker, will share her personal story of survival and healing. Axtell is a survivor of human trafficking as a child, and domestic violence as an adult. She recently joined former President Barack Obama onstage at the 2015 Grammy Awards, performing a spoken-word piece about the devastating effects of domestic violence.</span></p>\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 19.0pt; font-family: ''Georgia'',serif; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #1b3a69;">&ldquo;Brooke&rsquo;s experience is a sobering reminder of why our services are needed,&rdquo; says Diane Ybarra, Board Chair of Center for Women in Transition. &ldquo;Human trafficking, domestic violence, and sexual assault are happening in every community. By bravely sharing her story, Brooke shines a light on those who need our help, and what we can each do to end the cycle of violence.&rdquo;</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 13.5pt; line-height: normal;"><span style="font-size: 12.0pt; font-family: ''Arial'',sans-serif; mso-fareast-font-family: ''Times New Roman''; color: #454545;">Seeking to end domestic and sexual violence, the Center provides both supportive and crisis services to more than 3,000 women, men and children in Ottawa and Allegan counties each year. Among the services provided to the community are emergency shelter, a 24-hour crisis line, transitional housing, legal advocacy, sexual assault nurse examinations, and trauma-informed therapy. In addition, the Center has a continuing commitment to violence prevention work through its partnership with local school districts and its Girls on the Run program.</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 13.5pt; line-height: normal;"><span style="font-size: 12.0pt; font-family: ''Arial'',sans-serif; mso-fareast-font-family: ''Times New Roman''; color: #454545;">The annual Reach for the Stars evening fundraiser provides a significant source of support for the Center for Women in Transition. The dinner program is accompanied by silent and mission-based auctions.</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 13.5pt; line-height: normal;"><span style="font-size: 12.0pt; font-family: ''Arial'',sans-serif; mso-fareast-font-family: ''Times New Roman''; color: #454545;">The details:<br /> Thursday, April 20, 2017<br /> Doors open at 5:45pm<br /> The Pinnacle Center: 3330 Highland Drive, Hudsonville, MI 49426<br /> Tickets may be purchased on the Center&rsquo;s website:&nbsp;<a href="http://www.cwitmi.org/events" target="_blank" rel="noopener noreferrer"><span style="color: blue; text-decoration: none; text-underline: none;">http://www.cwitmi.org/events</span></a>. Individual tickets are $100 if purchased by March 31 or $125 after that date.<br /> Reserved tables of eight are available; please contact Ellie at 616-494-1744 for more details.</span></p>\r\n<p>&nbsp;</p>\r\n<p class="MsoNormal">&nbsp;</p>', 'images/reach-for-the-stars-gala.jpg', '', '', 0, '2017-03-28 21:44:51', 1),
(37, 37, 19, 'TraffickCam app - Taking the fight against human trafficking', '<p>Article from Techcrunch.com:&nbsp; <a href="https://techcrunch.com/2016/06/25/traffickcam/" target="_blank" rel="noopener noreferrer">You can help stop human trafficking with the TraffickCam app</a></p>\r\n<p>&nbsp;</p>\r\n<p>Article excerpt: <em>"TraffickCam is an app developed by the <a href="http://www.exchangeinitiative.com/" target="_blank" rel="noopener noreferrer">Exchange Initiative</a>, an&nbsp;organization fighting back against sex trafficking.</em></p>\r\n<p><em>Most victims are recruited between the ages 12-14 <span class="pullquote-author-pos">&mdash; UNICEF</span></em></p>\r\n<p><em>The goal of the new app is to build a national database of photos of the insides of hotel rooms to help law enforcement match images posted by sex traffickers to locations, in an effort to map out the routes and methods used by traffickers. The app will also be useful to help locate victims &mdash; and the people who put them in their predicament."<u></u></em></p>', 'images/TraffickCam.jpg', '', 'traffickcam application mobile', 0, '2017-04-05 12:40:40', 1),
(35, 35, 1, 'Missing Children Success Story', '<p>In September 2009, NCMEC was contacted by a searching mother in Florida seeking help to locate her missing 8-year-old daughter.&nbsp; The child was scheduled to have a short visit with her father, but when the mother went to pick the child up at the end of the visit, the child and father were nowhere to be found. The mother called local law enforcement for assistance, and a warrant was issued for the father. The NCMEC case management team later submitted a referral to the United States Marshals Service, and they took the case. Despite the ongoing efforts of the mother, NCMEC and local and federal law enforcement, the whereabouts of the father and child remained unknown for almost five years.</p>\r\n<p>&nbsp;</p>\r\n<p>Then, in May 2014, law enforcement officers received the lead they needed. An individual had been visiting relatives in Mexico when they were introduced to a father and child who lived in the same remote area. The individual returned to the U.S. and was later shopping at a Walmart store in Texas when they noticed a NCMEC poster featuring two familiar faces. They contacted NCMEC and informed a Call Center specialist&nbsp;that they had met the taking father and missing child in Mexico, though they were using different names.</p>\r\n<p>&nbsp;</p>\r\n<p>NCMEC contacted the assigned inspector with the United States Marshals Service who immediately followed up with the caller and began to coordinate with NCMEC, the State Department, the Florida/Caribbean Regional Fugitive Task Force and the State&rsquo;s Attorney&rsquo;s Office. Each of the involved agencies did its part to quickly prepare for the recovery of the child, though no authorities had yet been able to confirm the identities of the father and child in Mexico.</p>\r\n<p>&nbsp;</p>\r\n<p>A U.S. &nbsp;Marshal team stationed in Mexico City traveled to the state of Hidalgo (over 120 miles from Mexico City in a remote part of the state) with Mexican authorities and State Department personnel. The team was able to locate the father and child and confirm their identities that day. The child was taken into protective custody, and the father was arrested. American Citizen&rsquo;s Services secured an expedited passport for the child, who was reunited with her mother.</p>\r\n<p>&nbsp;</p>\r\n<p><br /><br /></p>\r\n<p>&nbsp;</p>', '', '', 'parents Success Story', 0, '2017-03-28 20:51:25', 1),
(36, 36, 1, 'If Your Child Is Missing', '<p><strong>Act immediately if you believe your child is missing.<br /><br /></strong>Download this <a href="http://missingkids.org/Publications/NC198">checklist</a> of actions to be taken by families in the initial stages of a missing child case. If you have any questions call the NCMEC at <strong>1-800-THE-LOST</strong><strong><sup>&reg;</sup></strong><strong> (1-800-843-5678) </strong>or through the <a href="http://www.missingkids.org/Report">Live Hotline</a>.</p>\r\n<p>&nbsp;</p>\r\n<h2 class="western">What to do if your child is missing</h2>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0in;">Immediately <strong>call your local law enforcement agency.</strong></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">After you have reported your child missing to law enforcement, call the National Center for Missing &amp; Exploited Children at <strong>1-800-THE-LOST(1-800-843-5678).</strong></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">If your child is missing from home, search through:</p>\r\n<ul>\r\n<li>\r\n<p style="margin-bottom: 0in;">Closets.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Piles of laundry.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">In and under beds.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Inside large appliances.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Vehicles &ndash; including trunks.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Anywhere else that a child may crawl or hide.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p>Notify the store manager or security office if your child cannot be found when in a store. Then <strong>immediately call your local law enforcement agency.</strong> Many stores have a <a href="http://www.missingkids.org/CodeAdam">Code Adam</a> plan of action in place.</p>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>When you call law enforcement:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p style="margin-bottom: 0in;">Provide law enforcement with your child&rsquo;s name, date of birth, height, weight and descriptions of any other unique identifiers such as eyeglasses and braces. Tell them when you noticed your child was missing and what clothing he or she was wearing.</p>\r\n</li>\r\n<li>\r\n<p>Request law enforcement authorities immediately enter your child&rsquo;s name and identifying information into the FBI&rsquo;s <strong>National Crime Information Center Missing Person File.</strong></p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><br /><br /></p>\r\n<p>&nbsp;</p>\r\n<h2 class="western">How NCMEC can help</h2>\r\n<p>&nbsp;</p>\r\n<p>When you call NCMEC, a Call Center specialist will record information about your child. A NCMEC case management team will next work directly with your family and the law enforcement agency investigating your case. They will offer technical assistance tailored to your case to help ensure all available search and recovery methods are used. As appropriate NCMEC case management teams:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p style="margin-bottom: 0in;">Rapidly create and disseminate posters to help generate leads.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Rapidly review, analyze and disseminate leads received on <strong>1-800-THE-LOST (1-800-843-5678)</strong> to the investigating law enforcement agency.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Communicate with federal agencies to provide services to assist in the location and recovery of missing children.</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0in;">Provide peer support, resources and empowerment from trained volunteers who have experienced a missing child incident in their own family.</p>\r\n</li>\r\n<li>\r\n<p>Provide families with access to referrals they may use to help process any emotional or counseling needs.</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p style="margin-bottom: 0in;">&nbsp;</p>\r\n<p>&nbsp;</p>', '', '', 'Parents missing Child', 0, '2017-03-28 20:53:14', 1),
(38, 38, 24, 'Myths vs. Facts Infographic', '<p>There are many widespread myths regarding human trafficking. Use this infographic from The Department of Health and Human Services, <a href="https://www.acf.hhs.gov">https://www.acf.hhs.gov</a>, to discern myth from fact and reduce ignorance to this important issue.</p>', '', 'documents/mythFacts.pdf', 'Information, Facts, Data, Myths, ', 0, '2017-03-31 20:57:32', 1),
(39, 39, 1, 'quicktest', '<p>content</p>', '', '', '', 2, '2017-03-31 22:53:40', 1),
(41, 41, 1, 'Free Online Program for teaching internet safety for grades 3 - 8', '<p>&nbsp;</p>\r\n<p>The FBI has provided a website for teaching children grades 3 to 8 about being safe online.</p>\r\n<p>The website runs a&nbsp;game that comes with instructions for the students playing and also for teachers if it is to be incorporated into a class.</p>\r\n<p>This is a great way to teach children about being safe online in a fun way.</p>\r\n<p>&nbsp;</p>\r\n<p><a href="https://sos.fbi.gov/">https://sos.fbi.gov/</a></p>', 'images/fbicybersurf.jpg', '', 'fbi cyber security cybersecurity online safety kids kid child children elementary', 0, '2017-04-15 19:08:13', 1);
INSERT INTO `articleTransactions` (`transactionID`, `articleID`, `transactionAuthorID`, `articleTitle`, `articleContent`, `articleImage`, `fileName`, `articleTags`, `articlePending`, `transactionDate`, `articleVersionID`) VALUES
(42, 42, 23, 'How college students are fighting human and sex trafficking', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Samia Kamal stands in front of 50 college students at Princeton, telling the story of how she found herself there so far from home. She&rsquo;s a refugee.&nbsp;Her village was raided by ISIS. Kamal, only 16 years old, and her family were sold into slavery, she says, to be passed around among the the terrorists.</p>\r\n<p>She escaped and sought asylum in Germany, separated from her family and everything she had ever known. She is just one of the formerly faceless victims of modern human trafficking and slavery. She just one of 36 million.</p>\r\n<p>The <a href="https://www.facebook.com/PrincetonAgainstSexTrafficking/" target="_blank" rel="noopener noreferrer">Princeton Against Sex Trafficking</a> student organization &mdash; one of several college organizations, like the <a href="http://www.thebatt.com/news/campus-group-fights-human-trafficking-in-us/article_15862802-abb0-11e6-95f6-0f2fd8fcfc03.html" target="_blank" rel="noopener noreferrer">International Justice Mission</a>&nbsp;or <a href="http://www.georgiahealthnews.com/2016/04/campus-groups-slavery-modern-menace/" target="_blank" rel="noopener noreferrer">One Voice</a> battling human trafficking worldwide &mdash; wants to give a face to human trafficking.</p>\r\n<p>&ldquo;Our organization is really passionate about revealing the humanity behind the victims of human trafficking,&rdquo; said Katherine Trout, a sophomore public and international affairs major and co-president of the Princeton group. &ldquo;Often, we see statistics talking about millions and millions of people enslaved, and while those statistics may be impressive, I think even more shocking is when you have a little girl sit down and tell you how she was enslaved.&rdquo;</p>\r\n<p>Trout runs <a href="http://princetonpast.weebly.com/" target="_blank" rel="noopener noreferrer">the student group</a> with her classmate, Matthew Allen, a junior public and international affairs major. Allen and Trout both first became aware of the issue in their teens but didn&rsquo;t realize how they could help until they heard about the college organization.</p>\r\n<p>&ldquo;It was such a worthy cause I would love to dedicate my life to prevent, but there wasn&rsquo;t very much I could do back then,&rdquo; Allen said. &ldquo;Coming to Princeton and hearing about this organization, I very quickly got involved. We have a great opportunity to make a difference even by raising awareness.&rdquo;</p>\r\n<p>Made up of a 10-person board and 30-person support network, PAST&nbsp;attempts to combat human trafficking by raising awareness and fundraising. They partner with global organizations like <a href="https://www.yazda.org/about/" target="_blank" rel="noopener noreferrer">Yazda</a>, which battles human trafficking of the Yazidi people, an ethno-religious group indegiounous to Mesopotamia. They host guests and screen movies about modern-day slavery, like <em>Priceless</em>.</p>\r\n<p>Knowledge, they say, is half the battle.</p>\r\n<p>&ldquo;Most Americans if you ask them, &lsquo;What is slavery today? Does it exist in the United States?&rsquo; The overall answer will be no, it doesn&rsquo;t exist,&rdquo; Trout said. &ldquo;That&rsquo;s unfortunately false. Today, we have a large amount of human trafficking rings in the United States.&rdquo;</p>\r\n<p>In the United States, 7,572 cases of human trafficking were reported in 2016, according to the <a href="https://humantraffickinghotline.org/states" target="_blank" rel="noopener noreferrer">National Human Trafficking Hotline</a>. There are 20.9 million victims of human trafficking world wide, according to the <a href="https://polarisproject.org/facts" target="_blank" rel="noopener noreferrer">International Labour Organization</a>. Human trafficking is defined by the <a href="https://www.dhs.gov/blue-campaign/what-human-trafficking" target="_blank" rel="noopener noreferrer">Department of Homeland Security</a> as a modern form of slavery involving the illegal trade of people for profit and exploitation. Sex trafficking is the most common form of human trafficking.</p>\r\n<p>To realize she could be walking past victims of human trafficking every day on the street was shocking for Trout. She said human trafficking isn&rsquo;t like it is portrayed in Hollywood. While kidnappings do happen, they&rsquo;re not usually to rich college girls vacationing in a foreign country like in <em><a href="https://www.youtube.com/watch?v=uPJVJBm9TPA" target="_blank" rel="noopener noreferrer">Taken</a></em>.&nbsp;</p>\r\n<p>Foster kids and runaways as young as middle school age are disproportionately targeted by human traffickers because they lack the support of family and friends. If they go missing, it&rsquo;ll be a long time before they&rsquo;re noticed missing.</p>\r\n<p>&ldquo;There (are) more slaves today than in the history of the world, which is absolutely shocking and horrifying,&rdquo; Trout said.</p>\r\n<p>One technique human traffickers use, Allen said, is the &ldquo;boyfriend technique.&rdquo; Traffickers show interest in a target, convince the victim that they care about them like a boyfriend or girlfriend, and slowly trap them in a situation that the victim can&rsquo;t escape.</p>\r\n<p>Raising awareness is important because it is often everyday citizens, like a concerned neighbor or teacher, who <a href="https://www.usatoday.com/story/news/nation-now/2017/02/07/flight-attendant-says-she-rescued-girl-human-trafficking/97583800/" target="_blank" rel="noopener noreferrer">notice something odd or amiss</a> that bust trafficking rings, Trout said.</p>\r\n<p>Campus organizations raising awareness about human trafficking have a role to play because most college students don&rsquo;t even realize human trafficking is a problem.</p>\r\n<p>&ldquo;Campus groups are important because colleges are made up of the next generation of future leaders,&rdquo; Trout said. &ldquo;Not just at Princeton, but at universities across America and across the world are made up of individuals who will be the next senators, next presidents, next business leaders, technology leaders and engineers. They&rsquo;ll be the individuals that will be able to make a real difference in the state of human rights domestically and worldwide.&rdquo;</p>\r\n<p>If you want to get involved, you may want to look into organizations like one of the groups above, or possibly Polaris Project, <a href="https://www.themuse.com/advice/the-fight-for-freedom-7-organizations-combatting-human-trafficking" target="_blank" rel="noopener noreferrer">Urban Light</a> or <a href="http://www.a21.org/" target="_blank" rel="noopener noreferrer">A21</a>, which also try to track and raise awareness about human trafficking.</p>\r\n<p>Source:&nbsp;<a href="http://college.usatoday.com/2017/04/13/how-college-students-are-fighting-human-and-sex-trafficking/">http://college.usatoday.com/2017/04/13/how-college-students-are-fighting-human-and-sex-trafficking/</a>&nbsp;</p>\r\n</body>\r\n</html>', 'images/william-stitt-162611.jpg', '', '', 0, '2017-04-23 21:05:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `asideSection`
--

CREATE TABLE IF NOT EXISTS `asideSection` (
  `asideSectionID` int(10) NOT NULL AUTO_INCREMENT,
  `asideHeader` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `asideText` text COLLATE latin1_general_ci,
  PRIMARY KEY (`asideSectionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `asideSection`
--

INSERT INTO `asideSection` (`asideSectionID`, `asideHeader`, `asideText`) VALUES
(1, 'Human Trafficking Conference April 5th and 6th', '<p>More details to come :)</p>');

-- --------------------------------------------------------

--
-- Table structure for table `bodySettings`
--

CREATE TABLE IF NOT EXISTS `bodySettings` (
  `bodySettingID` int(10) NOT NULL AUTO_INCREMENT,
  `bodyView` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `bodyHeroic` tinyint(1) NOT NULL,
  `heroicImage` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `heroicHeader` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `heroicText1` text COLLATE latin1_general_ci,
  `bodyText` tinyint(1) NOT NULL DEFAULT '1',
  `fpEnableCategories` tinyint(1) NOT NULL DEFAULT '1',
  `fpEnableArticles` tinyint(1) NOT NULL DEFAULT '1',
  `fpOrder` tinyint(1) NOT NULL DEFAULT '0',
  `bodyContent` text COLLATE latin1_general_ci,
  `fpPagLength` int(10) NOT NULL DEFAULT '5',
  PRIMARY KEY (`bodySettingID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bodySettings`
--

INSERT INTO `bodySettings` (`bodySettingID`, `bodyView`, `bodyHeroic`, `heroicImage`, `heroicHeader`, `heroicText1`, `bodyText`, `fpEnableCategories`, `fpEnableArticles`, `fpOrder`, `bodyContent`, `fpPagLength`) VALUES
(1, 'includes/categoryList.php', 1, 'images/Banner.jpg', '', '', 1, 1, 1, 0, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(10) NOT NULL AUTO_INCREMENT,
  `navigationID` int(10) NOT NULL,
  `categoryName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `categoryImage` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `categoryContent` text COLLATE latin1_general_ci,
  `categoryOrder` int(3) NOT NULL,
  `categoryVisible` tinyint(1) NOT NULL,
  `categoryTypeID` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`categoryID`),
  KEY `FK_categories` (`navigationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=254 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `navigationID`, `categoryName`, `categoryImage`, `categoryContent`, `categoryOrder`, `categoryVisible`, `categoryTypeID`) VALUES
(2, 19, 'College Students', 'images/CollegeStudents.jpg', '', 2, 1, 1),
(3, 19, 'Parents', 'images/Parents.jpg', '', 3, 1, 1),
(4, 19, 'Teachers', 'images/Teachers.jpg', '', 4, 1, 1),
(5, 19, 'Teens', 'images/Teens.jpg', '', 1, 1, 1),
(104, 3, 'Volunteer Opportunities', 'images/action-changes-things.jpg', '<p>Image from: http://collegeismylife.com/cmlstaff/time-for-life/. Lorem ipsum dolor sit amet, te vix vitae tation. Has an vidit congue qualisque, id debet evertitur delicatissimi has. Eos scripta ocurreret iracundia no, denique definitiones has ex. Aeque liberavisse te pro, et mea veniam numquam ponderum, te paulo interpretaris eam. Sit id ipsum atomorum disputationi, vel et tale agam. Mundi audiam admodum mei ea, pri in debet tincidunt.</p>', 1, 1, 1),
(1, 0, 'Special Page', NULL, NULL, 1, 1, 1),
(251, 19, 'General', 'images/General.jpg', '', 5, 1, 1),
(245, 25, 'Information', 'images/QuestionMark.png', '<p>General information about human trafficking</p>', 3, 1, 1),
(249, 25, 'Government Resources', 'images/QuestionMark.png', '', 4, 1, 1),
(250, 25, 'What is Human Trafficking?', 'images/HumanTraffickingIs_1.png', '<p><strong>What Is Human Trafficking? | Homeland Security</strong></p>\r\n<p>Human trafficking is modern-day slavery and involves the use of force, fraud, or coercion to obtain some type of labor or commercial sex act.</p>\r\n<p>Every year, millions of men, women, and children are trafficked in countries around the world, including the United States. It is estimated that human trafficking generates many billions of dollars of profit per year, second only to drug trafficking as the most profitable form of transnational crime.</p>\r\n<p>Human trafficking is a hidden crime as victims rarely come forward to seek help because of language barriers, fear of the traffickers, and/or fear of law enforcement.</p>\r\n<p>Traffickers use force, fraud, or coercion to lure their victims and force them into labor or commercial sexual exploitation. They look for people who are susceptible for a variety of reasons, including psychological or emotional vulnerability, economic hardship, lack of a social safety net, natural disasters, or political instability. The trauma caused by the traffickers can be so great that many may not identify themselves as victims or ask for help, even in highly public settings.</p>\r\n<p>Many <a href="https://www.dhs.gov/blue-campaign/myths-and-misconceptions" target="_blank" rel="noopener noreferrer">myths and misconceptions</a> exist. Recognizing key <a href="https://www.dhs.gov/blue-campaign/indicators-human-trafficking" target="_blank" rel="noopener noreferrer">indicators</a> of human trafficking is the first step in identifying victims and can help <a href="https://www.dhs.gov/blue-campaign/human-interest-stories" target="_blank" rel="noopener noreferrer">save a life</a>. Not all indicators listed are present in every human trafficking situation, and the presence or absence of any of the indicators is not necessarily proof of human trafficking.</p>\r\n<p>The safety of the public as well as the victim is paramount. <strong>Do not attempt to confront a suspected trafficker directly or alert a victim to any suspicions.</strong> It is up to law enforcement to investigate suspected cases of human trafficking.</p>\r\n<p>Source: <a href="https://www.dhs.gov/blue-campaign/what-human-trafficking" target="_blank" rel="noopener noreferrer">https://www.dhs.gov/blue-campaign/what-human-trafficking</a></p>\r\n<p>&nbsp;</p>', 1, 1, 2),
(244, 25, 'Data & Statistics', 'images/Graph.png', '<p>Data &amp; statistics about human trafficking.</p>', 2, 1, 1),
(252, 28, 'Reach for the Stars', 'images/ReachForStars.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Holland, Mich. &ndash; <a href="https://cwitmi.org/" target="_blank" rel="noopener noreferrer">The Center for Women in Transition </a>proudly announces the 25th anniversary of its signature fundraising event, Reach for the Stars. The event raises approximately $150,000 annually, which the Center uses to provide crisis and supportive services to victims of domestic violence and sexual assault, along with violence prevention work in the community.</p>\r\n<p><a href="http://brookeaxtell.com/bio/" target="_blank" rel="noopener noreferrer">Brooke Axtell</a>, keynote speaker, will share her personal story of survival and healing. Axtell is a survivor of human trafficking as a child, and domestic violence as an adult.</p>\r\n<p><a href="http://wotv4women.com/2017/03/24/human-trafficking-survivor-to-speak-in-west" target="_blank" rel="noopener noreferrer">Click here&nbsp;for more details.</a></p>\r\n</body>\r\n</html>', 1, 1, 3),
(253, 28, 'Many Facets of Human Trafficking', 'images/MidMichiganTaskForce.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>A panel discussion, "The Many Facets of Human Trafficking," is from 6:30 p.m. to 8 p.m. on Wednesday, April 19, at Vasher Theater in Heritage High School, located at 3465 North Center Road in Saginaw. This event is presented by the Mid Michigan Human Trafficking Task Force and hosted by Saginaw Township Community Education.</p>\r\n<p><a href="http://www.mlive.com/news/saginaw/index.ssf/2017/04/human_trafficking_awareness_ev_2.html" target="_blank" rel="noopener noreferrer">Click here for more details.</a></p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categoryType`
--

CREATE TABLE IF NOT EXISTS `categoryType` (
  `categoryTypeID` int(10) NOT NULL AUTO_INCREMENT,
  `categoryTypeName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`categoryTypeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categoryType`
--

INSERT INTO `categoryType` (`categoryTypeID`, `categoryTypeName`) VALUES
(1, 'Allow Articles'),
(2, 'Single Page'),
(3, 'Event');

-- --------------------------------------------------------

--
-- Table structure for table `changeLog`
--

CREATE TABLE IF NOT EXISTS `changeLog` (
  `changeID` int(10) NOT NULL AUTO_INCREMENT,
  `changeByUserID` int(10) NOT NULL,
  `changedTable` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `changeDetails` text COLLATE latin1_general_ci NOT NULL,
  `changeDate` datetime NOT NULL,
  PRIMARY KEY (`changeID`),
  KEY `FK_users1` (`changeByUserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=641 ;

--
-- Dumping data for table `changeLog`
--

INSERT INTO `changeLog` (`changeID`, `changeByUserID`, `changedTable`, `changeDetails`, `changeDate`) VALUES
(243, 1, 'users', 'Added User: test', '2017-01-20 19:19:13'),
(244, 1, 'users', 'Added User: leathel', '2017-01-20 19:21:28'),
(245, 19, 'articles + articleTransactions', 'Added article: Example Article 1', '2017-01-20 19:26:40'),
(246, 19, 'articles + articleTransactions', 'Added article: Another article', '2017-01-20 19:27:29'),
(247, 19, 'articles + articleTransactions', 'Added article: Example of Pending Article', '2017-01-20 19:38:49'),
(248, 19, 'articles + articleTransactions', 'Added article: Another Pending Article', '2017-01-20 19:42:29'),
(249, 18, 'users', 'Added User: micahTest', '2017-02-02 19:11:35'),
(250, 1, 'articles + articleTransactions', 'Added article: Micah Test', '2017-02-03 20:26:16'),
(251, 1, 'articles + articleTransactions', 'Deleted article: Micah Test', '2017-02-03 20:29:25'),
(252, 1, 'articles + articleTransactions', 'Added article: Micah Test', '2017-02-03 20:30:35'),
(253, 1, 'articles + articleTransactions', 'Edited article: Micah Test', '2017-02-03 20:32:00'),
(254, 1, 'articles + articleTransactions', 'Deleted article: Micah Test', '2017-02-03 20:34:55'),
(255, 1, 'articles + articleTransactions', 'Added article: Micah Test', '2017-02-03 20:37:12'),
(256, 1, 'articles + articleTransactions', 'Added article: Test Article', '2017-02-03 20:41:51'),
(257, 1, 'users', 'Updated User: micahTest', '2017-02-03 21:01:24'),
(258, 1, 'users', 'Updated User: micahTest', '2017-02-03 21:02:03'),
(259, 20, 'articles + articleTransactions', 'Deleted article: Micah Test', '2017-02-03 21:02:28'),
(260, 20, 'articles + articleTransactions', 'Added article: Im adding an article', '2017-02-03 21:03:22'),
(261, 20, 'users', 'Updated User: micahTest', '2017-02-03 21:10:11'),
(262, 19, 'users', 'Added User: testcontrib', '2017-02-03 21:44:04'),
(263, 19, 'navigations', 'Added: test', '2017-02-03 22:12:52'),
(264, 19, 'navigations', 'Added: Resources', '2017-02-03 22:14:36'),
(265, 19, 'articles + articleTransactions', 'Edited article: Test Article Edit', '2017-02-03 22:21:26'),
(266, 19, 'categories', 'Updated Teachers2', '2017-02-03 22:23:30'),
(267, 19, 'categories', 'Updated Teachers', '2017-02-03 22:23:40'),
(268, 1, 'categories', 'Updated Volunteer Opportunities', '2017-02-03 22:27:23'),
(269, 1, 'categories', 'Updated Volunteer Opportunities', '2017-02-03 22:28:52'),
(270, 1, 'categories', 'Updated Teens', '2017-02-03 22:31:49'),
(271, 1, 'categories', 'Updated College Students', '2017-02-03 22:34:41'),
(272, 20, 'articles + articleTransactions', 'Deleted article: Im adding an article', '2017-02-03 22:35:30'),
(273, 1, 'categories', 'Updated Parents', '2017-02-03 22:37:30'),
(274, 1, 'categories', 'Updated Teachers', '2017-02-03 22:42:53'),
(275, 1, 'users', 'Updated User: test', '2017-02-04 09:19:27'),
(276, 1, 'users', 'Updated User: test', '2017-02-04 09:19:43'),
(277, 1, 'categories', 'Added hgjhg', '2017-02-04 09:25:53'),
(278, 1, 'categories', 'Updated hgjhg', '2017-02-04 09:26:01'),
(279, 1, 'articles + articleTransactions', 'Edited article: Another Pending Article', '2017-02-04 09:30:07'),
(280, 1, 'articles + articleTransactions', 'Edited article: Another Pending Article - Edited', '2017-02-04 09:30:30'),
(281, 1, 'navigations', 'Added: dagfds', '2017-02-04 09:34:57'),
(282, 1, 'navigations', 'Added: Google', '2017-02-04 09:35:23'),
(283, 21, 'articles + articleTransactions', 'Added article: This is a test for pdfs', '2017-02-05 11:38:45'),
(284, 19, 'categories', 'Updated Test', '2017-02-06 18:57:25'),
(285, 19, 'articles + articleTransactions', 'Added article: Test Video', '2017-02-19 15:31:48'),
(286, 19, 'articles + articleTransactions', 'Added article: test', '2017-02-19 15:39:05'),
(287, 19, 'articles + articleTransactions', 'Added article: test2', '2017-02-19 15:39:18'),
(288, 19, 'articles + articleTransactions', 'Added article: Test Video', '2017-02-19 15:40:26'),
(289, 19, 'articles + articleTransactions', 'Added article: Ashton Kutcher talking to Senate on Human Trafficking', '2017-02-19 15:41:54'),
(290, 19, 'articles + articleTransactions', 'Added article: Facts', '2017-02-19 15:49:31'),
(291, 19, 'articles + articleTransactions', 'Added article: About', '2017-02-19 15:50:05'),
(292, 19, 'navigations', 'Added: Facts', '2017-02-19 15:50:18'),
(293, 19, 'navigations', 'Added: About', '2017-02-19 15:50:25'),
(294, 19, 'categories', 'Deleted Test', '2017-02-19 16:03:39'),
(295, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-02-19 17:02:50'),
(296, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-02-19 17:08:08'),
(297, 19, 'categories', 'Updated Parents', '2017-02-19 19:20:21'),
(298, 1, 'users', 'Updated User: test', '2017-02-20 00:17:54'),
(299, 19, 'articles + articleTransactions', 'Added article: Not locked', '2017-02-20 09:33:56'),
(300, 19, 'articles + articleTransactions', 'Added article: Locked article exmaple', '2017-02-20 09:35:36'),
(301, 19, 'articles + articleTransactions', 'Edited article: Ashton Kutcher talking to Senate on Human Trafficking', '2017-02-20 09:35:56'),
(302, 19, 'articles + articleTransactions', 'Edited article: Locked article example', '2017-02-20 09:37:49'),
(303, 1, 'categories', 'Updated Teens', '2017-02-23 23:59:03'),
(304, 1, 'categories', 'Updated College Students', '2017-02-23 23:59:35'),
(305, 1, 'categories', 'Updated Parents', '2017-02-23 23:59:48'),
(306, 1, 'categories', 'Updated Teachers', '2017-02-23 23:59:58'),
(307, 1, 'categories', 'Updated College Students', '2017-02-24 00:00:14'),
(308, 1, 'categories', 'Updated Teens', '2017-02-24 00:00:35'),
(309, 1, 'users', 'Updated User: micahTest', '2017-03-03 21:17:56'),
(310, 1, 'users', 'Added User: mccordm', '2017-03-03 21:18:30'),
(311, 22, 'users', 'Updated User: micahTest', '2017-03-03 21:35:22'),
(312, 22, 'users', 'Updated User: mccordm', '2017-03-03 21:35:37'),
(313, 19, 'footerLayout', 'Updated Footer Layout Settings', '2017-03-05 16:22:17'),
(314, 19, 'articles + articleTransactions', 'Added article: Test', '2017-03-05 16:26:37'),
(315, 19, 'articles + articleTransactions', 'Deleted article: Test', '2017-03-05 16:27:55'),
(316, 19, 'categories', 'Updated Teens', '2017-03-05 16:34:56'),
(317, 1, 'categories', 'Added Data & Statistics', '2017-03-05 18:56:07'),
(318, 1, 'categories', 'Added Information', '2017-03-05 19:00:44'),
(319, 1, 'articles + articleTransactions', 'Deleted article: Facts', '2017-03-05 19:08:45'),
(320, 1, 'categories', 'Updated Data & Statistics', '2017-03-05 19:11:18'),
(321, 1, 'categories', 'Updated Information', '2017-03-05 19:11:34'),
(322, 1, 'navigations', 'Added: Facts', '2017-03-05 19:12:22'),
(323, 1, 'categories', 'Updated Data & Statistics', '2017-03-05 19:13:57'),
(324, 1, 'categories', 'Updated Information', '2017-03-05 19:14:05'),
(325, 1, 'categories', 'Deleted Data ', '2017-03-05 19:19:29'),
(326, 1, 'categories', 'Deleted Information', '2017-03-05 19:19:36'),
(327, 1, 'articles + articleTransactions', 'Added article: Facts', '2017-03-05 19:23:19'),
(328, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-05 19:49:04'),
(329, 1, 'navigations', 'Added: More Facts', '2017-03-05 20:04:27'),
(330, 1, 'categories', 'Added Test', '2017-03-05 20:04:51'),
(331, 1, 'categories', 'Updated Data & Statistics', '2017-03-05 20:07:52'),
(332, 1, 'categories', 'Added Information', '2017-03-05 20:08:49'),
(333, 1, 'articles + articleTransactions', 'Added article: What is Human Trafficking?', '2017-03-05 20:36:54'),
(334, 1, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-05 20:43:52'),
(335, 1, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-05 20:54:10'),
(336, 1, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-05 20:54:57'),
(337, 1, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-05 21:00:53'),
(338, 18, 'articles + articleTransactions', 'Added article: Power Point', '2017-03-05 23:32:28'),
(339, 1, 'users', 'Added User: scriver', '2017-03-16 21:38:24'),
(340, 1, 'users', 'Added User: Evansb12', '2017-03-16 21:46:12'),
(341, 23, 'articles + articleTransactions', 'Added article: Article Image Test', '2017-03-17 17:30:14'),
(342, 23, 'articles', 'Article &#039;Article Image Test&#039; was set to visible.', '2017-03-17 17:30:31'),
(343, 23, 'articles + articleTransactions', 'Article &#039;Article Image Test&#039; was archived.', '2017-03-17 17:32:09'),
(344, 23, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-17 17:32:35'),
(345, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-17 17:59:58'),
(346, 23, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-17 18:00:38'),
(347, 23, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-17 18:01:10'),
(348, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-17 18:02:00'),
(349, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 18:16:48'),
(350, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 18:18:35'),
(351, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 18:45:51'),
(352, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 18:47:55'),
(353, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 18:49:04'),
(354, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 19:14:17'),
(355, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 19:21:40'),
(356, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 19:22:49'),
(357, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 19:25:50'),
(358, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 19:26:41'),
(359, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 20:53:19'),
(360, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 20:55:30'),
(361, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:02:26'),
(362, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 21:02:51'),
(363, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:04:43'),
(364, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:05:56'),
(365, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:06:41'),
(366, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:07:39'),
(367, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:08:01'),
(368, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:09:35'),
(369, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:10:46'),
(370, 23, 'themeColors', 'Site color scheme was updated.', '2017-03-17 21:11:29'),
(371, 23, 'articles + articleTransactions', 'Added article: Article Title', '2017-03-17 21:17:17'),
(372, 23, 'articles + articleTransactions', 'Added article: Another Title', '2017-03-17 21:21:02'),
(373, 23, 'articles', 'Article &#039;Another Title&#039; was set to visible.', '2017-03-17 21:21:22'),
(374, 23, 'articles', 'Article &#039;Article Title&#039; was set to visible.', '2017-03-17 21:21:24'),
(375, 23, 'articles + articleTransactions', 'Edited article: Another Title', '2017-03-17 21:22:52'),
(376, 23, 'articles', 'Article &#039;Another Title&#039; was set to visible.', '2017-03-17 21:22:54'),
(377, 23, 'articles + articleTransactions', 'Added article: Teen Online & Wireless Safety Survey', '2017-03-17 21:43:25'),
(378, 23, 'articles', 'Article &#039;Teen Online &#039; was set to visible.', '2017-03-17 21:43:42'),
(379, 23, 'articles + articleTransactions', 'Added article: PowerPoint', '2017-03-17 21:47:41'),
(380, 23, 'articles', 'Article &#039;PowerPoint&#039; was set to visible.', '2017-03-17 21:47:55'),
(381, 23, 'navigations', 'Navigation &#039;Facts&#039; was edited', '2017-03-17 22:07:48'),
(382, 23, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-03-17 22:08:31'),
(383, 23, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-03-17 22:09:02'),
(384, 23, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-03-17 22:09:38'),
(385, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-03-17 22:35:57'),
(386, 1, 'users', 'Added User: imacontributor', '2017-03-18 00:00:17'),
(387, 1, 'themeColors', 'Site color scheme was updated.', '2017-03-18 00:01:41'),
(388, 1, 'themeColors', 'Site color scheme was updated.', '2017-03-18 00:02:39'),
(389, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:03:35'),
(390, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:03:53'),
(391, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:05:45'),
(392, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:06:24'),
(393, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:07:39'),
(394, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-03-18 00:08:08'),
(395, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-18 00:08:47'),
(396, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-18 00:11:00'),
(397, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-18 00:11:21'),
(398, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-18 00:11:50'),
(399, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-18 00:12:44'),
(400, 1, 'footerLayout', 'Updated Footer Layout Settings', '2017-03-18 00:13:22'),
(401, 1, 'footerLayout', 'Updated Footer Layout Settings', '2017-03-18 00:14:47'),
(402, 19, 'articles', 'Edit made to Aside Section', '2017-03-18 20:48:24'),
(403, 19, 'articles', 'Edit made to Aside Section', '2017-03-18 20:48:45'),
(404, 1, 'articles + articleTransactions', 'Added article: Priceless - Bringing awareness to Human Trafficking', '2017-03-20 19:21:21'),
(405, 23, 'articles + articleTransactions', 'Edited article: Blue Campaign Infographic', '2017-03-21 20:14:45'),
(406, 23, 'articles + articleTransactions', 'Added article: What is Human Trafficking?', '2017-03-21 20:33:13'),
(407, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-21 20:33:32'),
(408, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-21 20:33:35'),
(409, 19, 'links', 'Aside Link &#039;National Human Trafficking Hotline &#039; was added', '2017-03-21 20:33:55'),
(410, 19, 'links', 'Aside Link &#039;National Center for Missing and Exploited Children &#039; was added', '2017-03-21 20:34:56'),
(411, 23, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-21 20:40:08'),
(412, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-21 20:40:43'),
(413, 23, 'articles', 'Article &#039;Blue Campaign Infographic&#039; was set to visible.', '2017-03-21 20:40:45'),
(414, 19, 'articles + articleTransactions', '&#039;Priceless - Bringing awareness to Human Trafficking&#039; was approved.', '2017-03-21 20:46:14'),
(415, 23, 'articles + articleTransactions', 'Added article: Recognizing the Signs', '2017-03-21 21:25:57'),
(416, 23, 'articles + articleTransactions', 'Edited article: What is Human Trafficking?', '2017-03-21 21:26:21'),
(417, 23, 'articles + articleTransactions', 'Edited article: Recognizing the Signs', '2017-03-21 21:44:51'),
(418, 23, 'articles', 'Article &#039;Recognizing the Signs&#039; was set to visible.', '2017-03-21 21:44:57'),
(419, 23, 'articles', 'Article &#039;What is Human Trafficking?&#039; was set to visible.', '2017-03-21 21:44:58'),
(420, 23, 'articles + articleTransactions', 'Edited article: Recognizing the Signs', '2017-03-21 21:52:59'),
(421, 23, 'articles', 'Article &#039;Recognizing the Signs&#039; was set to visible.', '2017-03-21 21:53:01'),
(422, 23, 'articles + articleTransactions', 'Edited article: Recognizing the Signs', '2017-03-21 21:55:23'),
(423, 23, 'articles', 'Article &#039;Recognizing the Signs&#039; was set to visible.', '2017-03-21 21:56:28'),
(424, 23, 'articles + articleTransactions', 'Edited article: Recognizing the Signs', '2017-03-21 23:36:37'),
(425, 23, 'articles', 'Article &#039;Recognizing the Signs&#039; was set to visible.', '2017-03-21 23:36:40'),
(426, 19, 'articles + articleTransactions', '&#039;Recognizing the Signs&#039; was approved.', '2017-03-28 10:14:05'),
(427, 19, 'articles + articleTransactions', '&#039;What is Human Trafficking?&#039; was approved.', '2017-03-28 10:14:07'),
(428, 19, 'articles + articleTransactions', '&#039;Blue Campaign Infographic&#039; was approved.', '2017-03-28 10:15:44'),
(429, 18, 'users', 'Added User: RachelLight', '2017-03-28 12:53:02'),
(430, 18, 'users', 'Updated User: RachelLight', '2017-03-28 12:54:32'),
(431, 23, 'navigations', 'Added: Navigation', '2017-03-28 12:55:50'),
(432, 23, 'categories', 'Added Title', '2017-03-28 12:56:31'),
(433, 23, 'articles + articleTransactions', 'Added article: Title of Article', '2017-03-28 12:58:18'),
(434, 23, 'articles + articleTransactions', '&#039;Title of Article&#039; was approved.', '2017-03-28 12:58:21'),
(435, 23, 'articles + articleTransactions', 'Edited article: Title of Article', '2017-03-28 12:59:26'),
(436, 23, 'articles + articleTransactions', '&#039;Title of Article&#039; was approved.', '2017-03-28 13:00:42'),
(437, 1, 'articles + articleTransactions', 'Article &#039;Title of Article&#039; was archived.', '2017-03-28 14:35:59'),
(438, 1, 'articles + articleTransactions', 'Deleted article: Title of Article.', '2017-03-28 14:36:05'),
(439, 1, 'categories', 'Deleted Title', '2017-03-28 14:36:16'),
(440, 1, 'navigations', 'Deleted: Navigation', '2017-03-28 14:36:25'),
(441, 1, 'users', 'Added User: JonHoll1', '2017-03-28 19:04:12'),
(442, 27, 'articles + articleTransactions', 'Added article: 2016 Michigan Human Trafficking Commission Report', '2017-03-28 19:19:53'),
(443, 27, 'articles + articleTransactions', 'Edited article: 2016 Michigan Human Trafficking Commission Report', '2017-03-28 19:22:10'),
(444, 27, 'articles + articleTransactions', 'Added article: Human trafficking survivor to speak in West Michigan', '2017-03-28 19:30:10'),
(445, 27, 'articles + articleTransactions', 'Edited article: 2016 Michigan Human Trafficking Commission Report', '2017-03-28 19:31:41'),
(446, 1, 'articles + articleTransactions', 'Added article: Missing Children Success Story', '2017-03-28 20:51:25'),
(447, 1, 'articles + articleTransactions', 'Added article: If Your Child Is Missing', '2017-03-28 20:53:14'),
(448, 27, 'articles + articleTransactions', 'Edited article: 2016 Michigan Human Trafficking Commission Report', '2017-03-28 21:44:29'),
(449, 27, 'articles + articleTransactions', 'Edited article: Human trafficking survivor to speak in West Michigan', '2017-03-28 21:44:52'),
(450, 27, 'articles + articleTransactions', '&#039;Human trafficking survivor to speak in West Michigan&#039; was approved.', '2017-03-28 21:45:40'),
(451, 27, 'articles + articleTransactions', '&#039;2016 Michigan Human Trafficking Commission Report&#039; was approved.', '2017-03-28 21:45:42'),
(452, 27, 'articles', 'Article &#039;Human trafficking survivor to speak in West Michigan&#039; was set to not visible.', '2017-03-28 21:46:33'),
(453, 27, 'articles', 'Article &#039;2016 Michigan Human Trafficking Commission Report&#039; was set to not visible.', '2017-03-28 21:46:35'),
(454, 19, 'articles + articleTransactions', '&#039;If Your Child Is Missing&#039; was approved.', '2017-03-30 19:29:54'),
(455, 19, 'articles + articleTransactions', '&#039;Missing Children Success Story&#039; was approved.', '2017-03-30 19:29:59'),
(456, 19, 'articles + articleTransactions', 'Added article: TraffickCam app - Taking the fight against human trafficking', '2017-03-30 19:37:20'),
(457, 19, 'articles + articleTransactions', '&#039;TraffickCam app - Taking the fight against human trafficking&#039; was approved.', '2017-03-30 19:37:23'),
(458, 19, 'general', 'leathel logged into the system.', '2017-03-31 09:37:02'),
(459, 23, 'general', 'scriver logged into the system.', '2017-03-31 15:51:29'),
(460, 24, 'general', 'Evansb12 logged into the system.', '2017-03-31 16:05:52'),
(461, 24, 'articles + articleTransactions', 'Added article: Myths vs. Facts Infographic', '2017-03-31 17:07:13'),
(462, 24, 'articles + articleTransactions', 'Edited article: Myths vs. Facts Infographic', '2017-03-31 17:09:39'),
(463, 24, 'articles + articleTransactions', 'Edited article: Myths vs. Facts Infographic', '2017-03-31 17:09:59'),
(464, 24, 'links', 'Aside Link &#039;National Human Trafficking Hotline &#039; was edited', '2017-03-31 19:04:26'),
(465, 23, 'general', 'scriver logged into the system.', '2017-03-31 20:20:26'),
(466, 23, 'bodySettings', 'Site homepage settings were updated.', '2017-03-31 20:22:03'),
(467, 23, 'bodySettings', 'Site homepage settings were updated.', '2017-03-31 20:24:42'),
(468, 24, 'general', 'Evansb12 logged into the system.', '2017-03-31 20:49:10'),
(469, 24, 'articles + articleTransactions', 'Edited article: Myths vs. Facts Infographic', '2017-03-31 20:57:32'),
(470, 19, 'general', 'leathel logged into the system.', '2017-03-31 21:32:20'),
(471, 19, 'headerLayout', 'Updated Header Layout Settings', '2017-03-31 21:32:38'),
(472, 24, 'general', 'Evansb12 logged into the system.', '2017-03-31 21:44:43'),
(473, 24, 'navigations', 'Added: DropDown', '2017-03-31 21:45:40'),
(474, 24, 'categories', 'Added DropDown Category1', '2017-03-31 21:46:33'),
(475, 24, 'categories', 'Added DropDown Category 2', '2017-03-31 21:46:53'),
(476, 24, 'categories', 'Deleted DropDown Category1', '2017-03-31 21:48:13'),
(477, 24, 'categories', 'Deleted DropDown Category 2', '2017-03-31 21:48:22'),
(478, 24, 'navigations', 'Deleted: DropDown', '2017-03-31 21:48:36'),
(479, 1, 'general', 'administrator logged into the system.', '2017-03-31 21:50:46'),
(480, 1, 'users', 'Added User: contributortest', '2017-03-31 22:05:55'),
(481, 28, 'general', 'contributortest logged into the system.', '2017-03-31 22:06:12'),
(482, 1, 'general', 'administrator logged into the system.', '2017-03-31 22:10:52'),
(483, 1, 'general', 'administrator logged into the system.', '2017-03-31 22:13:09'),
(484, 23, 'general', 'scriver logged into the system.', '2017-03-31 22:20:04'),
(485, 1, 'siteSettings', 'Updated Site Settings', '2017-03-31 22:22:32'),
(486, 1, 'siteSettings', 'Updated Site Settings', '2017-03-31 22:23:06'),
(487, 1, 'siteSettings', 'Updated Site Settings', '2017-03-31 22:53:11'),
(488, 1, 'articles + articleTransactions', 'Added article: quicktest', '2017-03-31 22:53:40'),
(489, 1, 'articles + articleTransactions', 'Article &#039;quicktest&#039; was archived.', '2017-03-31 22:53:59'),
(490, 1, 'siteSettings', 'Updated Site Settings', '2017-03-31 22:54:08'),
(491, 23, 'categories', 'Updated Teens', '2017-03-31 22:55:32'),
(492, 23, 'categories', 'Updated College Students', '2017-03-31 22:55:56'),
(493, 23, 'categories', 'Updated Parents', '2017-03-31 22:56:10'),
(494, 23, 'categories', 'Updated Teachers', '2017-03-31 22:56:36'),
(495, 24, 'navigations', 'Navigation &#039;All Articles&#039; was edited', '2017-03-31 23:07:32'),
(496, 1, 'links', 'Aside Link &#039;Innocents At Risk &#039; was added', '2017-03-31 23:11:49'),
(497, 1, 'links', 'Aside Link &#039;Shared Hope &#039; was added', '2017-03-31 23:12:11'),
(498, 23, 'articles + articleTransactions', 'Edited article: Blue Campaign Infographic', '2017-03-31 23:12:58'),
(499, 23, 'articles + articleTransactions', 'Edited article: PowerPoint', '2017-03-31 23:14:41'),
(500, 23, 'articles + articleTransactions', '&#039;Power Point&#039; was approved.', '2017-03-31 23:14:55'),
(501, 23, 'articles + articleTransactions', 'Edited article: Teen Online & Wireless Safety Survey', '2017-03-31 23:16:18'),
(502, 23, 'categories', 'Updated Teens', '2017-03-31 23:17:18'),
(503, 23, 'categories', 'Updated College Students', '2017-03-31 23:17:28'),
(504, 23, 'categories', 'Updated Parents', '2017-03-31 23:17:38'),
(505, 1, 'articles', 'Edit made to Aside Section', '2017-03-31 23:17:41'),
(506, 23, 'categories', 'Updated Teachers', '2017-03-31 23:17:48'),
(507, 23, 'categories', 'Updated Volunteer Opportunities', '2017-03-31 23:22:30'),
(508, 23, 'articles + articleTransactions', '&#039;Another Title&#039; was approved.', '2017-03-31 23:25:31'),
(509, 23, 'articles + articleTransactions', '&#039;Article Title&#039; was approved.', '2017-03-31 23:25:34'),
(510, 19, 'general', 'leathel logged into the system.', '2017-03-31 23:35:46'),
(511, 1, 'articles + articleTransactions', 'Added article: Social Networking Sites: Online Friendships Can Mean Offline Peril (fbi.gov)', '2017-04-01 00:07:13'),
(512, 1, 'articles + articleTransactions', 'Added article: Free Online Program for teaching internet safety for grades 3 - 8', '2017-04-01 00:14:23'),
(513, 1, 'articles + articleTransactions', 'Edited article: Free Online Program for teaching internet safety for grades 3 - 8', '2017-04-01 00:15:52'),
(514, 1, 'general', 'administrator logged into the system.', '2017-04-02 23:45:09'),
(515, 19, 'general', 'leathel logged into the system.', '2017-04-04 13:54:07'),
(516, 1, 'general', 'administrator logged into the system.', '2017-04-04 20:30:49'),
(517, 27, 'general', 'JonHoll1 logged into the system.', '2017-04-04 21:23:57'),
(518, 1, 'general', 'administrator logged into the system.', '2017-04-04 21:50:24'),
(519, 19, 'general', 'leathel logged into the system.', '2017-04-05 12:07:20'),
(520, 19, 'navigations', 'Navigation &#039;Articles&#039; was edited', '2017-04-05 12:27:33'),
(521, 19, 'navigations', 'Navigation &#039;Take Action&#039; was set to not visible.', '2017-04-05 12:27:53'),
(522, 19, 'navigations', 'Navigation &#039;All Articles&#039; was set to not visible.', '2017-04-05 12:27:59'),
(523, 19, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-05 12:28:17'),
(524, 19, 'navigations', 'Navigation &#039;About&#039; was set to not visible.', '2017-04-05 12:28:44'),
(525, 19, 'categories', 'Added Government Resources', '2017-04-05 12:33:41'),
(526, 19, 'categories', 'Added What is Human Trafficking?', '2017-04-05 12:34:18'),
(527, 19, 'categories', 'Updated What is Human Trafficking?', '2017-04-05 12:34:35'),
(528, 19, 'categories', 'Updated Government Resources', '2017-04-05 12:35:06'),
(529, 19, 'categories', 'Added General', '2017-04-05 12:38:09'),
(530, 19, 'categories', 'Updated General', '2017-04-05 12:38:41'),
(531, 19, 'articles + articleTransactions', 'Article &#039;PowerPoint&#039; was archived.', '2017-04-05 12:39:36'),
(532, 19, 'articles + articleTransactions', 'Edited article: Priceless - Bringing awareness to Human Trafficking', '2017-04-05 12:39:56'),
(533, 19, 'articles + articleTransactions', 'Edited article: Ashton Kutcher talking to Senate on Human Trafficking', '2017-04-05 12:40:17'),
(534, 19, 'articles + articleTransactions', 'Edited article: TraffickCam app - Taking the fight against human trafficking', '2017-04-05 12:40:41'),
(535, 19, 'categories', 'Updated What is Human Trafficking?', '2017-04-05 12:41:16'),
(536, 19, 'articles + articleTransactions', 'Article &#039;What is Human Trafficking?&#039; was archived.', '2017-04-05 12:41:57'),
(537, 19, 'siteSettings', 'Updated Site Settings', '2017-04-05 12:42:18'),
(538, 19, 'articles + articleTransactions', 'Article &#039;Power Point&#039; was archived.', '2017-04-05 12:44:59'),
(539, 19, 'articles + articleTransactions', 'Article &#039;Locked article example&#039; was archived.', '2017-04-05 12:45:08'),
(540, 19, 'articles + articleTransactions', 'Article &#039;Not locked&#039; was archived.', '2017-04-05 12:45:14'),
(541, 19, 'articles + articleTransactions', 'Article &#039;Article Title&#039; was archived.', '2017-04-05 12:45:28'),
(542, 19, 'articles + articleTransactions', 'Article &#039;Another Title&#039; was archived.', '2017-04-05 12:45:35'),
(543, 19, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-05 12:46:25'),
(544, 19, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-05 12:46:55'),
(545, 19, 'general', 'leathel logged into the system.', '2017-04-05 18:38:58'),
(546, 19, 'navigations', 'Navigation &#039;Cyber Security&#039; was set to not visible.', '2017-04-05 18:39:03'),
(547, 19, 'general', 'leathel logged into the system.', '2017-04-05 19:05:21'),
(548, 23, 'general', 'scriver logged into the system.', '2017-04-05 21:02:29'),
(549, 23, 'categories', 'Updated General', '2017-04-05 21:23:06'),
(550, 23, 'categories', 'Updated Data & Statistics', '2017-04-05 22:02:17'),
(551, 23, 'categories', 'Updated Information', '2017-04-05 22:02:31'),
(552, 23, 'categories', 'Updated Government Resources', '2017-04-05 22:02:42'),
(553, 1, 'general', 'administrator logged into the system.', '2017-04-05 22:24:54'),
(554, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-05 23:13:11'),
(555, 23, 'navigations', 'Navigation &#039;Take Action&#039; was edited', '2017-04-06 00:52:39'),
(556, 23, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-06 00:52:46'),
(557, 19, 'general', 'leathel logged into the system.', '2017-04-06 09:05:00'),
(558, 19, 'categories', 'Updated Information', '2017-04-06 09:05:19'),
(559, 19, 'categories', 'Updated Data & Statistics', '2017-04-06 09:05:59'),
(560, 19, 'siteSettings', 'Updated Site Settings', '2017-04-06 10:36:45'),
(561, 23, 'general', 'scriver logged into the system.', '2017-04-06 20:57:50'),
(562, 19, 'general', 'leathel logged into the system.', '2017-04-07 10:38:32'),
(563, 1, 'general', 'administrator logged into the system.', '2017-04-08 13:21:13'),
(564, 1, 'general', 'administrator logged into the system.', '2017-04-08 16:59:19'),
(565, 19, 'general', 'leathel logged into the system.', '2017-04-11 15:54:59'),
(566, 19, 'general', 'leathel logged into the system.', '2017-04-13 20:10:24'),
(567, 1, 'general', 'administrator logged into the system.', '2017-04-13 20:41:41'),
(568, 1, 'general', 'administrator logged into the system.', '2017-04-15 19:07:44'),
(569, 1, 'articles + articleTransactions', 'Edited article: Free Online Program for teaching internet safety for grades 3 - 8', '2017-04-15 19:08:13'),
(570, 19, 'general', 'leathel logged into the system.', '2017-04-16 16:51:53'),
(571, 19, 'general', 'leathel logged into the system.', '2017-04-16 17:13:04'),
(572, 19, 'siteSettings', 'Updated Site Settings', '2017-04-16 17:14:37'),
(573, 19, 'general', 'leathel logged into the system.', '2017-04-16 17:40:29'),
(574, 19, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-16 17:55:16'),
(575, 1, 'general', 'administrator logged into the system.', '2017-04-16 18:02:32'),
(576, 19, 'navigations', 'Navigation &#039;Cyber Security&#039; was set to visible.', '2017-04-16 18:26:19'),
(577, 19, 'general', 'leathel logged into the system.', '2017-04-16 19:03:17'),
(578, 19, 'navigations', 'Added: Events', '2017-04-16 19:03:31'),
(579, 23, 'general', 'scriver logged into the system.', '2017-04-16 19:33:13'),
(580, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-04-16 19:33:42'),
(581, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-04-16 19:33:59'),
(582, 23, 'links', 'Aside Link &#039;The New York Times &#039; was added', '2017-04-16 19:59:35'),
(583, 23, 'links', 'Aside Link &#039;ABC News &#039; was added', '2017-04-16 20:00:38'),
(584, 23, 'links', 'Aside Link &#039;The Huffington Post &#039; was added', '2017-04-16 20:01:27'),
(585, 1, 'users', 'Added User: verificationTest', '2017-04-16 20:03:27'),
(586, 19, 'general', 'leathel logged into the system.', '2017-04-16 21:07:42'),
(587, 19, 'links', 'Aside Link &#039;Human Trafficking @ The New York Times &#039; was edited', '2017-04-16 21:09:15'),
(588, 19, 'links', 'Aside Link &#039;The New York Times &#039; was edited', '2017-04-16 21:10:21'),
(589, 19, 'links', 'Aside Link &#039;The New York Times &#039; was edited', '2017-04-16 21:12:00'),
(590, 19, 'categories', 'Added Reach for the Stars', '2017-04-16 21:17:07'),
(591, 19, 'categories', 'Added Human trafficking awareness event in Saginaw', '2017-04-16 21:25:37'),
(592, 19, 'categories', 'Updated Reach for the Stars', '2017-04-16 21:26:04'),
(593, 19, 'categories', 'Updated Many Facets of Human Trafficking', '2017-04-16 21:27:21'),
(594, 19, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-04-16 21:28:37'),
(595, 19, 'categories', 'Updated Reach for the Stars', '2017-04-16 21:30:32'),
(596, 19, 'categories', 'Updated Many Facets of Human Trafficking', '2017-04-16 21:31:07'),
(597, 19, 'general', 'leathel logged into the system.', '2017-04-16 21:32:57'),
(598, 19, 'categories', 'Category &#039;Many Facets of Human Trafficking&#039; was set to not visible', '2017-04-16 21:33:06'),
(599, 19, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-04-16 21:33:19'),
(600, 19, 'categories', 'Category &#039;Many Facets of Human Trafficking&#039; was set to visible', '2017-04-16 21:52:04'),
(601, 19, 'navigations', 'Navigation &#039;Cyber Security&#039; was edited', '2017-04-16 21:52:52'),
(602, 1, 'general', 'administrator logged into the system.', '2017-04-16 22:13:05'),
(603, 1, 'general', 'administrator logged into the system.', '2017-04-16 22:15:37'),
(604, 1, 'general', 'administrator logged into the system.', '2017-04-16 22:16:19'),
(605, 1, 'general', 'administrator logged into the system.', '2017-04-18 21:13:32'),
(606, 1, 'general', 'administrator logged into the system.', '2017-04-18 22:25:07'),
(607, 1, 'general', 'administrator logged into the system.', '2017-04-20 16:07:55'),
(608, 1, 'general', 'administrator logged into the system.', '2017-04-20 18:08:57'),
(609, 1, 'general', 'administrator logged into the system.', '2017-04-20 20:06:27'),
(610, 23, 'general', 'scriver logged into the system.', '2017-04-20 20:07:04'),
(611, 1, 'users', 'Updated User: scriver', '2017-04-20 20:16:39'),
(612, 1, 'users', 'Updated User: contributortest', '2017-04-20 20:18:27'),
(613, 1, 'users', 'Updated User: testcontrib', '2017-04-20 20:18:38'),
(614, 1, 'general', 'administrator logged into the system.', '2017-04-20 21:35:22'),
(615, 1, 'users', 'Added User: CMSTest', '2017-04-20 21:38:06'),
(616, 23, 'general', 'scriver logged into the system.', '2017-04-22 19:36:00'),
(617, 1, 'general', 'administrator logged into the system.', '2017-04-22 20:10:59'),
(618, 23, 'general', 'scriver logged into the system.', '2017-04-23 18:34:14'),
(619, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-04-23 18:34:30'),
(620, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 18:59:48'),
(621, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 19:00:19'),
(622, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 19:01:06'),
(623, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 19:01:52'),
(624, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 19:04:43'),
(625, 23, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-23 19:06:16'),
(626, 23, 'articles', 'Article &#039;2016 Michigan Human Trafficking Commission Report&#039; was set to visible.', '2017-04-23 20:30:03'),
(627, 23, 'articles + articleTransactions', 'Added article: How college students are fighting human and sex trafficking', '2017-04-23 21:05:58'),
(628, 23, 'articles + articleTransactions', '&#039;How college students are fighting human and sex trafficking&#039; was approved.', '2017-04-23 21:06:18'),
(629, 23, 'links', 'Aside Link &#039;Example Broken Link &#039; was added', '2017-04-23 21:11:34'),
(630, 23, 'links', 'Aside Link &#039;Example Broken Link &#039; was edited', '2017-04-23 21:12:40'),
(631, 23, 'links', 'Aside Link &#039;Example Broken Link &#039; was edited', '2017-04-23 21:13:36'),
(632, 19, 'general', 'leathel logged into the system.', '2017-04-23 21:56:55'),
(633, 19, 'general', 'leathel logged into the system.', '2017-04-24 12:10:36'),
(634, 24, 'general', 'Evansb12 logged into the system.', '2017-04-24 12:51:14'),
(635, 1, 'general', 'administrator logged into the system.', '2017-04-24 17:26:21'),
(636, 23, 'general', 'scriver logged into the system.', '2017-04-24 22:45:14'),
(637, 23, 'headerLayout', 'Updated Header Layout Settings', '2017-04-24 22:46:13'),
(638, 23, 'links', 'Aside Link &#039;Example Broken Link &#039; was edited', '2017-04-24 22:49:41'),
(639, 19, 'general', 'leathel logged into the system.', '2017-04-25 08:44:00'),
(640, 19, 'links', 'Aside Link &#039;Example Broken Link &#039; was deleted', '2017-04-25 08:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `footerLayout`
--

CREATE TABLE IF NOT EXISTS `footerLayout` (
  `footerID` int(10) NOT NULL AUTO_INCREMENT,
  `footerTitle` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `footerLogoImg` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `footerHeight` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `footerTextArea1` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `footerTextArea2` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`footerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `footerLayout`
--

INSERT INTO `footerLayout` (`footerID`, `footerTitle`, `footerLogoImg`, `footerHeight`, `footerTextArea1`, `footerTextArea2`) VALUES
(1, '', 'images/SampleLogo3_1.png', '100', 'Get help or request service. Call the National Human Trafficking Hotline @ 1-888-373-7888.', 'Text Area 2 Edit');

-- --------------------------------------------------------

--
-- Table structure for table `headerLayout`
--

CREATE TABLE IF NOT EXISTS `headerLayout` (
  `headerID` int(10) NOT NULL AUTO_INCREMENT,
  `headerTitle` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `headerLogoImg` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `headerHeight` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `headerHTML` text COLLATE latin1_general_ci,
  `floatHeader` tinyint(1) NOT NULL,
  `headerTextArea1` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`headerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `headerLayout`
--

INSERT INTO `headerLayout` (`headerID`, `headerTitle`, `headerLogoImg`, `headerHeight`, `headerHTML`, `floatHeader`, `headerTextArea1`) VALUES
(1, 'Human Trafficking', 'images/SampleLogo3_1.png', '100', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `helpPages`
--

CREATE TABLE IF NOT EXISTS `helpPages` (
  `helpPageID` int(10) NOT NULL AUTO_INCREMENT,
  `helpPageTitle` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `helpPageContent` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`helpPageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `helpPages`
--

INSERT INTO `helpPages` (`helpPageID`, `helpPageTitle`, `helpPageContent`) VALUES
(1, 'Test1', '<p>Testing help page viewing</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam magnam accusamus obcaecati nisi eveniet quo veniam quibusdam veritatis autem accusantium doloribus nam mollitia maxime explicabo nemo quae aspernatur impedit cupiditate dicta molestias consectetur, sint reprehenderit maiores. Tempora, exercitationem, voluptate. Sapiente modi officiis nulla sed ullam, amet placeat, illum necessitatibus, eveniet dolorum et maiores earum tempora, quas iste perspiciatis quibusdam vero accusamus veritatis. Recusandae sunt, repellat incidunt impedit tempore iusto, nostrum eaque necessitatibus sint eos omnis! Beatae, itaque, in. Vel reiciendis consequatur saepe soluta itaque aliquam praesentium, neque tempora. Voluptatibus sit, totam rerum quo ex nemo pariatur tempora voluptatem est repudiandae iusto, architecto perferendis sequi, asperiores dolores doloremque odit. Libero, ipsum fuga repellat quae numquam cumque nobis ipsa voluptates pariatur, a rerum aspernatur aliquid maxime magnam vero dolorum omnis neque fugit laboriosam eveniet veniam explicabo, similique reprehenderit at. Iusto totam vitae blanditiis. Culpa, earum modi rerum velit voluptatum voluptatibus debitis, architecto aperiam vero tempora ratione sint ullam voluptas non! Odit sequi ipsa, voluptatem ratione illo ullam quaerat qui, vel dolorum eligendi similique inventore quisquam perferendis reprehenderit quos officia! Maxime aliquam, soluta reiciendis beatae quisquam. Alias porro facilis obcaecati et id, corporis accusamus? Ab porro fuga consequatur quisquam illo quae quas tenetur.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque similique, at excepturi adipisci repellat ut veritatis officia, saepe nemo soluta modi ducimus velit quam minus quis reiciendis culpa ullam quibusdam eveniet. Dolorum alias ducimus, ad, vitae delectus eligendi, possimus magni ipsam repudiandae iusto placeat repellat omnis veritatis adipisci aliquam hic ullam facere voluptatibus ratione laudantium perferendis quos ut. Beatae expedita, itaque assumenda libero voluptatem adipisci maiores voluptas accusantium, blanditiis saepe culpa laborum iusto maxime quae aperiam fugiat odit consequatur soluta hic. Sed quasi beatae quia repellendus, adipisci facilis ipsa vel, aperiam, consequatur eaque mollitia quaerat. Iusto fugit inventore eveniet velit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque similique, at excepturi adipisci repellat ut veritatis officia, saepe nemo soluta modi ducimus velit quam minus quis reiciendis culpa ullam quibusdam eveniet. Dolorum alias ducimus, ad, vitae delectus eligendi, possimus magni ipsam repudiandae iusto placeat repellat omnis veritatis adipisci aliquam hic ullam facere voluptatibus ratione laudantium perferendis quos ut. Beatae expedita, itaque assumenda libero voluptatem adipisci maiores voluptas accusantium, blanditiis saepe culpa laborum iusto maxime quae aperiam fugiat odit consequatur soluta hic. Sed quasi beatae quia repellendus, adipisci facilis ipsa vel, aperiam, consequatur eaque mollitia quaerat. Iusto fugit inventore eveniet velit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam magnam accusamus obcaecati nisi eveniet quo veniam quibusdam veritatis autem accusantium doloribus nam mollitia maxime explicabo nemo quae aspernatur impedit cupiditate dicta molestias consectetur, sint reprehenderit maiores. Tempora, exercitationem, voluptate. Sapiente modi officiis nulla sed ullam, amet placeat, illum necessitatibus, eveniet dolorum et maiores earum tempora, quas iste perspiciatis quibusdam vero accusamus veritatis. Recusandae sunt, repellat incidunt impedit tempore iusto, nostrum eaque necessitatibus sint eos omnis! Beatae, itaque, in. Vel reiciendis consequatur saepe soluta itaque aliquam praesentium, neque tempora. Voluptatibus sit, totam rerum quo ex nemo pariatur tempora voluptatem est repudiandae iusto, architecto perferendis sequi, asperiores dolores doloremque odit. Libero, ipsum fuga repellat quae numquam cumque nobis ipsa voluptates pariatur, a rerum aspernatur aliquid maxime magnam vero dolorum omnis neque fugit laboriosam eveniet veniam explicabo, similique reprehenderit at. Iusto totam vitae blanditiis. Culpa, earum modi rerum velit voluptatum voluptatibus debitis, architecto aperiam vero tempora ratione sint ullam voluptas non! Odit sequi ipsa, voluptatem ratione illo ullam quaerat qui, vel dolorum eligendi similique inventore quisquam perferendis reprehenderit quos officia! Maxime aliquam, soluta reiciendis beatae quisquam. Alias porro facilis obcaecati et id, corporis accusamus? Ab porro fuga consequatur quisquam illo quae quas tenetur.</p>'),
(2, 'Dashboard Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<h1>Dashboard Help</h1>\r\n<h2>Overview</h2>\r\n<p>The dashboard is the Administrator''s homepage for quick access to view site statistics.</p>\r\n<p>&nbsp;The statistics currently shown are:</p>\r\n<ol>\r\n<li>Articles that have been approved.</li>\r\n<li>The current number of special pages</li>\r\n<li>The current number of users.</li>\r\n<li>The number of articles that are currently pending</li>\r\n</ol>\r\n<p>If you require more information about any one of the statistics listed please click&nbsp;the <strong>View Details</strong> button and you will be directed to the corrisponding page.</p>\r\n<p>Under the statistics of the website is the Google Analytics information. The information listed is as followed:</p>\r\n<p>1. The number of sessions each day over the last month.</p>\r\n<p>2. The type of devices used to access the website and the number of times each device has been used.</p>\r\n<p>3. The number of sessions that have taken place based on the region and city.</p>\r\n<p>4. The time in seconds each user spends on specific pages.</p>\r\n<p>More information is available at <cite class="_Rm"><a href="https://www.google.com/analytics/">https://www.google.com/analytics/</a></cite></p>\r\n<p><cite class="_Rm">To sign into the account navigate to the page listed above then look for the <strong>sign in</strong> up at the top right of the page. Click on this and&nbsp; then click <strong>Analytics </strong>from the drop down menu. When the next page loads sign in to google by clicking the person icon in the top right corner. </cite></p>\r\n<p><cite class="_Rm">Here you can see all kinds of interesting information in real time. Also the Google Analytics website will allow you to set up your own dashboard&nbsp; to moniter the information you want to see.</cite></p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>'),
(4, 'Articles & Special Pages Help Page', '<p>&nbsp;</p>\r\n<h1>Articles &amp; Special Pages Help</h1>\r\n<h2>Overview</h2>\r\n<p>Articles and Special pages from a creating and editing aspect are exactly the same. &nbsp;An article is a post about a specific topic. &nbsp;It is included in the general list of articles or the list of articles under a category. A special page is used for&nbsp;single pages that don''t necessarily relate to a category (e.g. About Us, Contact Us, etc). A special page does not show up in any list or display author or date details. After you have created a special page, you can then create a Navigation and choose the URL to be the special page. &nbsp;That navigation will point to the special page.</p>\r\n<p>This page lists all articles&nbsp;or special pages. If you would like to create a new article&nbsp;or special page, select <em><strong>Articles&gt;Add Article&nbsp;</strong></em>or&nbsp;<em><strong>Special Pages&gt;Add Page</strong></em> from the left side navigation.</p>\r\n<h2>Requirements</h2>\r\n<p>A&nbsp;Navigation and Category must be created before you can create an article or special page.</p>\r\n<h2>Details</h2>\r\n<p>The following chart summarizes the different buttons and options available on this screen.</p>\r\n<table style="width: 100%; height: auto;">\r\n<tbody>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/exclamation.png?1490738306328" alt="exclamation" />&nbsp; <strong>Pending</strong></td>\r\n<td>The exclamation point means that your article is still pending approval before it is published. If you are an administrator, you can click this button to approve the article.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/Check.png?1490737855077" alt="Check" />&nbsp;<strong>Approved</strong></td>\r\n<td>This indicates that the content in the article/special page has been approved by an administrator.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/eye_close.png?1490738750079" alt="eye_close" />&nbsp;<strong>Not Visible</strong></td>\r\n<td>A closed eye means that the current article/special page is not being displayed on your website. You can click on this to make the article/special page visible.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/openEye.png?1490738774662" alt="openEye" />&nbsp;<strong>Visible</strong></td>\r\n<td>A open eye means that the current article/special page is being displayed on your website. You can click on this to make the article/special page invisible.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/archive.png?1490738788302" alt="archive" />&nbsp;<strong>Archive</strong></td>\r\n<td>Clicking on this icon will move the article/special page into your site archive. From there you can restore or delete the article.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/duplicate.png?1490738808442" alt="duplicate" />&nbsp;<strong>Duplicate</strong></td>\r\n<td>This will create a copy of the article/special page.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/Edit.png?1490738822408" alt="Edit" />&nbsp;<strong>Edit</strong></td>\r\n<td>Clicking on the pencil icon will take you to a page where you can make changes to the article/special page you have selected.</td>\r\n</tr>\r\n<tr style="margin-bottom: 10px;">\r\n<td style="width: 150px; padding-right: 20px;"><img src="images/helppages/locked.png?1490738830335" alt="locked" />&nbsp;<strong>Locked</strong></td>\r\n<td>This icon indicates that the article/special page you want to edit is being worked on by another. If you are an administrator or the author, you can override this lock and make changes to the entry.</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(22, 'Add/Edit Articles & Special Pages Help Page', '<h1>Add/Edit Help</h1>\r\n<p>On the Add/Edit page for Articles and Special Pages, you can create and/or modify content. At a minimum, you must include a T<strong>itle</strong>, a C<strong>ategory</strong>, and some form of <strong>Content</strong>.</p>\r\n<p>The <strong>content editor</strong> area allows you to use different fonts, font sizes, images, tables, imbedded links, and much more. (Select <em>Advanced Editor</em> for even more options.)</p>\r\n<p>Additional features of the add/edit include:</p>\r\n<ul>\r\n<li><strong>Image -&nbsp;</strong>This differs from images you add in the content area. This will be the primary image displayed in article lists or displayed at the top of the page, so it can pay to use something eye-grabbing.</li>\r\n<li><strong>Upload File&nbsp;-&nbsp;</strong>You can use the file uploader to add a powerpoint, word document, PDF, excel spreadsheet, and many more types of files to your content.&nbsp;When your content is viewed by visitors, your uploaded file will be displayed in a preview at the bottom of your content. The visitor can zoom in and out of the content, download the file, or open it in a new tab.</li>\r\n<li><strong>Media Removal -&nbsp;</strong>If you''ve added a primary image&nbsp;or a file, but then decided that you don''t want &nbsp;to include one or both of these, simply check the box underneath the media you want to remove <em>(Remove image? or Remove file?),</em> and it will no longer be included with your&nbsp;article or special page. This does not remove the media from the file manager, so it will still be available if you want to use it again.</li>\r\n</ul>'),
(5, 'Aside Section Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Aside Section Help</h1>\r\n<h2>Where is it?</h2>\r\n<p>The Aside Section is along the right side of the homepage below the Search and above the Aside Links.</p>\r\n<h2>How to use it?</h2>\r\n<p>You can enter any text into the <strong>Aside Header</strong> and that will be the header of the Aside Section. Then enter content&nbsp;in the Editor under <strong>Front Body Text</strong>&nbsp;and click the&nbsp;Edit Aside Section button and it will update&nbsp;the one on the front page. (Hitting Edit Aside Section will immedietly change the one on the front page as there is only one so anytime you change something and click it you will see it right away)</p>\r\n</body>\r\n</html>'),
(6, 'Categories Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Categories Help</h1>\r\n<h2>Getting Started</h2>\r\n<p>On this page, you will find the&nbsp;<strong>Add Category</strong> form for creating new Categories, as well as a list of any existing Categories. If there are many existing Categories, you can use the page buttons at the bottom to load and access additional Categories that are not visible on the first page. In the list, you can use the <em>Delete</em> trash can icon (&nbsp;&nbsp;<span class="glyphicon glyphicon-trash">&nbsp;</span>) to delete the Category*, the&nbsp;<em>View &amp; Edit</em> pencil icon (&nbsp;&nbsp;<span class="glyphicon glyphicon-pencil">&nbsp;</span>) to edit a Category (see further instructions below under <strong>Editing an Existing Category</strong>), and the&nbsp;<em>Visibility Toggle</em> eye icons (&nbsp;&nbsp;<span class="glyphicon glyphicon-eye-open">&nbsp;&amp;&nbsp;</span><span class="glyphicon glyphicon-eye-close">&nbsp;</span>) to control whether or not the Category is visible on the pubic site.</p>\r\n<p>Categories reside under, belong to, and are accessed through Navigations. Therefore, you must create a Navigation to assign a Category to before you can create a Category. In addition, Articles reside under, belong to, and are accessed through Categories. Therefore, you must create a Category to assign an Article to before you can create an Article.</p>\r\n<p>On the public site, users can access Categories in the following ways:</p>\r\n<ul>\r\n<li>Clicking on a Navigation in the header will take the user to that Navigation''s page, and if that Navigation has Categories assigned to it, they will be listed on that page in tiles that show the Category''s title and image, as well as a button for the user to access the Articles under that Category.</li>\r\n<li>If a Navigation has Categories assigned to it, when the user hovers over that Navigation in the header, a dropdown with the list of Category titles will appear. If the user clicks on a Category title in the dropdown, they will be taken to that Category''s page to access the Articles under that Category.&nbsp;</li>\r\n<li>In the left side navigation, under&nbsp;<em><strong>Layout Settings</strong></em>&nbsp;&gt;&nbsp;<em><strong>Homepage Settings</strong></em>, if you choose ''Categories'' under&nbsp;<strong>Front Display</strong>, any Navigation whose&nbsp;<strong>Location</strong>&nbsp;is set to ''Header, Footer, Body'' will have its title displayed on the Homepage with its Categories listed on that page in tiles that show the Category''s title and image, as well as a button for the user to access the Articles under that Category.</li>\r\n</ul>\r\n<h2>Creating a New Category</h2>\r\n<p>You can create a new Category using the form at the top of this page. The fields can be described as follows:</p>\r\n<ul>\r\n<li><span style="text-decoration: underline;">Category Title</span>: The Category Title is a required field and will be what shows in the navigation dropdown, the Category tile on Navigation pages, and as the Heading of that Category''s page.<strong>&nbsp;</strong></li>\r\n<li><span style="text-decoration: underline;">Navigation Page</span>: The Navigation Page is a required field and dictates which Navigation that Category belongs to. The Category will show up on the dropdown and page of the Navigation it is assigned to.</li>\r\n<li><span style="text-decoration: underline;">Description</span>: The Description is an optional field for any content directly related to that Category. Any content added to the Description for the Category will show up on the Category''s page below the Category Title and above the list of Articles for that Category.</li>\r\n<li><span style="text-decoration: underline;">Category Image</span>: The Category Image is an optional field for an image to represent that Category. If an Image is selected for the Category, it will show in that Category''s tile on the Navigation Page is belongs to, as well as on that Category''s page below the Category Title and above the list of Articles for that Category. If there is also content added in the description, the image will appear to the left of the text. The ideal Category Image is about 600 x 600 pixels and 72-96 ppi.</li>\r\n</ul>\r\n<p>Once you have filled out all the necessary fields, click the&nbsp;<strong>Add Category</strong>&nbsp;button to create the Category, or&nbsp;<strong>Cancel</strong>&nbsp;to clear all fields and start over.</p>\r\n<h2>Editing an Existing Category</h2>\r\n<p>If there are existing Categories, they will be listed below the&nbsp;<strong>Add Category</strong> form on this page. To edit one of the existing Categories:</p>\r\n<ol>\r\n<li>Find the Category you would like to edit in the list. (If there are many existing Categories, you may need to use the page buttons at the bottom to load and access additional Categories that do not appear on the first page.)</li>\r\n<li>Click the&nbsp;<em>View &amp; Edit</em> pencil icon (&nbsp;&nbsp;<span class="glyphicon glyphicon-pencil">&nbsp;</span>) for that Category. This will open the&nbsp;<em><strong>Category Edit</strong></em> page with all of the fields populated with that Categories current content.</li>\r\n<li>Here you can edit the <span style="text-decoration: underline;">Category Title</span> or Navigation Page, add or edit the <span style="text-decoration: underline;">Category Description</span>, and/or add or select a new&nbsp;<span style="text-decoration: underline;">Category Image</span>.</li>\r\n<li>Once you are finished making changes, click the&nbsp;<strong>Update Category</strong> button to update the Category with your edits, or you can click&nbsp;<strong>Cancel</strong> to exit the&nbsp;<em><strong>Category Edit</strong></em> page without saving any changes you may have made.</li>\r\n</ol>\r\n</body>\r\n</html>'),
(7, 'View/Add Users Help Page', '<p>&nbsp;</p>\r\n<h1>Users Help</h1>\r\n<h2>View Users Page</h2>\r\n<p>Lists All Users and their information within the system.</p>\r\n<p>From this screen, you''re able to select the Pencil icon (&nbsp;&nbsp;<span class="glyphicon glyphicon-pencil">&nbsp;</span>) to ''View and Edit'' a given User, or select the Eye icons (&nbsp;&nbsp;<span class="glyphicon glyphicon-eye-open">&nbsp;&amp;&nbsp;</span><span class="glyphicon glyphicon-eye-close">&nbsp;</span>) to ''Deactivate'' or ''Activate'' a given User.</p>\r\n<h2>Add User Page</h2>\r\n<p>The Add User Page allows Administrators to create and add a User into the system.</p>\r\n<p>User information includes;</p>\r\n<ul>\r\n<li>First Name</li>\r\n<li>Last Name</li>\r\n<li>User Role:&nbsp;<strong>Contributor</strong>&nbsp;and&nbsp;<strong>Admin</strong>&nbsp;are the available&nbsp;User Roles.&nbsp;<strong>Contributors</strong>&nbsp;are able to modify their profile information including their password, as well as access the Articles, and Special Pages tabs.&nbsp;<strong>Administrators&nbsp;</strong>are given full access to the Administrative site.</li>\r\n<li>Username: Must&nbsp;be unique within the system.</li>\r\n<li>Email&nbsp;</li>\r\n<li>Password</li>\r\n<li>Receive Email Notifications?: This setting determines whether the User will receive email notifications for pending changes within the system.</li>\r\n</ul>\r\n<p>Clicking&nbsp;the <strong>Add User</strong> button validates the entered data, and adds the User if everything checks out. The appropriate error message will be displayed if this is not the case. Clicking&nbsp;<strong>Cancel</strong>&nbsp;will redirect you back to the previous page, and the User will not be added into the system.</p>\r\n<p>&nbsp;</p>'),
(8, 'Add User Page', '<p>Allows you to&nbsp;add a new User into the system.</p>'),
(9, 'Header Settings Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Header Settings Help</h1>\r\n<p>Displays current&nbsp;Header settings for the front end site, and allows you to modify them.</p>\r\n<p>Settings include:&nbsp;</p>\r\n<ul>\r\n<li><span style="text-decoration: underline;">Logo image</span>: It&nbsp;is recommended to use an image height equal to the Header height at 72&nbsp;ppi.</li>\r\n<li><span style="text-decoration: underline;">Title</span>: Will be displayed if there''s no logo image selected, or if the logo doesn''t include a title.&nbsp;Maximum&nbsp;length of 50 characters.</li>\r\n<li><span style="text-decoration: underline;">Height</span>: Is expressed in pixels. The default value is 100.</li>\r\n<li><span style="text-decoration: underline;">Left Side HTML Text</span>: Is text that''s displayed&nbsp;in&nbsp;the left side of the Header section. Maximum length of 200 characters.*</li>\r\n<li><span style="text-decoration: underline;">Right Side HTML Text</span>: Is additional text that''s displayed&nbsp;in&nbsp;the right side of the Header section.&nbsp;Maximum length of 200 characters.*</li>\r\n</ul>\r\n<p><em>*Note: These fields will only show if the Header Height is at or over 200 pixels.</em></p>\r\n</body>\r\n</html>'),
(10, 'Footer Settings Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Footer Settings Help</h1>\r\n<p>Displays current Footer settings for the front end site, and allows you to modify them.</p>\r\n<p>Settings include;&nbsp;</p>\r\n<ul>\r\n<li><span style="text-decoration: underline;">Logo image</span>: Is recommended to use an image height equal to the Footer height at 72&nbsp;ppi.</li>\r\n<li><span style="text-decoration: underline;">Title</span>: Will be displayed if there''s no logo image selected, or if the logo doesn''t include a title.&nbsp;Maximum&nbsp;length of 50 characters.</li>\r\n<li><span style="text-decoration: underline;">Height</span>: Is expressed in pixels. The default value is 100.</li>\r\n<li><span style="text-decoration: underline;">HTML Text Area</span>: Is text that''s displayed&nbsp;in&nbsp;the Footer section. Maximum length of 200 characters.</li>\r\n</ul>\r\n</body>\r\n</html>'),
(11, 'User Profile Page Help', '<p>&nbsp;</p>\r\n<h1>User Profile Help</h1>\r\n<p>Displays current User information, and allows you to modify it.</p>\r\n<p>User information includes;&nbsp;</p>\r\n<ul>\r\n<li>First Name</li>\r\n<li>Last Name</li>\r\n<li>Username</li>\r\n<li>Email</li>\r\n<li>Change Password: Selecting this link will redirect the user to a separate page, and the other profile changes will not be saved.</li>\r\n<li>Receive Email Notifications?: This setting determines whether the User will receive email notifications for pending changes within the system.</li>\r\n</ul>\r\n<p>Clicking&nbsp;the <strong>Update Profile</strong> button will save the changes, and clicking&nbsp;<strong>Cancel</strong>&nbsp;will take the user back to the previous page, and the changes won''t be saved.</p>'),
(12, 'Change Password Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Change Password Help</h1>\r\n<p>Allows the User to change their password.</p>\r\n<p>The User is expected to enter a new password&nbsp;and then&nbsp;confirm the password in the second textbox.</p>\r\n<p>&nbsp;</p>\r\n<p>Selecting the <strong>Update Password</strong> button will ensure the passwords match and then update the password, taking the User back to the <strong>Edit Profile</strong>&nbsp;page.</p>\r\n<p>Selecting <strong>Cancel</strong> will take the User back to the Edit Profile page, and the password will not be updated.</p>\r\n</body>\r\n</html>'),
(13, 'Edit Users Page Help', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Edit Users Help</h1>\r\n<p>Displays the selected User and their information and allows you to modify it.&nbsp;</p>\r\n<p>Much like the Edit Profile page, the Edit User page displays basic User information, including;&nbsp;</p>\r\n<ul>\r\n<li>First Name</li>\r\n<li>Last Name</li>\r\n<li>User Role: <strong>Contributor</strong> and <strong>Admin</strong> are the available&nbsp;User Roles. <strong>Contributors</strong> are able to modify their profile information including their password, as well as access the Articles and Special Pages tabs. <strong>Administrators&nbsp;</strong>are given full access to the Administrative site.</li>\r\n<li>Username</li>\r\n<li>Email</li>\r\n<li>Password:&nbsp;<strong>Administrators</strong> are given the ability to change a User''s password in the event the User forgets it, and this should be the only time this field is modified.</li>\r\n<li>Active?: This setting determines whether the User is activated and able to access the administrative site. Unchecking this box deactivates the User, and they will be denied access upon attempting to log into the system using their credentials until an <strong>Administrator</strong> activates their account again.</li>\r\n<li>Receive Email Notifications?: This setting determines whether the User will receive email notifications for pending changes within the system.</li>\r\n</ul>\r\n<p>Clicking&nbsp;the <strong>Update User</strong> button will save the changes, and clicking&nbsp;<strong>Cancel</strong>&nbsp;will take the user back to the previous page, and the changes won''t be saved.</p>\r\n</body>\r\n</html>'),
(14, 'Site Colors Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Site Colors Help</h1>\r\n<h2>Overview</h2>\r\n<p>The site colors allow you to modify almost any aspect of the website to a color of your choosing. &nbsp;</p>\r\n<h2>Details</h2>\r\n<p>If you click on a color option, a popout color picker will display.</p>\r\n<p><img src="images/helppages/SiteColorChoiceJPG.jpg?1489704775782" alt="SiteColorChoiceJPG" width="212" height="166" /></p>\r\n<p>To select the color for that item, you can click or drag the crosshair&nbsp;to choose the desired hue, then drag the right slider to lighten or darken, or if you already know the hexadecimal color code you may just enter it in the color option box. &nbsp;Once you have made your color choices, click the <strong>Update Settings</strong> button at the bottom of the screen to save your changes.&nbsp;</p>\r\n<p>It is suggested you open a new web browser to view your website and see the changes. &nbsp; If you are not happy with the choices, you can continue to make modifications&nbsp;<strong>Site Colors</strong> page you still have open and <strong>Update Settings</strong> again.</p>\r\n</body>\r\n</html>'),
(15, 'Homepage Settings Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Homepage Settings Help</h1>\r\n<h2>Overview</h2>\r\n<p>The Home Page Settings area allows you to modify how the front page looks. &nbsp;You will have the ability to enable/disable and choose which heroic image you would want. &nbsp;You also have the ability to choose whether the home page will display the newest articles, a list of categories, or use your own text and images with the Froot Body&nbsp;text option.</p>\r\n<h2>Details</h2>\r\n<p><span style="text-decoration: underline;">Hero Image</span>:<strong>&nbsp;</strong>To show the large Heroic image on the front page, the checked value must be set to Yes. To change the image, click the Choose image button</p>\r\n<p><img src="images/helppages/UploadButton.jpg?1489705554643" alt="UploadButton" width="47" height="69" /></p>\r\n<p>and either click on the Drp file here to upload text or drag the image into that area.&nbsp;</p>\r\n<p><img src="images/helppages/Upload2.jpg?1489705593414" alt="Upload2" width="178" height="64" /></p>\r\n<p>After the image has been uploaded, click on it to make it your chosen image.<u></u></p>\r\n<p>You can also add text that overlays on top of the heroic image by using the Heroic Text options.</p>\r\n<p><img src="images/helppages/HeroicText.jpg?1489705749362" alt="HeroicText" width="520" height="66" /></p>\r\n<p><strong>Front page display:</strong></p>\r\n<p>&nbsp;You can change the front page to display categories, articles or text by changing the Front Display option.</p>\r\n<p><img src="images/helppages/FrontDisplay.jpg?1489706004584" alt="FrontDisplay" width="254" height="43" /></p>\r\n<p>If Categories are chosen, those categories that are a part of a Navigation with the location of header, footer, body chosen, will show up on the front page.</p>\r\n<p><img src="images/helppages/NavigationBody.jpg?1489706062850" alt="NavigationBody" width="181" height="107" /></p>\r\n<p>If Articles is chosen, the newest&nbsp;articles that are visible will displayed on the front page.</p>\r\n<p>If Text is chosen, the text you create in the Front Body Text is what will be displayed.</p>\r\n<p>After all changed, you wll need to click on the Update Settings button to make them take effect.&nbsp; You can then view them on the website''s front page to view the changes.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>'),
(16, 'Help Pages Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>Overview:</strong></p>\r\n<p>The Help Pages area will only be seen if a developer unhides the navigation from the includes\\adminNavigationSide.php. &nbsp;</p>\r\n<p>The developer will also need to modify the admin\\filemanager\\config\\config.php and point the two uploads folder location and thumb location to the images folder. &nbsp;</p>\r\n<p><strong>Details:</strong></p>\r\n<p>Once the new Help Pages have been created, the developer will need to:</p>\r\n<ul>\r\n<li>Re-comment out the Help Pages navigation so it is not seen by regular users</li>\r\n<li>Change the config.php back to the uploads folder</li>\r\n<li>Copy all the new images to all the sites using BullDog CMS</li>\r\n<li>Copy any new database rows to all the sites using BullDog CMS</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>'),
(18, 'Navigations Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>&nbsp;Navigations Help</h1>\r\n<h2>Creating Navigation Links</h2>\r\n<p><span style="font-size: 12pt;">To make a link on the front-end site, two conditions must be met:</span></p>\r\n<ol>\r\n<li>The Navigation must have a unique name. (You cannot make duplicate navigation links.)</li>\r\n<li>The Navigation must link to another URL or perform a Javascript action. (To choose a URL not found in the list, choose "other" and type a URL, prefixed with <em>http://</em> or <em>https://</em>, into the field that appears.)</li>\r\n</ol>\r\n<h2>Linking Navigations to Categories</h2>\r\n<p>To make a Navigation link display one or more categories, follow these steps:</p>\r\n<ol>\r\n<li>Create a new Navigation link\r\n<ul>\r\n<li>Give it a unique name</li>\r\n<li>Select the result in the dropdown named "<em>your_navigation_name&nbsp;</em>Categories"</li>\r\n</ul>\r\n</li>\r\n<li>On the Categories page create a new, or update an existing Category\r\n<ul>\r\n<li>Select the Navigation Link you created in step 1 from the Navigation Page dropdown list.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<h2>Linking Navigations to Special Pages</h2>\r\n<p>In order to link a specific article to a Navigation link you must create the article under Special Pages. Follow these steps:</p>\r\n<ol>\r\n<li>Create a new Special Page.</li>\r\n<li>Create a new Navigation link.\r\n<ul>\r\n<li>Give it a unique name.</li>\r\n<li>Select the result in the URL dropdown list with the name of the Special Page you created in step 1.</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>'),
(23, 'Change Log Report Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Change Log Report Help</h1>\r\n<p>From this page you can view a history of changes and events on your website.</p>\r\n<p>&nbsp;</p>\r\n<p>The <strong>Change By&nbsp;</strong>column indicates who initiated the event.</p>\r\n<p>The <strong>Table</strong>&nbsp;column tells you what part of the website the change was made to.&nbsp;</p>\r\n<p>The <strong>Details</strong>&nbsp;column gives you a brief overview of what happened.</p>\r\n<p>The <strong>Date&nbsp;</strong>column tells you when this change or event happened.</p>\r\n<p>&nbsp;</p>\r\n<p>If you click the&nbsp;<strong>Delete</strong> <strong>Changelog</strong>&nbsp;button at the bottom of the page, all of the data in the Change Log will be deleted from the system.</p>\r\n</body>\r\n</html>'),
(19, 'Site Settings Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Site Setting Help</h1>\r\n<h2>Overview</h2>\r\n<p>The site settings page contains settings that relate to the overall website. On this page you can change the title of the website, the email of the website, the google analytics website ID that connects to the google analytics for the website, and several features that can be disabled.</p>\r\n<h2>Details</h2>\r\n<ul>\r\n<li><strong>Site Title</strong>: This is the site''s title. It will be what appears in the browser tab, the title of bookmarks to your site, and shown in search-engine results.</li>\r\n<li><strong>Site Email</strong>:&nbsp;This is the email notifications will be sent from.</li>\r\n<li><strong>Google Analytics website ID</strong>: This is the ID from the Google Analytics page that connects your website to google. When a google analytics account is created (most likely using the site email) you will be given this code. It should be put here in this setting.</li>\r\n<li><strong>Enable Article Submission Process</strong>: This enables the requried review and approval of anything added to the website by a contributor user. If this is disabled then anything contributors add will automatically be published to the website without required approval. (by default administrators do not need approval for anything they add.)</li>\r\n<li><strong>Enable Site Search</strong>:&nbsp;The Search box allows your users to search for articles based on their tags.If this is disabled, the search box will be removed from the website (Front end).</li>\r\n<li><strong>Enable Links Section</strong>:&nbsp;This enable or disables the Links side panel where you can provide your user with links to other sites and external resources. If this is disabled the links side panel will be removed from the website (Front end).</li>\r\n<li><strong>Enable Side Widget</strong>:&nbsp;This enables an additional section in the side panel where you can post additional content to be shone on all pages. If this is disabled the side widget section will be removed from the website (Front End).</li>\r\n<li><strong>Enable Author Names</strong>: This enables author names, dates and times to be displayed on the website right below the title of any articles that are added to the website (front end). If disabled then only the article Title and content will show. (The author, dates and times are still stored and can be viewed in the admin side.)</li>\r\n</ul>\r\n</body>\r\n</html>'),
(20, 'Aside Links Help Page', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Aside Links Help&nbsp;</h1>\r\n<h2>Where Does This Information Go?</h2>\r\n<p>The Aside Links page is used to change the links on the right side of the website. The Link Name is what appears as the text on the front page and the Link URL is where the link will take you once you click it.</p>\r\n<h2>How to use it.</h2>\r\n<p>Just enter a Link Name and then a Link URL (That has to be a full link so include http:// before your link) and then decide whether you want it to be go under News or Links and click Add Aside Link and it will be added. Below you can click on the trash can to delete any unwanted links or the pencil to edit the link.</p>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `linkID` int(10) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `linkURL` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `linkOrder` int(3) NOT NULL,
  `linkTypeID` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`linkID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`linkID`, `linkName`, `linkURL`, `linkOrder`, `linkTypeID`) VALUES
(1, 'Ferris', 'http://www.ferris.edu', 1, 1),
(2, 'National Coalition Against Domestic Violence ', 'http://www.ncadv.org', 2, 1),
(5, 'Polaris Project', 'http://polarisproject.org', 3, 1),
(6, 'National Human Trafficking Hotline', 'http://humantraffickinghotline.org/', 5, 1),
(7, 'National Center for Missing and Exploited Children', 'http://www.missingkids.com/home', 4, 1),
(8, 'Innocents At Risk', 'http://www.innocentsatrisk.org', 6, 1),
(9, 'Shared Hope', 'http://www.sharedhope.org', 7, 1),
(10, 'The New York Times', 'https://www.nytimes.com/topic/subject/human-trafficking', 1, 2),
(11, 'ABC News', 'http://abcnews.go.com/topics/news/issues/human-trafficking.htm', 2, 2),
(12, 'The Huffington Post', 'http://www.huffingtonpost.com/news/human-trafficking/', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `linkType`
--

CREATE TABLE IF NOT EXISTS `linkType` (
  `linkTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `linkTypeName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`linkTypeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `linkType`
--

INSERT INTO `linkType` (`linkTypeID`, `linkTypeName`) VALUES
(1, 'Link'),
(2, 'News');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE IF NOT EXISTS `navigations` (
  `navigationID` int(10) NOT NULL AUTO_INCREMENT,
  `navigationName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `navigationURL` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `navigationLocation` tinyint(1) NOT NULL,
  `navigationVisible` tinyint(1) NOT NULL,
  `navigationOrder` int(2) NOT NULL,
  `navButtonColor` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `navButtonSize` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `navJavaScript` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`navigationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigationID`, `navigationName`, `navigationURL`, `navigationLocation`, `navigationVisible`, `navigationOrder`, `navButtonColor`, `navButtonSize`, `navJavaScript`) VALUES
(1, 'Home', 'index.php', 2, 1, 1, '', '', ''),
(3, 'Take Action', '#', 2, 0, 3, '', '', ''),
(28, 'Events', 'index.php?view=catbynavname&navname=Events', 4, 1, 8, '', '', ''),
(19, 'Articles', 'index.php?view=catbynavname&navname=Articles', 3, 1, 2, '', '', ''),
(6, 'Cyber Security', 'http://cybersecurity.bulldogcms.com', 1, 1, 7, 'btn btn-primary', '', ''),
(17, 'All Articles', 'index.php?view=articlelist', 2, 0, 5, '', '', ''),
(23, 'About', 'index.php?view=specialpage&articleID=17', 2, 0, 6, '', '', ''),
(25, 'Resources', 'index.php?view=catbynavname&navname=Resources', 2, 1, 4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleID`, `roleName`) VALUES
(1, 'Contributor'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `siteSettings`
--

CREATE TABLE IF NOT EXISTS `siteSettings` (
  `siteSettingID` int(10) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'bullDogCMS',
  `siteEmail` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `siteSearch` tinyint(1) NOT NULL DEFAULT '1',
  `articleSubmission` tinyint(1) NOT NULL DEFAULT '1',
  `enableLinks` tinyint(1) NOT NULL DEFAULT '1',
  `enableSideWidget` tinyint(1) NOT NULL DEFAULT '1',
  `enableLatestArticles` tinyint(1) NOT NULL DEFAULT '1',
  `enableNews` tinyint(1) NOT NULL DEFAULT '1',
  `enableEvents` tinyint(1) NOT NULL DEFAULT '1',
  `enableAuthorNames` tinyint(1) NOT NULL DEFAULT '1',
  `enableFullName` tinyint(1) NOT NULL DEFAULT '1',
  `googleAnalyticsID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `gaClientID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `gaViewID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `paginationLength` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`siteSettingID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `siteSettings`
--

INSERT INTO `siteSettings` (`siteSettingID`, `siteName`, `siteEmail`, `siteSearch`, `articleSubmission`, `enableLinks`, `enableSideWidget`, `enableLatestArticles`, `enableNews`, `enableEvents`, `enableAuthorNames`, `enableFullName`, `googleAnalyticsID`, `gaClientID`, `gaViewID`, `paginationLength`) VALUES
(1, 'Human Trafficking', 'admin@somewhere.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 'UA-92959346-3', '418812939384-rnld9pa7s27cfh74npo80lldhknm6s1q.apps.googleusercontent.com', '141962645', 10);

-- --------------------------------------------------------

--
-- Table structure for table `themeColors`
--

CREATE TABLE IF NOT EXISTS `themeColors` (
  `themeColorID` int(10) NOT NULL AUTO_INCREMENT,
  `headerBackground` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `footerBackground` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `asideBackground` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `masterBackground` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `buttonHover` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `buttonFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `linkFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `linkHover` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `masterFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `headerFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `footerFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `headerTitleFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `footerTitleFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `asideFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `buttonBackground` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `heroicFont` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `pageHeading` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `dividingLines` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`themeColorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `themeColors`
--

INSERT INTO `themeColors` (`themeColorID`, `headerBackground`, `footerBackground`, `asideBackground`, `masterBackground`, `buttonHover`, `buttonFont`, `linkFont`, `linkHover`, `masterFont`, `headerFont`, `footerFont`, `headerTitleFont`, `footerTitleFont`, `asideFont`, `buttonBackground`, `heroicFont`, `pageHeading`, `dividingLines`) VALUES
(1, '00337F', '00337F', 'E1E2E6', 'F5F6FA', '015080', 'F5F6FA', '3D4045', '0175BB', '373C45', '70BEFA', '70BEFA', '70BEFA', '70BEFA', '', '0175BB', 'F5F6FA', '373C45', '373C45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `roleID` int(10) NOT NULL,
  `firstName` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `lastName` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `emailNotification` tinyint(1) NOT NULL DEFAULT '0',
  `userCreateDate` datetime NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `FK_users1` (`roleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `roleID`, `firstName`, `lastName`, `email`, `username`, `password`, `active`, `emailNotification`, `userCreateDate`) VALUES
(1, 2, 'bullDogCMS', 'Admin', 'admin@somewhere.com', 'administrator', '$2y$10$sDkxekTNINoAo63u0wWpFeGmkArxkw5ow61qowW0MSwDVCAPrfaza', 1, 0, '2017-01-05 12:58:26'),
(18, 2, 'Test123', 'User123', 'test@somewhere.com', 'test', '$2y$10$K5THYugowaM4rIsLYdBkVuriY9iAgtvzC1E6uJDYiHxvQn7VOqYRW', 1, 0, '2017-01-20 19:19:13'),
(19, 2, 'Leathel', 'Grody', 'grodyl1@ferris.edu', 'leathel', '$2y$10$SBq.I2K88vJZt4kxCSzsPOEu8SpYVoTkoDX1stkGng0UVT1SCDzlq', 1, 0, '2017-01-20 19:21:28'),
(20, 1, 'Micah', 'McCord', 'none@gmail.com', 'micahTest', '$2y$10$kaWXoyw/nwst.GLmXe6KK.OF0Moz6xBqc85RSsyYZX3MG2DKB8mnK', 0, 0, '2017-02-02 19:11:35'),
(21, 1, 'Tes', 'Contrib', 'testcontrib@somewhere.com', 'testcontrib', '$2y$10$y4zSc..p2z5SDL4yeFrRke/QRWBHxQX7YsiCzARtYaosAaN53pYTi', 1, 0, '2017-02-03 21:44:04'),
(22, 2, 'Micah', 'McCord', 'mccordm@ferris.edu', 'mccordm', '$2y$10$qIuifTbnBCafo52GOrXdx.IKrl4d6F9TlJ0uuiDJPF59OCDa43jvS', 1, 0, '2017-03-03 21:18:30'),
(23, 2, 'Roxy', 'Scrivener', 'scriver@ferris.edu', 'scriver', '$2y$10$MRCdz0HbdPDKmhDROc2lb.B78pEo2cEwDnuLbDb1hxQ7dBECV4nbK', 1, 0, '2017-03-16 21:38:24'),
(24, 2, 'Brandon', 'Evans', 'evansb12@ferris.edu', 'Evansb12', '$2y$10$7Foizm8aZpuzcenxv2oiYeMPv2nhGOlsZCK2eqouF.bHm0mnXnKfu', 1, 1, '2017-03-16 21:46:12'),
(25, 1, 'Contrib', 'utor', 'none1@gmail.com', 'imacontributor', '$2y$10$JeQcf6ZJ3IM0iBf5M5RUL.jQTf5whz/DYsg6Sk9OcxsNBTa0vZ7C2', 1, 0, '2017-03-18 00:00:17'),
(26, 2, 'Rachel ', 'Light', 'lightr1@ferris.edu', 'RachelLight', '$2y$10$pGl7oAbhUjEpwJ4A9EMRqO0JCQBRf9J2M5cKLLFH.GJiNiwl4fJ1G', 1, 0, '2017-03-28 12:53:02'),
(27, 2, 'Jon', 'Hollister', 'hollisj5@ferris.edu', 'JonHoll1', '$2y$10$R6keFMkrCxtrO89JkFgVyeLrVOE.XxDZQx0ThlXBEz3Yjnt2Iezhy', 1, 1, '2017-03-28 19:04:12'),
(28, 1, 'Contributor', 'Test', 'none3@gmail.com', 'contributortest', '$2y$10$O/VFIWKfChjzapZ/VWJit.Ma78qqH8tbrYIno9XV9plzv/2BKgr5G', 1, 0, '2017-03-31 22:05:55'),
(29, 1, 'Verification', 'TestUser', 'none2@gmail.com', 'verificationTest', '$2y$10$bXKESpDeIjeujPz8lmqIguiLBbJJ04G5tpAox/rde5tkeVnZEeqWm', 1, 0, '2017-04-16 20:03:27'),
(30, 2, 'CMS', 'Test', 'cms@fakeemail.com', 'CMSTest', '$2y$10$KOF/GwlgRj3hcmDZiTeiWOlm6X77X6Xbx1qqTvOJn51tqzuzOcq4K', 1, 0, '2017-04-20 21:38:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Update Statements
--

-- Eli Bergsma 1/20/17 navigations and categories to facilitate new header look

-- Put events link in position 3

UPDATE navigations
SET navigationOrder = 3, navigationLocation = 2
WHERE navigationID = 28;

-- Create a new link for upcoming media pages

INSERT INTO `navigations` (`navigationID`, `navigationName`, `navigationURL`, `navigationLocation`, `navigationVisible`, `navigationOrder`, `navButtonColor`, `navButtonSize`, `navJavaScript`) VALUES
(26, 'Media', '#', 2, 1, 5, '', '', '');

-- Move demographic links to Home dropdown

UPDATE categories
SET navigationID = 1
WHERE categoryID IN (2,3,4,5,251);

