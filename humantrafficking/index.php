<!-- Some Site Index details under site folder so they have some control to do more if they wanted -->
<?php  include "includes/db.php"; ?>

<!-- Header -->
<?php include "../bulldogcms/frontend/includes/headerBegin.php"; ?>
<?php include "includes/headerMiddle.php"; ?>
<?php include "../bulldogcms/frontend/includes/headerEnd.php"; ?>

<!-- Page Content Index from CMS folder -->
<?php include "../bulldogcms/frontend/index.php"; ?>

<!--Here is our quick exit button-->
<div class="thumbnail" id="quickExit">
    <button type="button" class="btn btn-danger" onclick="quickExit()" data-toggle="tooltip" data-html="true"
            title="<p>The Quick Exit Button allows you to quickly exit this site<br>and prevent navigation back to it. It works by flooding your browser history and sending you to www.google.com</p>">
        <span class="glyphicon glyphicon-exclamation-sign"></span> Click To Exit</button><br>

    <p class="text-center">Click Below For Help<br></p>

    <button type="button" class="btn btn-info" data-toggle="popover" title="National Human Trafficking Resource Center" data-placement="left" data-html="true"
            data-content="<h3>Call: 1-800-373-7888</h3>
            <h3>Or</h3>
            <h3>Text &quotinfo&quot or &quothelp&quot to 233733</h3>">

        <span class="glyphicon glyphicon-info-sign"></span> Get Help</button>
</div>

<!-- Footer -->
<?php include "../bulldogcms/frontend/includes/footerBegin.php"; ?>
<?php include "includes/footerMiddle.php"; ?>
<?php include "../bulldogcms/frontend/includes/footerEnd.php"; ?>
