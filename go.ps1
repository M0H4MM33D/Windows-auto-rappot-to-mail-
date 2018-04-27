$x=GET-Date
$t7en = "C:\Users\Administrateur\Desktop\rapport.csv"
$smtpServer = "smtp.gmail.com"
$sender = "EMAIL SERNDER"
$users = "EMAIL RCP";
$subject = "Rapport at $x" 
$body = "By M0H4MM3D"
$message = new-object System.Net.Mail.MailMessage 
$message.From = $sender 
$message.To.Add($users)
$message.IsBodyHtml = $True 
$message.Subject = $Subject 
$attach = new-object Net.Mail.Attachment($t7en) 
$message.Attachments.Add($attach) 
$message.body = $body 
Write-Host "Sending email notification to $user" -ForegroundColor Green
$smtp = New-Object Net.Mail.SmtpClient($smtpServer, 587) 
$smtp.EnableSsl = $true 
$smtp.Credentials = New-Object System.Net.NetworkCredential("USER@gmail.com", "PASSWORD"); 
$smtp.Send($message)
