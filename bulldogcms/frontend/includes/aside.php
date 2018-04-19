<!-- Get site settings from database -->
<?php //This code gets the site settings from the global variables initialized in headerbegin.php -Micah


$enableSideWidget =   $GLOBAL['enableSideWidget'];
$enableLinks = $GLOBAL['enableLinks'];
$enableNews = $GLOBAL['enableNews'];
$enableEvents = $GLOBAL['enableEvents'];
$siteSearch = $GLOBAL['siteSearch'];
$enableLatestArticles = $GLOBAL['enableLatestArticles'];
$asideAnyEnabled = ($enableSideWidget OR $enableLinks OR $siteSearch OR $enableNews OR $enableEvents OR $enableLatestArticles);

// If any of these variables are 1 then that aside option will show on the website. -Micah
// If any of these variables are 0 then that aside option will be passed over on the website. -Micah
?>


<!--Include the above in your HEAD tag-->

<div id="wrapper" class="new-aside">
    <div class="overlay"></div>

    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <h4><?php if(isset($asideHeader)) {echo $asideHeader;} ?></h4>
            </li>


            <!-- Latest Articles -->
            <?php IF ($enableLatestArticles) : ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> Latest Articles <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li> <?php latestArticles(); ?> </li>
                    </ul>
                </li>
            <?php ENDIF; ?>


            <!--Events-->
            <?php IF ($enableEvents) : ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> Events <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li> <?php listEvents(); ?> </li>
                    </ul>
                </li>
            <?php ENDIF; ?>


            <!--News-->
            <?php IF ($enableNews) : ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> News <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li> <?php listNews(); ?> </li>
                    </ul>
                </li>
            <?php ENDIF; ?>


            <!--Links-->
            <?php IF ($enableLinks) : ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> Links <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li> <?php listLinks(); ?> </li>
                    </ul>
                </li>
            <?php ENDIF; ?>




        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->





    <!-- Page Content -->
    <div id="page-content-wrapper">
        <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
        </button>

    </div>
    <!-- /#page-content-wrapper -->
</div>
<!-- /#wrapper -->