# Database-Design-for-An-Oversea-Shopper-Company

# One Page Business Proposal   📝

## Summary: 
Propose to improve offering and pricing, build inventory management, increase
customer satisfaction, revenue and profits by implementing a database to support operations
and customer-relationship management.

## Business Needs
1. Purchase prices are too high, making profits too low
2. On-line sales and pricing is arbitrary, preventing increase of revenues
3. No inventory managing, which increase costs and decrease profits
4. Net Present Value and retention rate of customers are not satisfactory 
5. Overseas shipping is slow and the cost is too high, decreasing customer satisfaction and making profits too low 

## Business Requirement
 1. Vendor provides items.
 2. Employees sell items. 
 3. Customer pay for goods.
 4. Company order items.
 5.	Company pays vendor.
 6. Company organizes shipping.
 7. Item prepping for shipping.
 8. Shipping company ships items.
 9. tracking sales
 
 ##  Constraints
  1.  Only having incomplete records from last 8 months
  2.  Development and deployment costs must not exceed $2000
  3.  Must be implemented by July 4th.
 
  ----------------------------
  # UML Diagram
  ![UML_diagram](https://user-images.githubusercontent.com/52415101/95671982-a5644300-0b51-11eb-8524-9e10067cf87c.png)
 ----------------------------

# Logical Database Design

People(PeopleID, FirstName, LastName, WechatID, PhoneNumber, Address_City, Address_Detailed)\
       FirstName NOT NULL\
       LastName  NOT NULL\
       PhoneNumber Unique NOT NULL\
       WechatID Unique  NOT NULL\
       
Consumer(ConsumerID)\
       Foreign key ConsumerID    references  People\
       
Employee(EmployeeID)\
       Foreign Key    EmpolyeeID references People\
         
 Client(ClientID)\
        Foreign Key      ClientID references People\

Sales(SaleID, ClientID, EmployeeID, SKU, , SaleDate,SalePrice)\
        Foreign Key	        ClientID          	   references   	 Client\   
        Foreign Key        EmployeeID    	         references 	   Employee\  
        Foreign Key           SKU  	             	 references    	 Items\    
        SaleDate					   NOT NULL\
        SalePrice	       		 NOT NULL\
   
 Items(SKU,ProductID)\
        Foreign Key        ProductID      references   Product\ 

Shipping (ShippingID, ShippingDate, ShippingCompany, SKU, ShippingCost, ConsumerID, ReceivingDate)\
        Foreign Key          SKU                   references        Items\
        Foreign Key         ConsumerID             references       Consumer\
       
 Products(ProductID, ProductName, Brand, Category)\
        ProductName          NOT NULL
        
        
  Orders( OrderID, SKU, VendorID, OrdeDate, OrderPrice, PaymentMethod, OrderMehod)\
        Foreign key         SKU reference        Items\ 
        Foreign key         VendorID         reference Vendor\ 
        NOT NULL           OrderPrice\

  Vendor(VendorID, VendorName)\
       NOT NULL VendorName\


                       




  
  
  

   
   


