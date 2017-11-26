-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Host: db671874405.db.1and1.com
-- Generation Time: Apr 25, 2017 at 07:56 AM
-- Server version: 5.5.54-0+deb7u2-log
-- PHP Version: 5.4.45-0+deb7u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db671874405`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`articleID`, `categoryID`, `articleTransactionID`, `articleAuthorID`, `articleCreateDate`, `articleVisible`, `articleLock`) VALUES
(1, 2, 1, 1, '2017-03-05 16:46:34', 0, 1),
(2, 2, 2, 3, '2017-03-14 14:38:39', 0, 1),
(3, 4, 3, 1, '2017-04-10 17:56:42', 1, 0),
(4, 4, 4, 1, '2017-04-15 17:57:30', 1, 0),
(5, 3, 5, 1, '2017-04-15 18:15:07', 1, 0),
(6, 2, 6, 1, '2017-04-15 18:34:40', 1, 0),
(7, 2, 7, 1, '2017-04-15 22:55:23', 1, 0),
(8, 4, 8, 1, '2017-04-15 23:24:23', 1, 0),
(9, 4, 9, 1, '2017-04-15 23:51:21', 1, 0),
(10, 7, 10, 1, '2017-04-16 00:10:18', 1, 0);

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
  `fileName` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `articleTags` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `articlePending` tinyint(4) NOT NULL DEFAULT '1',
  `transactionDate` datetime NOT NULL,
  `articleVersionID` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`transactionID`),
  KEY `FK_at1` (`articleID`),
  KEY `FK_at2` (`transactionAuthorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `articleTransactions`
--

