<!-- Navigation -->
<?php include "includes/headerNavigation.php"; ?>

<?php
$bodySettingsQuery = "SELECT * FROM bodySettings WHERE bodySettingID = '1'";
$selectBodySettings = mysqli_query($connection, $bodySettingsQuery);
//Setting variables as GLOBAL so can be used on other pages
while($row = mysqli_fetch_assoc($selectBodySettings)) {
    $bodyHeroic     = $row['bodyHeroic'];
    $bodyText     = $row['bodyText'];
    $bodyView       = $row['bodyView'];
    $fpOrder        =$row['fpOrder'];
    $enableCategories       = $row['fpEnableCategories'];
    //$enableArticles       = $row['fpEnableArticles'];
    $GLOBAL['heroicImage']      = $row['heroicImage'];
    $GLOBAL['heroicHeader']      = $row['heroicHeader'];
    $GLOBAL['heroicText1']      = $row['heroicText1'];
}
//Find out if site is using Heroic image
//if($bodyHeroic ==  '1'){
//include "includes/heroic.php";
//}
?>

<?php
if(isset($_GET['view'])) {
    $view = $_GET['view'];
} else {
    $view = '';
}
switch($view) {
case 'articlelist'; //index.php?view=articlelist
echo "<!-- Page Content --><div class='container'><div class='row'>";
?>
<div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
    <?php
    include "includes/articleList.php";
    break;
    case 'article'; //index.php?view=article&articleID=1
    echo "<!-- Page Content --><div class='container'><div class='row'>";
    ?>
    <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
        <?php
        include "includes/article.php";
        break;
        case 'specialpage'; //index.php?view=specialpage&articleID=1
        echo "<!-- Page Content --><div class='container'><div class='row'>";
        ?>
        <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
            <?php
            include "includes/specialPage.php";
            break;
            //Only showing categories marked for showing up on Index. in navigations.navigationsLocation = 3
            case 'indexcategories'; //index.php?view=indexcategories
            echo "<!-- Page Content --><div class='container'><div class='row'>";
            ?>
            <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
                <?php
                include "includes/categoryList.php";
                break;
                //Show indexcategories and categories per navigationID
                case 'catbynavid'; //index.php?view=catbynavid&navigationID=#
                echo "<!-- Page Content --><div class='container'><div class='row'>";
                ?>
                <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
                    <?php
                    include "includes/categoryList.php";
                    break;
                    case 'catbynavname'; //index.php?view=catbynavname&navname=Something
                    echo "<!-- Page Content --><div class='container'><div class='row'>";
                    ?>
                    <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">
                        <?php
                        include "includes/categoryList.php";
                        break;
                        default:

                        echo "<!-- Page Content --><div class='container'><div class='row'>";
                        //Find out if site is to display body text as well
                        ?>

                        <!--Enclose bodyText, articleList, categoryList, or non in colNumber div-->
                        <div class="col-md-<?php echo $GLOBAL['colNumberForAsideOption']?>">

                            <!-- Bootstrap Calendar -->
                            <div data-provide="calendar" id="calendar" class="calendar" style="overflow: unset !important;"></div>

                            <?php
                            //include $bodyView;  //Find out default setting on homepage(Categories or Articles) in bodySettings.bodyView
                            break;
                            }
                            ?>
                        </div><!--End colNumber div -->
                        <?php include_once("includes/analyticstracking.php") ?>
                        <!-- Sidebar Widgets Column -->
                        <?php include "includes/aside.php"; ?>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
                <?php if(isset($_GET['view'])) {
                    $view = $_GET['view'];
                } else {
                    $view = $bodyView;  //$bodyView won't be used anymore - LG
                }
                if(isset($_GET['display'])) {
                    $display = $_GET['display'];
                } else {
                    $display = null;
                }
                if ($display == null && $view == 'articlelist' || $view == 'includes/articleList.php') { //index.php?view=articlelist
                ?>

<div class="row">
    <div class="col-xs-12">
        <ul class="pager">
            <?php
            session_start();
            $numPages = $_SESSION['numPages'];
            $page = $_SESSION['currentPage'];
            $edges = $_SESSION['edgesLength'];
            if (floor($edges/2) >= ceil($numPages/2) ){
                $edges = ceil($numPages/2);
            }
                if ($numPages > 1) {
                    //Creates a "First Page" button
                    echo "<li><a ";
                    if( $page == 1) {
                        //if on first page, marks "First Page" button as active
                        echo "class='active_link' ";
                    }
                    echo "href='index.php?view=articlelist&page=1'data-toggle='tooltip' title='First Page'><strong><<</strong></a></li>";

                    //creates an ellipses button that will jump backward based on $edges value
                    if ($page-$edges > 1)
                    {
                        $jumpToPage = ceil((2*$page-3*$edges)/2);
                        echo "<li><a href='index.php?view=articlelist&page={$jumpToPage}'data-toggle='tooltip' title='Page {$jumpToPage}'>...</a></li>";
                    }

                    //Creates numbered buttons for each page
                    for ($i = ($page-$edges); $i <= ($page + $edges); $i++) {
                        if($i > 0 && $i <= $numPages) {
                            echo "<li><a ";
                            //if that page is active, marks that button as active
                            if ($i == $page) {
                                echo "class='active_link' ";
                            }
                            echo "href='index.php?view=articlelist&page={$i}'data-toggle='tooltip' title='Page {$i}'>$i</a></li>";
                        }
                    }

                    //creates an ellipses button that will jump forward based on $edges value
                    if ($page+$edges < $numPages)
                    {
                        $jumpToPage = floor((2*$page+3*$edges)/2);
                        echo "<li><a href='index.php?view=articlelist&page={$jumpToPage}'data-toggle='tooltip' title='Page {$jumpToPage}'>...</a></li>";
                    }

                    //Creates "Last Page" button
                    echo "<li><a ";
                    if( $page == $numPages) {
                        //if on last page, marks "Last Page" button as active
                        echo "class='active_link' ";
                    }
                    echo "href='index.php?view=articlelist&page={$numPages}'data-toggle='tooltip' title='Last Page'><strong>>></strong></a></li>";
                }
            }
            ?>
        </ul>
    </div>
</div>
