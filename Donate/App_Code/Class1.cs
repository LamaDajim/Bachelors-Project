using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;

namespace ClassLibrary1
{
    public class SendMail
    {
       public static string send(string email, string title, string message)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("xxkhkh11@gmail.com");
                mail.To.Add(email);
                mail.Subject = title;
                mail.Body = message;
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587 );//587);
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new System.Net.NetworkCredential("xxkhkh11@gmail.com", "xx_12345");
                smtp.Timeout = 20000;
                smtp.Send(mail);
                return "yes sent";
            }
            catch (Exception e1) { return e1.Message; }
        }
        
        
    }
}
