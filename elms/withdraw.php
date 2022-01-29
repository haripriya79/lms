<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['leaveid'] )){
    $id = $_GET['leaveid'];
    $leavetype = $_GET['leavetype'];
    echo($leavetype);
    $empid=$_SESSION['eid'];
    $totalDays = $_GET['days'];
    echo($totalDays);
    try{
        try{
            $sql="select * from tblleavetype where LeaveType=:leavetype";
            $query = $dbh->prepare($sql);
            $query->bindParam(':leavetype',$leavetype,PDO::PARAM_STR);            
            $query->execute();
            $result=$query->fetch(PDO::FETCH_OBJ);
            $leaveTypeId = "_".$result->id;
                
            $sql="update tbtotalleaves set $leaveTypeId=$leaveTypeId+:Days where empid=:id";
            $query = $dbh->prepare($sql);
            $query->bindParam(':Days',$totalDays,PDO::PARAM_STR);
            $query->bindParam(':id',$empid,PDO::PARAM_STR);
            $query->execute();
            $msg="Leave updated Successfully..";
            $sql="delete from  tblleaves Where id=:eid";
            $query = $dbh->prepare($sql);
           // $query->bindParam(':leavetype',$days,PDO::PARAM_STR);
    
            $query->bindParam(':eid',$id,PDO::PARAM_STR);
              $result =  $query->execute();
    
              header('location:leavehistory.php');
             //$msg="Leave applied successfully";
            }catch(Exception $e){
              
                $error="NOt Successfully";
            }
       
        // echo $msg;
        }catch(Exception $e){
            echo("0");
            //$error = "Something went wrong. Please try again";
           // echo $error;
        }
}

?>