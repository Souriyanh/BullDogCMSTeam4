<!-- Some Site Index details under site folder so they have some control to do more if they wanted -->
<?php  include "includes/db.php"; ?>

<!-- Header -->
<?php include "../bulldogcms/frontend/includes/headerBegin.php"; ?>
<?php include "includes/headerMiddle.php"; ?>
<?php include "../bulldogcms/frontend/includes/headerEnd.php"; ?>

<!-- Page Content Index from CMS folder -->
<?php include "../bulldogcms/frontend/index.php"; ?>

<div class="thumbnail" id="quickExit">
    <p class="text-center"><span class="glyphicon glyphicon-info-sign"></span>Need Help?<br>
        <button type="button" class="btn btn-danger" onclick="quickExit()" data-toggle="tooltip" data-html="true"
                title="<p>The Quick Exit Button allows you to quickly exit this site<br>and prevent navigation back to it. It works by flooding your browser history and sending you to www.google.com</p>">
            <span class="glyphicon glyphicon-alert"></span> Quick Exit</button>
    <p><span class="glyphicon glyphicon-earphone"></span></p><a href="tel:+18883737888">1-800-373-7888</a><br>
    Or text "help" or "info" to <a href="sms:233733">233733</a></p>
</div>

<!-- Footer -->
<?php include "../bulldogcms/frontend/includes/footerBegin.php"; ?>
<?php include "includes/footerMiddle.php"; ?>
<?php include "../bulldogcms/frontend/includes/footerEnd.php"; ?>