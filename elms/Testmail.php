<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require_once("email/PHPMailer.php");
require_once("email/SMTP.php");
require_once("email/Exception.php");
$mail = new PHPMailer();
$mail->isSMTP();
$mail->SMTPDebug = 0;
$mail->Host = 'smtp.gmail.com';
$mail->Port = 465;
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
$mail->SMTPAuth = true;
$mail->Username = 'himashankar98@gmail.com';
$mail->Password = 'Shankar@8985';
$mail->setFrom($mail->Username, 'First Last');
$mail->addReplyTo($mail->Username, 'First Last');
$mail->addAddress('himashankar98@gmail.com', 'Anil Kumar');
$mail->Subject = 'PHPMailer GMail SMTP test';
$mail->Body = "Dear Anil Sir"; 
$mail->AltBody = 'This is a plain-text message body';
if (!$mail->send()) {
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message sent!';
   
}

