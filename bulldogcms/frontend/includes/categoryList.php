<!--Displays Categories on Index page if marked for that location based on Navigation location -->
<!-- The global variable is inserting the correct number for the css page to display the correct size if the asides are off -->
<!--Title -->
<!--    <div class="row">-->
<!--        <div class="col-lg-8">-->
<!--            <h3>Resources</h3>-->
<!--        </div>-->
<!--   </div>-->
<!-- /.row -->
<?php
?>
<style type="text/css">
    body {text-align: center;}
    .container.events .row .col-sm-12 .col-sm-6
    .events .col-sm-12, .events .col-sm-6 {margin: 1%;}
    .events .col-sm-12 {width: 98%;}
    .events .col-sm-6 {width: 48%;}
    .container.events .row .col-sm-12 .col-sm-6.short {height: 114px;}
    .bd-grey {border: 1px solid #666;}
    .short {height: 114px;}
    #navlist li
    {
        display: inline;
        list-style-type: none;
        padding-right: 20px;
    }

    @media(max-width: 768px) {
        .events .col-sm-6 {width: 98%;}
        .container.events .row .col-sm-12 .col-sm-6.short, .short {auto;}
    }
	
	@media (max-width: 768px) { #navlist li {display: inline-block; width: 100%;}  
	}

	@media (max-width: 768px) {
	.container.events .row .col-sm-12 .col-sm-6.short, .short {height: auto;}
	}
</style>
<!--On Click go to index.php -->
<h1><a href="index.php">Events</a></h1>
<div class="container events">
    <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-6">
                <!--Left Column/RecentEvents, responsive property will allow image to scale based on screen size -->
                <p>Events Calendar</p>
                <img class="img-responsive img-thumbnail" src="uploads/images/CalendarImage.jpg" alt="calendar  - just image for now ">
            </div>
            <div class="col-sm-6 short">
                <!--Right Column Top /Important Upcoming Events -->
                <img class="img-responsive img-thumbnail" src="uploads/images/ImportantDate.jpeg" alt="important dates ">
                <ul id="navlist">
                    <li><a href="#">Important Date 1</a></li>
                    <li><a href="#">Important Date 2</a></li>
                    <li><a href="#">Important Date 3</a></li>
                </ul>
            </div>
            <div class="col-sm-6 short">
                <!--Right Column Btm /Important Recent Events -->
                <img class="img-responsive img-thumbnail" src="uploads/images/RecentEvents.jpg" alt="Recent Events">
                <ul id="navlist">
                    <li><a href="#">Recent Event 1</a></li>
                    <li><a href="#">Recent Event 2</a></li>
                    <li><a href="#">Recent Event 3</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-6">
                <!--3rd final Row Left Column/Links to Event Information -->
                <p>Event Info</p>
                <img class="img-responsive img-thumbnail" src="uploads/images/EventInfo.jpg" alt="Events Info">
            </div>
            <div class="col-sm-6">
                <div class="col-md-12">
                    <!--3rd final Row Right Column/Write-Ups of Past Events -->
                    <p>Past Events Summary</p>
                    <img class="img-responsive img-thumbnail" src="uploads/images/PastEventSummary.png" alt="Past Events Summary">
                </div>
            </div>

        </div>
    </div>
</div>
<h2><a href="index.php">Articles</a></h2>
<div class="container articles">
    <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-6">
                <!-- Allowllow image to scale based on screen size -Credit to BV-->
                <p>Article 1</p>
                <img class="img-responsive img-thumbnail" src="thumbs/images/william-stitt-162611.jpg" alt="Article_1 face">
            </div>
        </div>
        <div class="col-sm-6 short">
            <!-- Second article section -->
            <p>Article 2</p>
            <img class="img-responsive img-thumbnail" src="thumbs/images/fbicybersurf.jpg" alt="Past Events Summary">
        </div>
    </div>
</div>

