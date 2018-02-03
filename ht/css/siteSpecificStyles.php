<?php

//set content-type so the browser interprets it as a css file
header('content-type: text/css; charset: UTF-8');

//Include all non-site specific styles
include "../../bulldogcms/frontend/css/bootstrap.min.php";
?>

<!-- ../../bulldogcms/frontend/css/blog-home.php -->
<?php
include "../../bulldogcms/frontend/css/blog-home.php";
?>

<!-- ../../bulldogcms/frontend/css/heroic-features.php -->
<?php
include "../../bulldogcms/frontend/css/heroic-features.php";
?>

<!-- ../../bulldogcms/frontend/css/styles.php -->
<?php
include "../../bulldogcms/frontend/css/styles.php";
?>


/*Any site specific styles go here*/


/*Quick Exit Styles*/

#quickExit {
position: fixed;
bottom: 0px;
right: 0px;
height: 166px;
width: 245px;
background-color: #d31528;
color: black;
font-weight: bold;
z-index: 3;
border: 3px solid #000000;
padding-right: 20px;
margin-right: -16px;
margin-bottom: 50px;
border-radius: 8px;
}
#quickExit>button {
display: block;
width: 100%;
margin: 0;
font-weight: bolder;
font-size: 1.5em;
}
#quickExit>p>small {
font-size: .6em;
line-height: 2px;
}
#quickExit>p>a {
text-decoration: underline;
}

@media all and (max-width: 1000px) {
#quickExit {
position: fixed;
bottom: 0px;
right: 0px;
left: 0px;
width: 100%;
height: auto;
padding:0px;
background-color: #1a63a3;
color: black;
font-weight: bold;
z-index: 3;
border: 3px solid #000000;
margin: 0;
border-radius: 0;
}
#quickExit>button {
width: 100%;
margin-top: 0;
}
#quickExit>p {
font-size: 1.2em;
margin-bottom: 0.5em;
}
#bottomSpacer {
display: block;
height: 180px;
width: 100%;
}
}



