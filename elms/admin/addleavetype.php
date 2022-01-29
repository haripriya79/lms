<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{
if(isset($_POST['add']))
{
$leavetype=$_POST['leavetype'];
$description=$_POST['description'];
$days=$_POST['days'];
$valid=$_POST['valid'];
$upto=$_POST['upto'];
$validUpto = strval($valid)."-".strval($upto);
//echo($validUpto);
$appliedTo=$_POST['appliedTo'];
$sql="INSERT INTO tblleavetype(LeaveType,Description,Leaves,AppliedTo,ValidDays) VALUES(:leavetype,:description,:leaves,:appliedTo,:validDays)";
$query = $dbh->prepare($sql);
$query->bindParam(':leavetype',$leavetype,PDO::PARAM_STR);
$query->bindParam(':description',$description,PDO::PARAM_STR);
$query->bindParam(':leaves',$days,PDO::PARAM_STR);
$query->bindParam(':appliedTo',$appliedTo,PDO::PARAM_STR);
$query->bindParam(':validDays',$validUpto,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{

try{
$appliedTo=$_POST['appliedTo'];
$lastInsertId = "_".$lastInsertId;
$sql="ALTER TABLE tbtotalleaves ADD $lastInsertId INT NOT NULL DEFAULT $days";
$query = $dbh->prepare($sql);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
}catch(Exception $e){
    //echo($e);
}
$msg="Leave type added Successfully";

}
else 
{
$error="Something went wrong. Please try again";
}

}

    ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Title -->
    <title>Admin | Add Leave Type</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="UTF-8">
    <meta name="description" content="Responsive Admin Dashboard Template" />
    <meta name="keywords" content="admin,dashboard" />
    <meta name="author" content="Steelcoders" />

    <!-- Styles -->
    <link type="text/css" rel="stylesheet" href="../assets/plugins/materialize/css/materialize.min.css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="../assets/plugins/material-preloader/css/materialPreloader.min.css" rel="stylesheet">
    <link href="../assets/css/alpha.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/custom.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Bitter:wght@500&family=IBM+Plex+Sans:wght@600&family=Noto+Serif&display=swap" rel="stylesheet">        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

<style>
      .fb{
    font-family: 'Bitter', serif;
}
.fs{
    font-family: 'IBM Plex Sans', sans-serif;
}
    .errorWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #dd3d36;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }

    .succWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #5cb85c;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }
    </style>
</head>

<body>
    <?php include('includes/header.php');?>

    <?php include('includes/sidebar.php');?>
    <main class="mn-inner">
        <div class="row">
            <div class="col s12">
                <div class="page-title">
                    <h4 class="fb">
                    Add Leave Type
                    </h4>
                </div>
            </div>
            <div class="col s12 m12 l6">
                <div class="card">
                    <div class="card-content">

                        <div class="row">
                            <form class="col s12" name="chngpwd" method="post">
                                <?php if($error){?><div class="errorWrap"><strong>ERROR</strong> :
                                    <?php echo htmlentities($error); ?> </div><?php } 
                else if($msg){?><div class="succWrap"><strong>SUCCESS</strong> : <?php echo htmlentities($msg); ?>
                                </div><?php }?>
                                <div class="row">
                                    <div class="input-field col s12 fs">
                                        <input id="leavetype" type="text" class="validate" autocomplete="off"
                                            name="leavetype" required>
                                        <label for="leavetype">Leave Type</label>
                                    </div>


                                    <div class="input-field col s12 fs">
                                        <textarea id="textarea1" type="text" name="description"
                                            class="materialize-textarea" name="description"
                                            length="500"></textarea><label for="deptshortname">Description</label>
                                    </div>
                                    <!--No of days start-->
                                    <div class="input-wrap fs">
                                        <div class="input-field col s6">
                                            <input id="days" name="days" type="text" id="" pattern="^[\d,]+$"
                                                class="validate" min="1" max="30">
                                            <label for="days">No of days</label>

                                        </div>
                                        <div class="input-field col s6 fs"><select name="appliedTo">
                                            <option value="" disabled selected>Choose your option</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="Both">Both</option>

                                        </select>
                                        <label class="fs">Applied To</label>
                                    </div>
                                    </div>


                                    <div class="input-wrap">
                                        <div class="input-field col s6 fs">
                                            <input id="valid" name="valid" type="text" id="" pattern="^[\d,]+$"
                                                class="validate" min="1" max="30">
                                            <label for="valid">Valid for</label>

                                        </div>
                                    </div>
                                    <div class="input-field col s6 fs"><select name="upto">
                                            <option value="" disabled selected>Choose your option</option>
                                            <option value="1">Month</option>
                                            <option value="2">Year</option>

                                        </select>
                                        <label class="fs">Days</label>
                                    </div>
                                    <!--No of days end-->





                                    <div class="input-field col s12">
                                        <button type="submit" name="add"
                                            class="waves-effect waves-light btn indigo m-b-xs">ADD</button>

                                    </div>




                                </div>

                            </form>
                        </div>
                    </div>
                </div>



            </div>

        </div>
    </main>

    </div>
    <div class="left-sidebar-hover"></div>

    <!-- Javascripts -->
    <script src="../assets/plugins/jquery/jquery-2.2.0.min.js"></script>
    <script src="../assets/plugins/materialize/js/materialize.min.js"></script>
    <script src="../assets/plugins/material-preloader/js/materialPreloader.min.js"></script>
    <script src="../assets/plugins/jquery-blockui/jquery.blockui.js"></script>
    <script src="../assets/js/alpha.min.js"></script>
    <script src="../assets/js/pages/form_elements.js"></script>
    <script>
    document.getElementById('period').addEventListener('input', event =>
        event.target.value = (parseInt(event.target.value.replace(/[^\d]+/gi, '')) || 0).toLocaleString('en-US')
    );
    </script>

</body>

</html>
<?php } ?>