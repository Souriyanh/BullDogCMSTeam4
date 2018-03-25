
<div class="hero">
    <header>
        <!--Hero text code:  https://codepen.io/mrnathan8/pen/KwKdmO -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <?php if(isset($GLOBAL['heroicImage']) && $GLOBAL['heroicImage'] != ''){
                        ?>
                        <img class="img-responsive" src="uploads/<?php echo $GLOBAL['heroicImage'] ?>" alt="heroic">
                    <?php } ?>
                    <div class="carousel-caption">
                        <h1><?php if(isset($GLOBAL['heroicHeader'])) {echo $GLOBAL['heroicHeader'];} ?></h1>
                        <p><?php if(isset($GLOBAL['heroicText1'])) {echo $GLOBAL['heroicText1'];} ?></p>
                    </div>
                </div>

                <div class="item">
                    <?php if(isset($GLOBAL['heroicImage1']) && $GLOBAL['heroicImage1'] != ''){
                        ?>
                        <img class="img-responsive" src="uploads/<?php echo $GLOBAL['heroicImage1'] ?>" alt="heroic">
                    <?php } ?>
                    <div class="carousel-caption">
                        <h1><?php if(isset($GLOBAL['heroicHeader1'])) {echo $GLOBAL['heroicHeader1'];} ?></h1>
                        <p><?php if(isset($GLOBAL['heroicText2'])) {echo $GLOBAL['heroicText2'];} ?></p>
                    </div>
                </div>

                <div class="item">
                    <?php if(isset($GLOBAL['heroicImage2']) && $GLOBAL['heroicImage2'] != ''){
                        ?>
                        <img class="img-responsive" src="uploads/<?php echo $GLOBAL['heroicImage2'] ?>" alt="heroic">
                    <?php } ?>
                    <div class="carousel-caption">
                        <h1><?php if(isset($GLOBAL['heroicHeader2'])) {echo $GLOBAL['heroicHeader2'];} ?></h1>
                        <p><?php if(isset($GLOBAL['heroicText3'])) {echo $GLOBAL['heroicText3'];} ?></p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </header>
</div><!--hero-->