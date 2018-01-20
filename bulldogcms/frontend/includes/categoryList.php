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

	 	
	    if(isset($_GET['view'])) {
        $view = $_GET['view'];
        } else {
       // $view = '';
        print($view);

    }

   /* switch($view) {
        case 'catbynavid'; //index.php?view=catbynavid&navigationID=#
           listFECatByNavID();
            print($view);
			break;

        case 'catbynavname'; //index.php?view=catbynavname&navname=Something
            //when user clicks into the events page
            listFECatByNavName(); //comment out will take away the white icones when the user clicks on the events -BV
            print($view);
            break;

        case 'indexcategories'; //index.php?view=indexcategories
           // findIndexCategories(); //comment out will will remove the links above events and make this odd. Don't do this  - BV
            print($view);
            break;

        default:  //Shows categories with Navigation marked with Location 3(body)
           findIndexCategories();
            break;
    }*/
    ?>

<h1><a href="index.php">Calendar of Events</a></h1>

<div class ="col-xs-12 col-sm-3">
    <img class="img-responsive img-thumbnail img-rounded artListImage" src="uploads/images/CalendarImage.png" alt="calendar  - just image for now ">
</div>



