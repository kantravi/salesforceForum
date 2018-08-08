public with sharing class showOpptyaddress {

ApexPages.StandardSetController setCon;
        public ApexPages.StandardSetController oppsList {get; private set;}
        public ApexPages.StandardSetController customobjectList {get; private set;}
       
          public showOpptyaddress ()
           {
   
           }
         public showOpptyaddress (ApexPages.StandardSetController controller)
         {
             customobjectList = new ApexPages.StandardSetController
                (Database.getQueryLocator([
                Select Name,Id from Opportunity
               ]));
             
                   //Opportuities List
             oppsList = new ApexPages.StandardSetController
              (Database.getQueryLocator([
                Select o.id, o.Name, o.Account.Id, o.Account.Name
                From Opportunity o
              ]));
          }
}