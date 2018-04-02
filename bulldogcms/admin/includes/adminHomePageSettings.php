<h1 class="page-header">
    Home Page Settings
</h1>

<!--Add Category Form-->
<div class ="col-xs-12">
    <form action ="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <table class = "table table-hover">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <?php

                $settingsQuery = "SELECT * FROM bodySettings WHERE bodySettingID = '1'";
                $selectSettings = mysqli_query($connection,$settingsQuery);

                confirmQuery($selectSettings);

                while($row = mysqli_fetch_assoc($selectSettings))
                {
                $bodyHeroic     = $row['bodyHeroic'];
                $bodyView       = $row['bodyView'];
                $heroicImage      = $row['heroicImage'];
                $heroicImage1      = $row['heroicImage1'];
                $heroicImage2      = $row['heroicImage2'];
                // escaped for display purposes, will be descaped lower before getting put into the database
                $heroicHeader      = htmlentities($row['heroicHeader'], ENT_QUOTES, 'UTF-8');
                $heroicHeader1      = htmlentities($row['heroicHeader1'], ENT_QUOTES, 'UTF-8');
                $heroicHeader2      = htmlentities($row['heroicHeader2'], ENT_QUOTES, 'UTF-8');
                // escaped for display purposes, will be descaped lower before getting put into the database
                $heroicText1      = htmlentities($row['heroicText1'], ENT_QUOTES, 'UTF-8');
                $heroicText2      = htmlentities($row['heroicText2'], ENT_QUOTES, 'UTF-8');
                $heroicText3      = htmlentities($row['heroicText3'], ENT_QUOTES, 'UTF-8');

                $bodyText     = $row['bodyText'];
                $bodyContent    =htmlentities($row['bodyContent'], ENT_QUOTES, 'UTF-8');// escaped for display purposes. editor takes care of unescaping html wise.
                $fpPagLength    = $row['fpPagLength'];
                $fpEnableCategories    = $row['fpEnableCategories'];
                $fpEnableArticles    = $row['fpEnableArticles'];
                $fpOrder    = $row['fpOrder'];

                if (isset($_POST['imageRemove']) == 'remove') {
                    $heroicImage = "";
                }

                echo "<tr>";
                echo "<td><b>Enable Site Heroic</b></td>";
                ?>
                <!--Yes No code from here: https://www.w3schools.com/php/php_form_complete.asp-->
                <td>
                    <input type="radio" name="bodyHeroic"
                        <?php if (isset($bodyHeroic) && $bodyHeroic=="1") echo "checked";?>
                           value="1">Yes
                    <input type="radio" name="bodyHeroic"
                        <?php if (isset($bodyHeroic) && $bodyHeroic=="0") echo "checked";?>
                           value="0">No
                </td>
                <?php
                echo "<td>This enables the heroic image on front page</td>";
                echo "</tr>";


                //Here is the first heroic image
                echo "<tr>";
                echo "<td><b>Heroic Image</b></td>";
                ?>
                <!-- Need to add image uploading option.  Look at articles -->
                <td>                        <p>Current Image:</p>
                    <?php
                    echo "<img width='100' src='../uploads/{$heroicImage}'>";
                    ?>
                    <!--Using Responsive Filemanager: http://www.responsivefilemanager.com/  -->
                    <p>Upload New Image:</p>
                    <input class="form-control" id="heroicDBImage" type="text" name="heroicDBImage">
                    <a href="filemanager/dialog.php?type=1&field_id=heroicDBImage&relative_url=1&fldr=images" class="btn btn-filemanager btn iframe-btn" type="button" data-toggle="tooltip" title="Choose image">Choose image</a>
                    <!--<input class="filestyle" type="file" name="heroicDBImage" id="heroicDBImage" accept="image/*">-->
                    <div>
                        <input type="checkbox" name="imageRemove" value="remove"> Remove Image?<br>
                    </div>

                </td>
                <?php
                echo "<td>Choose heroic image to use</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Image Header Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicHeader)) {echo $heroicHeader;} ?>" type = "text" class = "form-control" name="heroicHeader"></td>
                <?php
                echo "<td>Header text over heroic image</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Sub-Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicText1)) {echo $heroicText1;} ?>" type = "text" class = "form-control" name="heroicText1"></td>
                <?php
                echo "<td>Header sub-text</td>";
                echo "</tr>";





                //Here is the second heroic image and options
                echo "<tr>";
                echo "<td><b>Heroic Image (2)</b></td>";
                ?>
                <!-- Need to add image uploading option.  Look at articles -->
                <td>                        <p>Current Image:</p>
                    <?php
                    echo "<img width='100' src='../uploads/{$heroicImage1}'>";
                    ?>
                    <!--Using Responsive Filemanager: http://www.responsivefilemanager.com/  -->
                    <p>Upload New Image:</p>
                    <input class="form-control" id="heroicDBImage1" type="text" name="heroicDBImage1">
                    <a href="filemanager/dialog.php?type=1&field_id=heroicDBImage1&relative_url=1&fldr=images" class="btn btn-filemanager btn iframe-btn" type="button" data-toggle="tooltip" title="Choose image">Choose image</a>
                    <!--<input class="filestyle" type="file" name="heroicDBImage" id="heroicDBImage" accept="image/*">-->
                    <div>
                        <input type="checkbox" name="imageRemove" value="remove"> Remove Image?<br>
                    </div>

                </td>
                <?php
                echo "<td>Choose heroic image to use</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Image Header Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicHeader1)) {echo $heroicHeader1;} ?>" type = "text" class = "form-control" name="heroicHeader1"></td>
                <?php
                echo "<td>Header text over heroic image</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Sub-Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicText2)) {echo $heroicText2;} ?>" type = "text" class = "form-control" name="heroicText2"></td>
                <?php
                echo "<td>Header sub-text</td>";
                echo "</tr>";





                //Here is the third heroic image and options
                echo "<tr>";
                echo "<td><b>Heroic Image (3)</b></td>";
                ?>
                <!-- Need to add image uploading option.  Look at articles -->
                <td>                        <p>Current Image:</p>
                    <?php
                    echo "<img width='100' src='../uploads/{$heroicImage2}'>";
                    ?>
                    <!--Using Responsive Filemanager: http://www.responsivefilemanager.com/  -->
                    <p>Upload New Image:</p>
                    <input class="form-control" id="heroicDBImage2" type="text" name="heroicDBImage2">
                    <a href="filemanager/dialog.php?type=1&field_id=heroicDBImage2&relative_url=1&fldr=images" class="btn btn-filemanager btn iframe-btn" type="button" data-toggle="tooltip" title="Choose image">Choose image</a>
                    <!--<input class="filestyle" type="file" name="heroicDBImage" id="heroicDBImage" accept="image/*">-->
                    <div>
                        <input type="checkbox" name="imageRemove" value="remove"> Remove Image?<br>
                    </div>

                </td>
                <?php
                echo "<td>Choose heroic image to use</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Image Header Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicHeader2)) {echo $heroicHeader2;} ?>" type = "text" class = "form-control" name="heroicHeader2"></td>
                <?php
                echo "<td>Header text over heroic image</td>";
                echo "</tr>";
                echo "<tr>";
                echo "<td><b>Heroic Sub-Text</b></td>";
                ?>
                <td><input value = "<?php if(isset($heroicText3)) {echo $heroicText3;} ?>" type = "text" class = "form-control" name="heroicText3"></td>
                <?php
                echo "<td>Header sub-text</td>";
                echo "</tr>";












                //          Pagination Length:
                echo "<tr>";
                echo "<td><b>Articles on Home Page</b></td>";
                ?>
                <td><input value = "<?php if(isset($fpPagLength)) {echo $fpPagLength;} ?>" type = "number" class = "form-control" name="fpPagLength" min="1" required></td>
                <?php
                echo "<td>This value controls pagination by limiting the number of articles displayed on the homepage.</td>";
                echo "</tr>";
                ?>
                <tr>
                    <td><b>Home Page Articles</b></td>
                    <td>
                        <input type="radio" name="fpEnableArticles"
                            <?php if (isset($fpEnableArticles) && $fpEnableArticles=="1") echo "checked";?>
                               value="1">Yes
                        <input type="radio" name="fpEnableArticles"
                            <?php if (isset($fpEnableArticles) && $fpEnableArticles=="0") echo "checked";?>
                               value="0">No
                    </td>
                    <td>This enables articles on front page</td>
                </tr>
                <tr>
                    <td><b>Home Page Categories</b></td>
                    <td>
                        <input type="radio" name="fpEnableCategories"
                            <?php if (isset($fpEnableCategories) && $fpEnableCategories=="1") echo "checked";?>
                               value="1">Yes
                        <input type="radio" name="fpEnableCategories"
                            <?php if (isset($fpEnableCategories) && $fpEnableCategories=="0") echo "checked";?>
                               value="0">No
                    </td>
                    <td>This enables categories on front page</td>
                </tr>
                <tr>
                    <td><b>Categories/Articles ordering</b></td>
                    <td>
                        <input type="radio" name="fpOrder"
                            <?php if (isset($fpOrder) && $fpOrder=="1") echo "checked";?>
                               value="1">Articles first
                        <input type="radio" name="fpOrder"
                            <?php if (isset($fpOrder) && $fpOrder=="0") echo "checked";?>
                               value="0">Categories first
                    </td>
                    <td>This sets the ordering of Categories and Articles if both are enabled.</td>
                </tr>
                <tr>
                    <td><b>Home Page Text</b></td>
                    <td>
                        <input type="radio" name="bodyText"
                            <?php if (isset($bodyText) && $bodyText=="1") echo "checked";?>
                               value="1">Yes
                        <input type="radio" name="bodyText"
                            <?php if (isset($bodyText) && $bodyText=="0") echo "checked";?>
                               value="0">No
                    </td>
                    <td>This enables body text on front page that is setup below</td>
                </tr>
                </tbody>
            </table>
            <div class="form-group col-xs-12">
                <label for="bodyContent">Home Page Text</label>

                <textarea class="editor form-control" name="bodyContent" id="bodyContent" rows="5"><?php echo "{$bodyContent}"; ?></textarea>

            </div>
            <?php
            }
            ?>
            <?php
            if(isset($_POST['updatesettings'])) {
                $bodyHeroic = $_POST['bodyHeroic'];
                $bodyText = $_POST['bodyText'];
                //$heroicImage = $_POST['heroicImage'];
                $bodyView = $_POST['bodyView'];
                $heroicHeader = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicHeader'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query
                $heroicHeader1 = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicHeader1'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query
                $heroicHeader2 = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicHeader2'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query

                $heroicText1 = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicText1'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query
                $heroicText2 = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicText2'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query
                $heroicText3 = mysqli_real_escape_string($connection, html_entity_decode($_POST['heroicText3'], ENT_QUOTES, 'UTF-8'));//un-escaped html wise and then escaped sql wise for query
                $bodyContent = mysqli_real_escape_string($connection, $_POST['bodyContent']);
                $fpEnableCategories = $_POST['fpEnableCategories'];
                $fpEnableArticles = $_POST['fpEnableArticles'];
                $fpOrder = $_POST['fpOrder'];
                $fpPagLength = $_POST['fpPagLength'];

                $heroicDBImage = $_POST['heroicDBImage'];//File in database..
                //$heroicDBImage = $_FILES['heroicDBImage']['name'];//File in database..
                //$heroicImageUpload = $_FILES['heroicDBImage']['tmp_name']; //for uploading to image directory

                $heroicDBImage1 = $_POST['heroicDBImage1'];//File in database..
                //$heroicDBImage1 = $_FILES['heroicDBImage1']['name'];//File in database..
                //$heroicImage1Upload = $_FILES['heroicDBImage1']['tmp_name']; //for uploading to image directory

                $heroicDBImage2 = $_POST['heroicDBImage2'];//File in database..
                //$heroicDBImage2 = $_FILES['heroicDBImage2']['name'];//File in database..
                //$heroicImageUpload2 = $_FILES['heroicDBImage2']['tmp_name']; //for uploading to image directory

                if (!empty($heroicDBImage)) {
                    $heroicImage = $heroicDBImage;
                }

                if (!empty($heroicDBImage1)) {
                    $heroicImage1 = $heroicDBImage1;
                }

                if (!empty($heroicDBImage2)) {
                    $heroicImage2 = $heroicDBImage2;
                }
                //Upload image to images folder
                //move_uploaded_file($heroicImageUpload, "../images/$heroicImage"); //Possibly add image renaming.

                //Need to check if any fields blank and post error before actually doing Update
                $query = "UPDATE bodySettings SET bodyHeroic = '{$bodyHeroic}', heroicImage = '{$heroicImage}', heroicImage1 = '{$heroicImage1}', heroicImage2 = '{$heroicImage2}', bodyView = '{$bodyView}', ";

                $query .= "heroicHeader = '{$heroicHeader}', heroicHeader1 = '{$heroicHeader1}', heroicHeader2 = '{$heroicHeader2}',  heroicText1 = '{$heroicText1}', heroicText2 = '{$heroicText2}', heroicText3 = '{$heroicText3}', bodyText = '{$bodyText}', bodyContent = '{$bodyContent}', ";

                $query .= "fpPagLength = '{$fpPagLength}', fpEnableCategories = '{$fpEnableCategories}', fpEnableArticles = '{$fpEnableArticles}', fpOrder = '{$fpOrder}' WHERE bodySettingID = '1'";
                $query = mysqli_real_escape_string($connection, $query);
                $updateQuery = mysqli_query($connection, $query);

                confirmQuery($updateQuery);

                $changedTable = "bodySettings";
                $changeDetails = "Site homepage settings were updated.";

                insertChangeLog($_SESSION['userID'], $changedTable, $changeDetails);

                mysqli_close($connection);

                ?>
                <script type="text/javascript">
                    window.location = "index.php?view=hpsettings";   //Refreshes page
                    window.alert("Homepage Settings updated successfully.");
                </script>
                <?php
            }
            ?>


        </div>
        <div class="form-group">
            <input class = "btn btn-primary" type="submit" name="updatesettings" value="Update Settings" data-toggle="tooltip" title="Update Settings">
        </div>
    </form>
</div>