INSERT INTO `articleTransactions` (`transactionID`, `articleID`, `transactionAuthorID`, `articleTitle`, `articleContent`, `articleImage`, `fileName`, `articleTags`, `articlePending`, `transactionDate`, `articleVersionID`) VALUES
(1, 1, 1, 'Test', '<p>Test</p>', 'images/Logo2_v3.png', '', '', 2, '2017-03-05 16:46:34', 1),
(2, 2, 3, '2015-k-12-education-survey-white-paper', '<p>This is a test</p>', 'images/Logo2_v2.png', 'C:Human Trafficking2015-k-12-education-survey-white-paper.pdf', '2015,k-12,education,survey,white,paper', 2, '2017-03-14 14:38:39', 1),
(3, 3, 1, 'Internet Safety E-Book for Parents', '<p>Ultimate Parent''s Guide to Internet Safety. Learn helpful tips and facts about keeping your kids safe online. Provided by https://www.everycloudtech.com/.</p>', 'images/CS_TipsForParents.jpg', 'documents/Ultimate_parents_guide_to_internet_safety_Ebook_1.pdf', 'parents tips help cyber internet computers teachers children', 0, '2017-04-15 17:49:44', 1),
(4, 4, 1, 'Kids & Social Media', '<p>&nbsp;</p>\r\n<h2>Safer social media use</h2>\r\n<p><em>Learn which social media sites and apps children are using and how you can protect them.</em></p>\r\n<p>Social media sites and apps are an important part of how children, tweens and teens use the internet. Younger children may enjoy using sites like Animal Jam or Neopets that do not fit the traditional social media mold, but still allow users to communicate with each other.</p>\r\n<p><a href="http://www.pewinternet.org/2015/08/06/chapter-4-social-media-and-friendships/">Over three-quarters of teens (ages 13-17) are using social media sites</a>&nbsp; and apps like Facebook, Ask.fm, Instagram and WhatsApp. Some teens even download adult dating apps such as OKCupid and Tinder.</p>\r\n<h3>What are the risks?</h3>\r\n<p>While using social media, children and teens may have to deal with:</p>\r\n<ul>\r\n<li><strong>Inappropriate content.&nbsp;</strong>Most social media sites have rules about what''s OK to post, but there may still be sexual, violent, illegal or other types content you don''t want children to see.</li>\r\n<li><strong>Cyberbullying.&nbsp;</strong>Some children and teens may make cruel comments to or about their peers on social media. Social media sites where people can post anonymously make cyberbullying especially easy.</li>\r\n<li><strong>Identity thieves.</strong>&nbsp;Children and teens may share personal information, leaving them open to identity theft, scams or hacking.</li>\r\n<li><strong>Sexting.</strong>&nbsp;Some teens and children may share nude or partially nude images through social media apps and face academic, social, or even legal consequences.</li>\r\n</ul>\r\n<p>What about&nbsp;<strong>"online predators"</strong>? This is a big fear for many adults. Although it doesn''t happen very often, some teens do receive unwanted sexual requests, also called online sexual solicitations.</p>\r\n<p><strong>Don''t worry, there''s good news!</strong></p>\r\n<p>Most children use social media appropriately, for example, to stay in touch with friends or explore their interests. They&rsquo;re not all cyberbullying, sexting or posting personal information. However, it&rsquo;s still important for you to be familiar with these risks so you know what to do if your children come to you with a problem.</p>\r\n<p><strong>What can I do?</strong></p>\r\n<p><em>Use these tips to help kids and teens use social media more safely.</em></p>\r\n<ul>\r\n<li><a href="http://www.huffingtonpost.com/entry/the-12-apps-that-every-parent-of-a-teen-should-know-about_us_56c34e49e4b0c3c55052a6ba">Learn about popular social media apps for children and teens</a>.&nbsp;Find out which ones your children are using, but remember that these apps gain and lose popularity quickly.</li>\r\n<li>Ask them to check their &ldquo;friends&rdquo; lists to see who has access to their accounts. Encourage them to remove anyone they don&rsquo;t know or trust. Children should also block or &ldquo;unfriend&rdquo; anyone bothering them.</li>\r\n<li>Teach them to use privacy settings. While they don&rsquo;t guarantee complete privacy, they can help children control who sees what they share.</li>\r\n<li>Help children remove any personal or inappropriate images from social media and other accounts.</li>\r\n<li>Encourage them to report inappropriate posts to the website or app. Most have a system in place to handle these complaints.</li>\r\n<li>Tell children to report criminal behavior to the police. If anyone sends them an inappropriate sexual request, they should report it to the <a href="http://www.cybertipline.com/">CyberTipline&reg;</a>.</li>\r\n</ul>\r\n<p><strong>Start the conversation!</strong></p>\r\n<p><em>Use these discussion starters to talk about using social media safely with every age group.</em></p>\r\n<p>Ask children:</p>\r\n<ul>\r\n<li>What&rsquo;s your favorite website? What do you like to do there?</li>\r\n<li>Have you ever seen something online you didn&rsquo;t want to see?</li>\r\n<li>Do you ever talk to people you don&rsquo;t know online? What do you talk about?</li>\r\n</ul>\r\n<p>Ask tweens and teens:</p>\r\n<ul>\r\n<li>Can you show me which sites and apps you&rsquo;re using?</li>\r\n<li>Would you feel comfortable if I checked your accounts?</li>\r\n<li>What kinds of things do you post?</li>\r\n<li>How do you decide who to add as a friend?</li>\r\n<li>How much personal information do you share online?</li>\r\n</ul>\r\n<p>Information and PDF from&nbsp;<a href="http://www.netsmartz.org/" target="_blank" rel="noopener noreferrer">http://www.netsmartz.org/</a>.</p>', 'images/CS_ParentsSocialMedia.jpg', 'documents/SocialNetworking_tips_parents_2014.pdf', 'social media facebook twitter snap chat kids parents children use usage protect', 0, '2017-04-15 18:16:29', 1),
(5, 5, 1, 'Watch What You Share', '<p>&nbsp;</p>\r\n<h2>Revealing Too Much</h2>\r\n<p>Web 2.0 lets users share information online as easily as they download it. Unfortunately, people of all ages often reveal too much. Children can be made especially vulnerable by sharing personal information, such as home addresses and phone numbers, private thoughts and feelings, and pictures. In order to keep your children from posting information and images they may end up regretting, remind them who may see the information they reveal while online.</p>\r\n<p><strong>Videos:</strong></p>\r\n<ul>\r\n<li><a href="http://www.netsmartz.org/RealLifeStories/6DegreesOfInformation" target="_blank" rel="noopener noreferrer">6 Degrees of Information</a>&nbsp;-&nbsp;Five teens find out how much information an Internet researcher is able to find out about them online.</li>\r\n<li><a href="http://www.netsmartz.org/TeensTalkBack/InformationTravels" target="_blank" rel="noopener noreferrer">Information Travels</a>&nbsp;-&nbsp;How fast does information travel once it gets online? These teens know.</li>\r\n<li><a href="http://www.netsmartz.org/TeensTalkBack/OfflineConsequences" target="_blank" rel="noopener noreferrer">Offline Consequenses</a>&nbsp;-&nbsp;These teens discuss being smart about what you post on your online profile.</li>\r\n<li><a href="http://www.netsmartz.org/NSTeens/PostToBePrivate" target="_blank" rel="noopener noreferrer">Post-To-Be Private</a>&nbsp;-&nbsp;Setting your page to private is smart and a step in the right direction -- but who''s on your friends list? Don''t give just anyone access to your world.</li>\r\n<li><a href="http://www.netsmartz.org/NSTeens/ProfilePenalty" target="_blank" rel="noopener noreferrer">Profile Penalty</a>&nbsp;-&nbsp;Everything on your profile represents who you are. What does yours say about you?</li>\r\n</ul>\r\n<p>Information and PDF from&nbsp;<a href="http://www.netsmartz.org/" target="_blank" rel="noopener noreferrer">http://www.netsmartz.org/</a>.</p>', 'images/CS_YouthSharing.jpg', 'documents/tips_for_teens.pdf', 'online sharing protecting youth teens kids information', 0, '2017-04-15 18:25:56', 1),
(6, 6, 1, 'Online Safety Tips', '<h2>Internet Safety Tips</h2>\r\n<ul>\r\n<li>Protect your computer.&nbsp;Keep your firewall turned on, and make sure your antivirus and antispyware software is up to date and your operating system is current. And be very careful what you download&mdash;opening an e-mail attachment from someone you don&rsquo;t know or even forwarded attachments from people you do know could potentially infect your computer with malicious code.</li>\r\n<li>Beware of social media scams. One of those scams involves posts on social media sites appearing to offer vouchers or gift cards that require you to fill out a survey, but that survey is designed to steal your personal information. Also, don&rsquo;t post pictures of theater, concert, or sporting event tickets on social media&mdash;fraudsters can create a fake ticket using the barcode obtained from the photo.</li>\r\n<li>Smartphone App Scams. Before downloading an app from an unknown source, look for third-party reviews. Some apps, often disguised as games and offered for free, may be designed to steal personal information from your device.</li>\r\n<li>Be on the lookout for online shopping scams. Scammers often defraud consumers by offering too-good-to-be-true deals via phishing e-mails or advertisements on untrusted websites&mdash;including offers for brand name merchandise at extremely low discounts or promises of gift cards as incentives to purchase products. You may end up paying for an item, giving away personal information and credit card details in the process, and receive nothing in return except a compromised identity.</li>\r\n<li>Don&rsquo;t fall for work-from-home scams. You may see websites or postings offering work you can do from the comfort of your own home, but many of these opportunities have unscrupulous motivations behind them. Always carefully research the job posting and the individual or company offering you employment.</li>\r\n</ul>\r\n<p>As always, if you suspect you&rsquo;ve been the victim of a cyber crime, contact law enforcement and file a complaint with the FBI&rsquo;s&nbsp;<a href="http://www.ic3.gov" target="_blank" rel="noopener noreferrer" data-urltype="/view" data-linktype="external" data-val="http://www.ic3.gov">Internet Crime Complaint Center</a>.</p>\r\n<p>Resource: <a href="https://www.fbi.gov/news/stories/simple-steps-for-internet-safety" target="_blank" rel="noopener noreferrer">https://www.fbi.gov/news/stories/simple-steps-for-internet-safety</a></p>', 'images/CS_AdultsOnlineSafety.jpg', '', 'adult online safety tips protect protection advice information internet computer', 0, '2017-04-15 18:46:40', 1),
(7, 7, 1, 'Shopping Safely Online', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3>Why do online shoppers have to take special precautions?</h3>\r\n<p>The Internet offers convenience not available from other shopping outlets. From the comfort of your home, you can search for items from multiple vendors, compare prices with a few mouse clicks, and make purchases without waiting in line. However, the Internet is also convenient for attackers, giving them multiple ways to access the personal and financial information of unsuspecting shoppers. Attackers who are able to obtain this information may use it for their own financial gain, either by making purchases themselves or by selling the information to someone else.</p>\r\n<h3>How do attackers target online shoppers?</h3>\r\n<p>There are three common ways that attackers can take advantage of online shoppers:</p>\r\n<ul>\r\n<li><strong>Creating fraudulent sites and email messages</strong>&nbsp;&ndash; Unlike traditional shopping, where you know that a store is actually the store it claims to be, attackers can create malicious websites or email messages that appear to be legitimate. Attackers may also misrepresent themselves as charities, especially after natural disasters or during holiday seasons. Attackers create these malicious sites and email messages to try to convince you to supply personal and financial information.</li>\r\n<li><strong>Intercepting insecure transactions</strong>&nbsp;&ndash; If a vendor does not use encryption, an attacker may be able to intercept your information as it is transmitted.</li>\r\n<li><strong>Targeting vulnerable computers</strong>&nbsp;&ndash; If you do not take steps to protect your computer from viruses or other malicious code, an attacker may be able to gain access to your computer and all of the information on it. It is also important for vendors to protect their computers to prevent attackers from accessing customer databases.</li>\r\n</ul>\r\n<h3>How can you protect yourself?</h3>\r\n<ul>\r\n<li><strong>Do business with reputable vendors</strong>&nbsp;&ndash; Before providing any personal or financial information, make sure that you are interacting with a reputable, established vendor. Some attackers may try to trick you by creating malicious websites that appear to be legitimate, so you should verify the legitimacy before supplying any information. (See&nbsp;<a href="http://www.us-cert.gov/cas/tips/ST04-014.html">Avoiding Social Engineering and Phishing Attacks</a>&nbsp;and&nbsp;<a href="https://www.us-cert.gov/cas/tips/ST05-010.html">Understanding Web Site Certificates</a>&nbsp;for more information.) Attackers may obtain a site certificate for a malicious website to appear more authentic, so review the certificate information, particularly the "issued to" information. Locate and note phone numbers and physical addresses of vendors in case there is a problem with your transaction or your bill.</li>\r\n<li><strong>Make sure your information is being encrypted</strong>&nbsp;&ndash; Many sites use secure sockets layer (SSL) to encrypt information. Indications that your information will be encrypted include a URL that begins with "https:" instead of "http:" and a padlock icon. If the padlock is closed, the information is encrypted. The location of the icon varies by browser; for example, it may be to the right of the address bar or at the bottom of the window. Some attackers try to trick users by adding a fake padlock icon, so make sure that the icon is in the appropriate location for your browser.</li>\r\n<li><strong>Be wary of emails requesting information</strong>&nbsp;&ndash; Attackers may attempt to gather information by sending emails requesting that you confirm purchase or account information. (See&nbsp;<a href="https://www.us-cert.gov/cas/tips/ST04-014.html">Avoiding Social Engineering and Phishing Attacks</a>.) Legitimate businesses will not solicit this type of information through email. Do not provide sensitive information through email. If you receive an unsolicited email from a business, instead of clicking on the provided link, directly log on to the authentic website by typing the address yourself. (See&nbsp;<a href="https://www.us-cert.gov/reading_room/emailscams_0905.pdf">Recognizing and Avoiding Email Scams</a>.)</li>\r\n<li><strong>Use a credit card</strong>&nbsp;&ndash; There are laws to limit your liability for fraudulent credit card charges, but you may not have the same level of protection for your debit cards. Additionally, because a debit card draws money directly from your bank account, unauthorized charges could leave you with insufficient funds to pay other bills. You can minimize potential damage by using a single, low-limit credit card to making all of your online purchases. Also use a credit card when using a payment gateway such as PayPal, Google Wallet, or Apple Pay.</li>\r\n<li><strong>Check your shopping app settings&nbsp;</strong>&ndash; Look for apps that tell you what they do with your data and how they keep it secure. Keep in mind that there is no legal limit on your liability with money stored in a&nbsp;<a href="https://www.consumer.ftc.gov/articles/0515-apps-help-you-shop-stores">shopping app</a>&nbsp;(or on a gift card). Unless otherwise stated under the terms of service, you are responsible for all charges made through your shopping app.</li>\r\n<li><strong>Check your statements</strong>&nbsp;&ndash; Keep a record of your purchases and copies of confirmation pages, and compare them to your bank statements. If there is a discrepancy, report it immediately. (See&nbsp;<a href="https://www.us-cert.gov/cas/tips/ST05-019.html">Preventing and Responding to Identity Theft</a>.)</li>\r\n<li><strong>Check privacy policies</strong>&nbsp;&ndash; Before providing personal or financial information, check the website''s privacy policy. Make sure you understand how your information will be stored and used. (See&nbsp;<a href="https://www.us-cert.gov/cas/tips/ST04-013.html">Protecting Your Privacy</a>.)</li>\r\n</ul>\r\n<p>Author: US-CERT Publications (<a href="https://www.us-cert.gov/ncas/tips/ST07-001">https://www.us-cert.gov/ncas/tips/ST07-001</a>)</p>\r\n</body>\r\n</html>', 'images/CS_AdultsOnlinePurchases.jpg', '', 'online purchase buying shopping ecommerce credit debit card protecting information', 0, '2017-04-15 23:04:29', 1),
(8, 8, 1, 'Recognizing & Preventing Cyberbullying', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>What is Cyberbullying?</h2>\r\n<p>Cyberbullying is&nbsp;<a href="https://www.stopbullying.gov/what-is-bullying/index.html">bullying</a>&nbsp;that takes place using electronic technology. Electronic technology includes devices and equipment such as cell phones, computers, and tablets as well as communication tools including social media sites, text messages, chat, and websites.</p>\r\n<p>Examples of cyberbullying include mean text messages or emails, rumors sent by email or posted on social networking sites, and embarrassing pictures, videos, websites, or fake profiles.</p>\r\n<ul>\r\n<li><a href="https://www.stopbullying.gov/cyberbullying/what-is-it/index.html#whycyberbullying">Why Cyberbullying is Different</a></li>\r\n<li><a href="https://www.stopbullying.gov/cyberbullying/what-is-it/index.html#effectsofcyberbullying">Effects of Cyberbullying</a>&nbsp;</li>\r\n<li><a href="https://www.stopbullying.gov/cyberbullying/what-is-it/index.html#frequencyofcyberbullying">Frequency of Cyberbullying</a></li>\r\n</ul>\r\n<h3>Why Cyberbullying is Different</h3>\r\n<p>Kids who are being cyberbullied are often bullied in person as well. Additionally, kids who are cyberbullied have a harder time getting away from the behavior.</p>\r\n<ul>\r\n<li>Cyberbullying can happen 24 hours a day, 7 days a week, and reach a kid even when he or she is alone. It can happen any time of the day or night.</li>\r\n<li>Cyberbullying messages and images can be posted anonymously and distributed quickly to a very wide audience. It can be difficult and sometimes impossible to trace the source.</li>\r\n<li>Deleting inappropriate or harassing messages, texts, and pictures is extremely difficult after they have been posted or sent.</li>\r\n</ul>\r\n<h3>Effects of Cyberbullying</h3>\r\n<p>Cell phones and computers themselves are not to blame for cyberbullying. Social media sites can be used for positive activities, like connecting kids with friends and family, helping students with school, and for entertainment. But these tools can also be used to hurt other people. Whether done in person or through technology, the effects of bullying are similar.</p>\r\n<p>Kids who are cyberbullied are more likely to:</p>\r\n<ul>\r\n<li>Use alcohol and drugs</li>\r\n<li>Skip school</li>\r\n<li>Experience in-person bullying</li>\r\n<li>Be unwilling to attend school</li>\r\n<li>Receive poor grades</li>\r\n<li>Have lower self-esteem</li>\r\n<li>Have more health problems</li>\r\n</ul>\r\n<h3>Frequency of Cyberbullying</h3>\r\n<p>The 2014&ndash;2015&nbsp;<a href="https://nces.ed.gov/pubs2017/2017015.pdf">School Crime Supplement</a>&nbsp;(National Center for Education Statistics and Bureau of Justice Statistics) indicates that, nationwide, about 21% of students ages 12-18 experienced bullying.</p>\r\n<p>The 2015&nbsp;<a href="https://www.cdc.gov/healthyyouth/data/yrbs/index.htm">Youth Risk Behavior Surveillance System</a>&nbsp;(Centers for Disease Control and Prevention) also indicates that an estimated 16% of high school students were bullied electronically in the 12 months prior to the survey.</p>\r\n<p><strong>Source:</strong>&nbsp;<a href="https://www.stopbullying.gov/cyberbullying/what-is-it/index.html">https://www.stopbullying.gov/cyberbullying/what-is-it/index.html</a>&nbsp;</p>\r\n</body>\r\n</html>', 'images/CS_ParentsCyberbullying.jpg', '', 'cyberbullying stop prevent what is cyber bullying online social media parents children youth kids', 0, '2017-04-15 23:29:25', 1),
(9, 9, 1, 'Online Gaming', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>What You Need to Know About Online Gaming</h2>\r\n<h2><em>Online gaming might be better for children than you think.</em></h2>\r\n<p>Many parents have mixed feelings about children playing online and app-based games. They&rsquo;ve heard of the risks&mdash;such as exposure to inappropriate content&mdash;but they&rsquo;ve also heard of the benefits.&nbsp;<a href="http://www.apa.org/pubs/journals/releases/amp-a0034857.pdf" target="_blank" rel="noopener noreferrer">Online gaming can help children</a>&nbsp;develop their creativity and problem-solving abilities. It can also give them the chance to make new friends and practice other social skills. Plus, it&rsquo;s fun! &nbsp;So how can you help children get the most out of online gaming?</p>\r\n<h2>Learn the risks and how to handle them.</h2>\r\n<p>It can be hard for adults to supervise online gaming. There are thousands of online games and apps, making it hard to know exactly what children are playing. In addition, children can play from anywhere thanks to mobile gaming devices, smartphones and tablets.</p>\r\n<p>Games can also have confusing or inappropriate content for children. Some have adult language or are violent or sexual. Others have advertisements that let children make purchases without parental authorization.&nbsp;<a href="http://www.consumer.ftc.gov/blog/kids-app-spending-android-parents-didnt-app-rove" target="_blank" rel="noopener noreferrer">Children have spent hundreds of dollars on in-game merchandise</a>.</p>\r\n<p>Children, especially young children, who click these ads may not know they&rsquo;re spending real money.</p>\r\n<p>Many online games have features that allow players to talk or IM with each other. Some of these players may:</p>\r\n<ul>\r\n<li><strong>Cyberbully children</strong>&nbsp;by&nbsp;<a href="https://nobullying.com/the-rise-of-bullying-in-online-games/" target="_blank" rel="noopener noreferrer">targeting, excluding or disabling their in-game characters</a>, using racial slurs, or making other rude comments.</li>\r\n<li><strong>Gather sensitive information</strong>&nbsp;like passwords and credit card numbers by&nbsp;<a href="http://www.xbox.com/en-US/Live/Account-Security/Stolen-Account" target="_blank" rel="noopener noreferrer">scamming children</a>&nbsp;or hacking directly into their accounts.</li>\r\n<li><strong>Have sexual conversations</strong>,&nbsp;<a href="http://www.komonews.com/news/local/Charge-Kirkland-sex-offender-lured-boys-gaming-online-257089621.html" target="_blank" rel="noopener noreferrer">request sexual images</a>&nbsp;or, more rarely, ask children to meet offline. They may even try to get children to share sexual images by sharing their own images first.</li>\r\n</ul>\r\n<h3>What can I do?</h3>\r\n<p>Use these tips to help children game more safely online.</p>\r\n<ul>\r\n<li><strong>Know what games children are playing</strong>. Ratings sites like&nbsp;<a href="http://www.esrb.org/" target="_blank" rel="noopener noreferrer">ESRB.org</a>&nbsp;and&nbsp;<a href="https://www.commonsensemedia.org/game-reviews" target="_blank" rel="noopener noreferrer">CommonSenseMedia.org</a>&nbsp;can help you decide if a game is appropriate.</li>\r\n<li><strong>Learn how to use the safety features</strong>. For example, does the game have reporting features or moderators? Can players be blocked?</li>\r\n<li><strong>Ask with whom children are gaming</strong>. Learn the usernames of anyone your children play with frequently.</li>\r\n<li><strong>Discuss what information children are sharing</strong>. Tell them not to share personal information like credit card and phone numbers</li>\r\n<li><strong>Know where children are gaming.&nbsp;</strong>You may be supervising your home console, but where else are children gaming? Do they play on mobile devices? At friends&rsquo; homes?</li>\r\n</ul>\r\n<h3>Start the Conversation</h3>\r\n<p>Talk to children and teens about online gaming.</p>\r\n<ul>\r\n<li>Can I play this game with you?</li>\r\n<li>Have you ever been cyberbullied while gaming? What did you do?</li>\r\n<li>Do you know what information is OK to share about yourself while gaming?</li>\r\n<li>Who do you play online games with? &nbsp;</li>\r\n<li>Has anyone talked about sex while you were gaming or asked you to send pictures of yourself?</li>\r\n</ul>\r\n<h3>Videos</h3>\r\n<ul>\r\n<li><a href="http://www.netsmartz.org/TeensTalkBack/Gaming" target="_blank" rel="noopener noreferrer">Gaming</a> -&nbsp;Got game? These teens do! Hear what&nbsp;your peers&nbsp;have to say about gaming online.</li>\r\n<li><a href="http://www.netsmartz.org/NSTeens/AttitudeOverdrive" target="_blank" rel="noopener noreferrer">Attitude Overdrive</a> - There''s nothing wrong with playing to win, but what happens when someone crosses the line between competitor and griefer?</li>\r\n</ul>\r\n</body>\r\n</html>', 'images/CS_YouthGaming.jpg', 'documents/gaming_parent_handout_2010.pdf', 'youth kids children online gaming xbox playstation pc game chat', 0, '2017-04-15 23:57:17', 1),
(10, 10, 1, 'Cyber Security for Small Business', '<p>&nbsp;</p>\r\n<p>The Internet allows businesses of all sizes and from any location to reach new and larger markets and provides opportunities to work more efficiently by using computer-based tools. Whether a business is thinking of adopting cloud computing or just using email and maintaining a website, cybersecurity should be a part of the plan. Theft of digital information has become the most commonly reported fraud, surpassing physical theft. Every business that uses the Internet is responsible for creating a culture of security that will enhance business and consumer confidence. In October 2012, the FCC re-launched the&nbsp;<a href="https://www.fcc.gov/cyberplanner">Small Biz Cyber Planner 2.0</a>, an online resource to help small businesses create customized cybersecurity plans.</p>\r\n<p>The FCC also released an updated one-page&nbsp;<a href="http://hraunfoss.fcc.gov/edocs_public/attachmatch/DOC-306595A1.pdf">Cybersecurity Tip Sheet</a>. The quick resource features new tips on creating a mobile device action plan and on payment and credit card security.</p>\r\n<h2>10 Cyber Security Tips for Small Business</h2>\r\n<p>Broadband and information technology are powerful factors in small businesses reaching new markets and increasing productivity and efficiency. However, businesses need a cybersecurity strategy to protect their own business, their customers, and their data from growing cybersecurity threats.</p>\r\n<h4><strong>1. Train employees in security principles</strong></h4>\r\n<p>Establish basic security practices and policies for employees, such as requiring strong passwords, and establish appropriate Internet use guidelines that detail penalties for violating company cybersecurity policies. Establish rules of behavior describing how to handle and protect customer information and other vital data.</p>\r\n<h4>2. Protect information, computers and networks from cyber attacks</h4>\r\n<p>Keep clean machines: having the latest security software, web browser, and operating system are the best defenses against viruses, malware, and other online threats. Set antivirus software to run a scan after each update. Install other key software updates as soon as they are available.</p>\r\n<h4>3. Provide firewall security for your Internet connection</h4>\r\n<p>A firewall is a set of related programs that prevent outsiders from accessing data on a private network. Make sure the operating system&rsquo;s firewall is enabled or install free firewall software available online. If employees work from home, ensure that their home system(s) are protected by a firewall.</p>\r\n<h4>4. Create a mobile device action plan</h4>\r\n<p>Mobile devices can create significant security and management challenges, especially if they hold confidential information or can access the corporate network. Require users to password protect their devices, encrypt their data, and install security apps to prevent criminals from stealing information while the phone is on public networks. Be sure to set reporting procedures for lost or stolen equipment.</p>\r\n<h4>5. Make backup copies of important business data and information</h4>\r\n<p>Regularly backup the data on all computers. Critical data includes word processing documents, electronic spreadsheets, databases, financial files, human resources files, and accounts receivable/payable files. Backup data automatically if possible, or at least weekly and store the copies either offsite or in the cloud.</p>\r\n<h4>6. Control physical access to your computers and create user accounts for each employee</h4>\r\n<p>Prevent access or use of business computers by unauthorized individuals. Laptops can be particularly easy targets for theft or can be lost, so lock them up when unattended. Make sure a separate user account is created for each employee and require strong passwords. Administrative privileges should only be given to trusted IT staff and key personnel.</p>\r\n<h4>7. Secure your Wi-Fi networks</h4>\r\n<p>If you have a Wi-Fi network for your workplace, make sure it is secure, encrypted, and hidden. To hide your Wi-Fi network, set up your wireless access point or router so it does not broadcast the network name, known as the Service Set Identifier (SSID). Password protect access to the router.</p>\r\n<h4>8. Employ best practices on payment cards</h4>\r\n<p>Work with banks or processors to ensure the most trusted and validated tools and anti-fraud services are being used. You may also have additional security obligations pursuant to agreements with your bank or processor. Isolate payment systems from other, less secure programs and don&rsquo;t use the same computer to process payments and surf the Internet.</p>\r\n<h4>9. Limit employee access to data and information, limit authority to install software</h4>\r\n<p>Do not provide any one employee with access to all data systems. Employees should only be given access to the specific data systems that they need for their jobs, and should not be able to install any software without permission.</p>\r\n<h4>10. Passwords and authentication</h4>\r\n<p>Require employees to use unique passwords and change passwords every three months. Consider implementing multi-factor authentication that requires additional information beyond a password to gain entry. Check with your vendors that handle sensitive data, especially financial institutions, to see if they offer multi-factor authentication for your account.</p>\r\n<h2>Cyber Security Resources for Small Businesses</h2>\r\n<p><em>The descriptions and links below are provided for informational purposes only. The FCC does not endorse any non-FCC product or service, and is not responsible for the content of non-FCC websites, including their accuracy, completeness, or timeliness.</em></p>\r\n<p><em>The FCC&rsquo;s Cybersecurity and Small Business page provides links to information about government agencies and private that ave educational resources and tools related to cybersecurity. If you would like information about your organization included in the Clearinghouse, please send an e-mail with a brief description and Internet link toyour organization&rsquo;s resoruce along with your contact information , to&nbsp;<a href="mailto:csroundtable@fcc.gov">csroundtable@fcc.gov</a>.</em></p>\r\n<ul>\r\n<li><a href="http://www.entrepreneur.com/magazine/entrepreneur/2010/june/206656.html">Protecting Your Small Business, Entrepreneur Magazine</a></li>\r\n<li><a href="http://www.scmagazineus.com/2011-sc-awards-us-finalists/section/1908/">2011 Awards for best computer security tools, SC Magazine</a></li>\r\n<li><a href="http://www.isalliance.org/">Free training materials, security configuration guides from Internet Security Alliance</a></li>\r\n<li><a href="http://store.symantec.com/d?om_sem_cid=hho_sem_nam_us_Google_SMB_Store_Home&amp;inid=hho_sem_sy:us:ggl:en:e%7Ckw0000006084%7CSMB">Symantec Security Solutions for Small Business</a></li>\r\n<li><a href="http://shop.mcafee.com/Default.aspx?site=us&amp;pid=HOME&amp;CID=MFE-MHP001">McAfee Security Solutions for Small Business</a></li>\r\n<li><a href="http://www.microsoft.com/smallbusiness/support/security-toolkit-pdf.mspx">Microsoft Small Business Guide</a></li>\r\n<li><a href="http://securingourecity.org/">Security Tips from Securing our eCity</a></li>\r\n<li><a href="http://stopbadware.org/">Small Business Solutions form StopBadware</a></li>\r\n<li><a href="https://www.fcc.gov/%E2%80%9Chttps%3A//www.uschamber.com/sites/default/files/issues/technology/files/ISEB-2.0-CyberSecurityGuide.pdf%E2%80%9D">Internet Security Essentials for Businesses 2.0</a></li>\r\n</ul>\r\n<h3>U.S. Government Resources and Activities</h3>\r\n<ul>\r\n<li><a href="http://csrc.nist.gov/groups/SMA/sbc/documents/sbc_workshop_presentation_2015_ver1.pdf">NIST briefing on Cybersecurity for Small Businesses</a></li>\r\n<li><a href="http://csrc.nist.gov/groups/SMA/sbc/overview.html">SBA, NIST and FBI partnership on Cybersecurity for small businesses</a></li>\r\n<li><a href="http://www.onguardonline.gov/topics/computer-security.aspx">Federal Trade Commission &ndash; Identity Theft Information</a></li>\r\n<li><a href="http://nvlpubs.nist.gov/nistpubs/ir/2016/NIST.IR.7621r1.pdf">NIST Small Business Information Security</a></li>\r\n<li><a href="http://www.dhs.gov/cyber">U.S. Department of Homeland Security Cyber Security Resources</a></li>\r\n<li><a href="http://www.dhs.gov/ynews/testimony/testimony_1300283858976.shtm">DHS testimony before the House on Committee on Homeland Security Subcommittee on Cybersecurity, Infrastructure Protection, and Security Technologies</a></li>\r\n<li><a href="http://irtsectraining.nih.gov/publicUser.aspx">NIH Free Online User Training (non DOD version)</a></li>\r\n<li><a href="http://iase.disa.mil/eta/issv4/index.htm">NIH Free Online User Training</a></li>\r\n<li><a href="http://csrc.nist.gov/publications/nistpubs/800-36/NIST-SP800-36.pdf">NIST Guide to Selecting Information Technology Security Products</a></li>\r\n<li><a href="http://csrc.nist.gov/groups/SMA/sbc/index.html">NIST Small Business Corner (SBC)</a></li>\r\n<li><a href="http://www.staysafeonline.info/">National Cyber Security Alliance for Small Business Home Users</a></li>\r\n<li><a href="http://www.staysafeonline.org/tools-resources/free-security-check-ups">Free online security check ups</a></li>\r\n</ul>', 'images/CS_GeneralBusiness.jpg', '', 'cyber security cybersecurity business small data protection', 0, '2017-04-16 00:21:00', 1);

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
(1, 'bullDogCMS is here!', 'It is the greatest CMS');

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
(1, 'includes/categoryList.php', 1, 'images/Banner2.jpg', '', '', 1, 1, 1, 0, '', 5);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `navigationID`, `categoryName`, `categoryImage`, `categoryContent`, `categoryOrder`, `categoryVisible`, `categoryTypeID`) VALUES
(1, 0, 'Special Page', NULL, NULL, 1, 1, 1),
(2, 6, 'Adults', 'images/CS_Adults.jpg', '', 1, 1, 1),
(3, 6, 'Youth', 'images/cs_Youth.jpg', '', 2, 1, 1),
(4, 6, 'Parents', 'images/CS_Parents.jpg', '', 3, 1, 1),
(5, 7, 'What is Cyber Security?', 'images/CyberSecurityIs.png', '<p>&nbsp;</p>\r\n<p>Cyber security means many&nbsp;different things to a lot of different people.</p>\r\n<p>To&nbsp;<strong>Adults</strong>, it might mean protecting their identity, credit, and bank account information. It also might mean responsible use of social media and dating sites.</p>\r\n<p>To&nbsp;<strong>Youth</strong> (and their parents), it might mean responsible use of social media&nbsp;and online gaming, protecting their privacy, and what to do about cyber bullying.</p>\r\n<p>To&nbsp;<strong>Parents</strong> and&nbsp;<strong>Teachers</strong>, it might mean protecting kids from being exposed to too much or knowing how to handle and prevent cyber bullying.</p>\r\n<p>To&nbsp;<strong>Government&nbsp;</strong>and&nbsp;<strong>Law Enforcement</strong>, it might mean preventing cybercrime and tracking down cyber terrorists, as well as preventing and protecting against the online exploitation of minors.</p>\r\n<p>To&nbsp;<strong>Businesses</strong>, it might mean protecting their data, and sometimes more importantly, their customers'' data from both internal and external threats.</p>\r\n<p>Web 2.0 has been the catalyst to a hyper connected society where so much of our time is spent online. It has become very important for people to educate themselves, and their families about how to protect their personal information, how to have responsible interactions with people online, how to protect their intellectual property, how to prevent their children from seeing inappropriate material, and how to stop and prevent cybercrime.</p>\r\n<p>If you suspect you&rsquo;ve been the victim of cybercrime, contact law enforcement and file a complaint with the FBI&rsquo;s <a href="http://www.ic3.gov" target="_blank" rel="noopener noreferrer" data-urltype="/view" data-linktype="external" data-val="http://www.ic3.gov">Internet Crime Complaint Center</a>.</p>', 1, 1, 2),
(6, 7, 'Data & Statistics', 'images/Graph2.png', '', 2, 1, 1),
(7, 6, 'General', 'images/CS_General.jpg', '', 4, 1, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=140 ;

--
-- Dumping data for table `changeLog`
--

INSERT INTO `changeLog` (`changeID`, `changeByUserID`, `changedTable`, `changeDetails`, `changeDate`) VALUES
(1, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-01 20:19:41'),
(2, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-01 20:19:56'),
(3, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-03-05 16:01:14'),
(4, 1, 'navigations', 'Added: Human Trafficking', '2017-03-05 16:09:41'),
(5, 1, 'users', 'Added User: leathel', '2017-03-05 16:45:00'),
(6, 1, 'navigations', 'Added: Test', '2017-03-05 16:46:00'),
(7, 1, 'categories', 'Added Test', '2017-03-05 16:46:17'),
(8, 1, 'articles + articleTransactions', 'Added article: Test', '2017-03-05 16:46:34'),
(9, 1, 'users', 'Added User: test', '2017-03-05 21:50:21'),
(10, 3, 'articles + articleTransactions', 'Added article: 2015-k-12-education-survey-white-paper', '2017-03-14 14:38:39'),
(11, 1, 'general', 'administrator logged into the system.', '2017-04-04 20:02:44'),
(12, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:03:38'),
(13, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:04:33'),
(14, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:07:08'),
(15, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:07:47'),
(16, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:08:12'),
(17, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:08:15'),
(18, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:09:09'),
(19, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:09:14'),
(20, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:09:57'),
(21, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-04 20:10:08'),
(22, 1, 'general', 'administrator logged into the system.', '2017-04-05 12:47:54'),
(23, 1, 'navigations', 'Navigation &#039;Articles&#039; was edited', '2017-04-05 12:48:22'),
(24, 1, 'categories', 'Updated Adults', '2017-04-05 12:49:06'),
(25, 1, 'categories', 'Added Youth', '2017-04-05 12:49:24'),
(26, 1, 'categories', 'Added Parents', '2017-04-05 12:49:41'),
(27, 1, 'navigations', 'Added: Resources', '2017-04-05 12:51:33'),
(28, 1, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-05 12:51:41'),
(29, 1, 'categories', 'Added What is Cyber Security?', '2017-04-05 12:52:17'),
(30, 1, 'categories', 'Added Data & Statistics', '2017-04-05 12:52:35'),
(31, 1, 'siteSettings', 'Updated Site Settings', '2017-04-05 12:52:57'),
(32, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 12:53:21'),
(33, 1, 'navigations', 'Navigation &#039;Resources&#039; was edited', '2017-04-05 12:54:45'),
(34, 1, 'siteSettings', 'Updated Site Settings', '2017-04-05 12:56:53'),
(35, 1, 'footerLayout', 'Updated Footer Layout Settings', '2017-04-05 12:58:54'),
(36, 1, 'categories', 'Added General', '2017-04-05 13:00:25'),
(37, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-05 13:07:55'),
(38, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-05 13:08:33'),
(39, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:09:52'),
(40, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-05 13:11:36'),
(41, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-05 13:13:03'),
(42, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:16:27'),
(43, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:17:24'),
(44, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:17:35'),
(45, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:18:24'),
(46, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:18:30'),
(47, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-05 13:20:19'),
(48, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-05 13:22:06'),
(49, 1, 'navigations', 'Navigation &#039;Home&#039; was edited', '2017-04-05 13:25:21'),
(50, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:26:52'),
(51, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-05 13:27:03'),
(52, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-05 13:30:38'),
(53, 1, 'general', 'administrator logged into the system.', '2017-04-06 21:25:48'),
(54, 1, 'general', 'administrator logged into the system.', '2017-04-06 22:39:31'),
(55, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 22:40:04'),
(56, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 22:55:44'),
(57, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 22:59:50'),
(58, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:00:29'),
(59, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:02:18'),
(60, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:05:11'),
(61, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:06:35'),
(62, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:12:43'),
(63, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-06 23:22:55'),
(64, 1, 'general', 'administrator logged into the system.', '2017-04-09 23:14:10'),
(65, 1, 'categories', 'Updated Adults', '2017-04-09 23:15:20'),
(66, 1, 'categories', 'Updated Youth', '2017-04-09 23:15:38'),
(67, 1, 'categories', 'Updated Parents', '2017-04-09 23:15:53'),
(68, 1, 'categories', 'Updated General', '2017-04-09 23:22:48'),
(69, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-09 23:23:14'),
(70, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-09 23:26:52'),
(71, 1, 'categories', 'Updated What is Cyber Security?', '2017-04-09 23:32:49'),
(72, 1, 'categories', 'Updated Data & Statistics', '2017-04-09 23:33:46'),
(73, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-09 23:46:26'),
(74, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-09 23:47:24'),
(75, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-09 23:48:44'),
(76, 1, 'themeColors', 'Site color scheme was updated.', '2017-04-09 23:49:52'),
(77, 1, 'general', 'administrator logged into the system.', '2017-04-10 17:41:50'),
(78, 1, 'links', 'Aside Link &#039;ProtectMiChild &#039; was added', '2017-04-10 17:42:58'),
(79, 1, 'articles + articleTransactions', 'Added article: Cyber Tips for Parents', '2017-04-10 17:56:42'),
(80, 1, 'articles + articleTransactions', 'Edited article: Cyber Tips for Parents', '2017-04-10 17:58:50'),
(81, 1, 'articles + articleTransactions', 'Edited article: Cyber Tips for Parents', '2017-04-10 18:01:11'),
(82, 1, 'general', 'administrator logged into the system.', '2017-04-15 14:53:01'),
(83, 1, 'articles + articleTransactions', 'Edited article: Cyber Tips for Parents', '2017-04-15 17:28:14'),
(84, 1, 'articles + articleTransactions', 'Edited article: Cyber Tips for Parents', '2017-04-15 17:33:33'),
(85, 1, 'articles + articleTransactions', 'Edited article: Internet Safety E-Book for Parents', '2017-04-15 17:49:44'),
(86, 1, 'articles + articleTransactions', 'Added article: Kids & Social Media', '2017-04-15 17:57:30'),
(87, 1, 'articles + articleTransactions', 'Edited article: Kids & Social Media', '2017-04-15 18:04:09'),
(88, 1, 'articles + articleTransactions', 'Edited article: Kids & Social Media', '2017-04-15 18:09:24'),
(89, 1, 'articles + articleTransactions', 'Edited article: Kids & Social Media', '2017-04-15 18:10:22'),
(90, 1, 'articles + articleTransactions', 'Added article: Watch What You Share', '2017-04-15 18:15:07'),
(91, 1, 'articles + articleTransactions', 'Edited article: Kids & Social Media', '2017-04-15 18:16:29'),
(92, 1, 'articles + articleTransactions', 'Edited article: Watch What You Share', '2017-04-15 18:25:00'),
(93, 1, 'articles + articleTransactions', 'Edited article: Watch What You Share', '2017-04-15 18:25:57'),
(94, 1, 'links', 'Aside Link &#039;FBI - Safe Online Surfing (SOS) &#039; was added', '2017-04-15 18:30:53'),
(95, 1, 'articles + articleTransactions', 'Added article: Online Safety Tips', '2017-04-15 18:34:40'),
(96, 1, 'articles + articleTransactions', 'Edited article: Online Safety Tips', '2017-04-15 18:36:31'),
(97, 1, 'articles + articleTransactions', 'Article &#039;2015-k-12-education-survey-white-paper&#039; was archived.', '2017-04-15 18:36:54'),
(98, 1, 'articles + articleTransactions', 'Article &#039;Test&#039; was archived.', '2017-04-15 18:36:59'),
(99, 1, 'articles + articleTransactions', 'Edited article: Online Safety Tips', '2017-04-15 18:46:40'),
(100, 1, 'general', 'administrator logged into the system.', '2017-04-15 20:36:09'),
(101, 1, 'categories', 'Updated What is Cyber Security?', '2017-04-15 21:19:57'),
(102, 1, 'categories', 'Updated What is Cyber Security?', '2017-04-15 21:20:49'),
(103, 1, 'categories', 'Updated What is Cyber Security?', '2017-04-15 21:21:53'),
(104, 1, 'categories', 'Updated What is Cyber Security?', '2017-04-15 21:22:59'),
(105, 1, 'bodySettings', 'Site homepage settings were updated.', '2017-04-15 22:35:43'),
(106, 1, 'navigations', 'Navigation &#039;Articles&#039; was edited', '2017-04-15 22:36:46'),
(107, 1, 'articles + articleTransactions', 'Added article: Shopping Safely Online', '2017-04-15 22:55:23'),
(108, 1, 'articles + articleTransactions', 'Edited article: Shopping Safely Online', '2017-04-15 23:03:00'),
(109, 1, 'articles + articleTransactions', 'Edited article: Shopping Safely Online', '2017-04-15 23:04:29'),
(110, 1, 'articles + articleTransactions', 'Added article: Recognizing & Preventing Cyberbullying', '2017-04-15 23:24:23'),
(111, 1, 'articles + articleTransactions', 'Edited article: Recognizing & Preventing Cyberbullying', '2017-04-15 23:29:25'),
(112, 1, 'links', 'Aside Link &#039;FBI - Child ID App &#039; was added', '2017-04-15 23:30:08'),
(113, 1, 'links', 'Aside Link &#039;FBI - National Cyber Security Awareness Month &#039; was added', '2017-04-15 23:31:35'),
(114, 1, 'articles + articleTransactions', 'Added article: Online Gaming', '2017-04-15 23:51:21'),
(115, 1, 'articles + articleTransactions', 'Edited article: Online Gaming', '2017-04-15 23:57:17'),
(116, 1, 'articles + articleTransactions', 'Added article: Cyber Security for Small Business', '2017-04-16 00:10:18'),
(117, 1, 'articles + articleTransactions', 'Edited article: Cyber Security for Small Business', '2017-04-16 00:11:02'),
(118, 1, 'articles + articleTransactions', 'Edited article: Cyber Security for Small Business', '2017-04-16 00:17:36'),
(119, 1, 'articles + articleTransactions', 'Edited article: Cyber Security for Small Business', '2017-04-16 00:20:00'),
(120, 1, 'articles + articleTransactions', 'Edited article: Cyber Security for Small Business', '2017-04-16 00:21:00'),
(121, 1, 'links', 'Aside Link &#039;Michigan Cyber Security Initiative (CSI) &#039; was added', '2017-04-16 00:26:51'),
(122, 2, 'general', 'leathel logged into the system.', '2017-04-16 17:16:20'),
(123, 2, 'siteSettings', 'Updated Site Settings', '2017-04-16 17:16:54'),
(124, 2, 'navigations', 'Navigation &#039;Articles&#039; was edited', '2017-04-16 18:26:49'),
(125, 2, 'navigations', 'Navigation &#039;Human Trafficking&#039; was edited', '2017-04-16 18:27:06'),
(126, 1, 'general', 'administrator logged into the system.', '2017-04-16 19:54:04'),
(127, 1, 'links', 'Aside Link &#039;TechNewsWorld &#039; was added', '2017-04-16 19:54:46'),
(128, 1, 'links', 'Aside Link &#039;Ferris State University &#039; was edited', '2017-04-16 19:55:09'),
(129, 1, 'links', 'Aside Link &#039;TechNewsWorld &#039; was edited', '2017-04-16 19:55:20'),
(130, 1, 'links', 'Aside Link &#039;Michigan Cyber Security Initiative (CSI) &#039; was edited', '2017-04-16 19:55:30'),
(131, 1, 'links', 'Aside Link &#039;Michigan Cyber Security Initiative (CSI) &#039; was edited', '2017-04-16 19:56:01'),
(132, 1, 'links', 'Aside Link &#039;Ferris State University &#039; was edited', '2017-04-16 19:56:14'),
(133, 1, 'links', 'Aside Link &#039;ProtectMiChild &#039; was edited', '2017-04-16 19:56:30'),
(134, 1, 'links', 'Aside Link &#039;Homeland Security News Wire &#039; was added', '2017-04-16 19:57:33'),
(135, 1, 'links', 'Aside Link &#039;The Huffington Post &#039; was added', '2017-04-16 20:02:20'),
(136, 1, 'links', 'Aside Link &#039;CNBC &#039; was added', '2017-04-16 20:03:53'),
(137, 1, 'links', 'Aside Link &#039;TechNewsWorld &#039; was edited', '2017-04-16 20:04:48'),
(138, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-16 20:11:18'),
(139, 1, 'headerLayout', 'Updated Header Layout Settings', '2017-04-16 20:13:02');

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
(1, '', '', '200', 'Text to displayed in the Footer section.', 'Text Area 2 Edit');

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
(1, 'Cyber Security', 'images/CS_Logo2_1.png', '100', '', 1, '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`linkID`, `linkName`, `linkURL`, `linkOrder`, `linkTypeID`) VALUES
(1, 'Ferris State University', 'http://www.ferris.edu', 1, 1),
(3, 'ProtectMiChild', 'https://www.protectmichild.com/', 2, 1),
(4, 'FBI - Safe Online Surfing (SOS)', 'https://sos.fbi.gov/', 4, 1),
(5, 'FBI - Child ID App', 'https://www.fbi.gov/scams-and-safety/protecting-your-kids/child-id-app', 5, 1),
(6, 'FBI - National Cyber Security Awareness Month', 'https://www.fbi.gov/news/stories/simple-steps-for-internet-safety', 6, 1),
(7, 'Michigan Cyber Security Initiative (CSI)', 'http://www.michigan.gov/ag/0,4534,7-164-18155_48889---,00.html', 3, 1),
(8, 'TechNewsWorld', 'http://www.technewsworld.com/perl/section/cyber-security/', 10, 2),
(9, 'Homeland Security News Wire', 'http://www.homelandsecuritynewswire.com/topics/cybersecurity', 7, 2),
(10, 'The Huffington Post', 'http://www.huffingtonpost.com/news/cyber-security/', 8, 2),
(11, 'CNBC', 'http://www.cnbc.com/cybersecurity/', 9, 2);

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
  `navigationOrder` int(2) NOT NULL,
  `navButtonColor` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `navButtonSize` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `navigationVisible` tinyint(1) NOT NULL,
  `navJavaScript` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`navigationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigationID`, `navigationName`, `navigationURL`, `navigationLocation`, `navigationOrder`, `navButtonColor`, `navButtonSize`, `navigationVisible`, `navJavaScript`) VALUES
(1, 'Home', 'index.php', 2, 1, '', '', 1, ''),
(5, 'Human Trafficking', 'http://humantrafficking.bulldogcms.com', 2, 4, '', '', 1, ''),
(6, 'Articles', 'index.php?view=catbynavname&navname=Articles', 3, 2, '', '', 1, ''),
(7, 'Resources', 'index.php?view=catbynavname&navname=Resources', 2, 3, '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `roleID` int(10) NOT NULL AUTO_INCREMENT,
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
(1, 'Cyber Security', 'admin@somewhere.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 'UA-92959346-5', '418812939384-rnld9pa7s27cfh74npo80lldhknm6s1q.apps.googleusercontent.com', '142000198', 10);

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
(1, '4E4B47', '4E4B47', '4E4B47', '2C2F30', 'FFC78A', '2C2F30', 'E9CA2C', 'FFE11F', 'E8E8DF', 'EAEBE3', 'FFE11F', 'E9CA2C', 'E9CA2C', '', 'D16D00', 'FFFFFF', 'CFCFC7', 'BABAB3');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `roleID`, `firstName`, `lastName`, `email`, `username`, `password`, `active`, `emailNotification`, `userCreateDate`) VALUES
(1, 2, 'bullDogCMS', 'Admin', 'admin@somewhere.com', 'administrator', '$2y$10$sDkxekTNINoAo63u0wWpFeGmkArxkw5ow61qowW0MSwDVCAPrfaza', 1, 0, '2017-01-05 12:58:26'),
(2, 2, 'Leathel', 'Grody', 'grodyl1@ferris.edu', 'leathel', '$2y$10$XcW7RlrkMC1ZmHChU0ZXpe3Fc4kVo01xWCD1M2bAKXjjLOCdkrFJa', 1, 0, '2017-03-05 16:45:00'),
(3, 2, 'test', 'account', 'none@gmail.com', 'test', '$2y$10$ntzRBMHpRMVIXrZOJQxsbueeWxV.duOXlteT71ndmm95PkDgqkk7u', 1, 0, '2017-03-05 21:50:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
