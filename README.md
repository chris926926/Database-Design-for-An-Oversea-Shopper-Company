# Database-Design-for-An-Oversea-Shopper-Company

# One Page Business Proposal   📝

## Summary: 
Team Voltaire propose to improve offering and pricing, build sales and inventory tracking system management, increase customer satisfaction, revenue and profits by integrating all records of sales, vendors, products, customers and employees into a database and use structured query language  to communicate with database for supporting operations and  improving profit.


## Business Needs
1. Purchase prices are too high, making profits too low
2. On-line sales and pricing is arbitrary, preventing increase of revenues
3. No inventory managing, which increase costs and decrease profits
4. Net Present Value and retention rate of customers are not satisfactory 
5. Overseas shipping is slow and the cost is too high, decreasing customer satisfaction and making profits too low 

## Business Requirement
1. Merchandise purchases
2. Online sales and pricing
3. Inventory management
4. Customer-relationship management
5. Overseas shipping

 
 ## Business Values
1. More scientific good offering and pricing promote more sales, increasing revenue and profits.
2. By lowering purchase prices, Mo’s company can improve profits increase, further can offer lower sale price and increase revenue.
3. By analysis what categories or products are the best sellers, Mo’s company pre-order items that sell best and reduce the lean time which can promote customer experience and further increase revenue.
4. By creating a database to track & manage inventory, this will decrease cost and show analysis to improve areas where profits can be increased. Creating a database to track manage inventory has little cost associated there but will yield much future profit.  This database will also reduce inventory loss, increasing revenue.
5. By using domestic warehouse companies, this will decrease the overseas shipping, that reduces cost, ship faster, reaches the customer quicker, reducing the receiving time. This will increase customer satisfaction & loyalty, which will increase sales, thereby increasing inventory turnover, reducing warehouse costs, increasing overall profits.

 ##  Constraints
  1.  Only having incomplete records from last 8 months
  2.  Development and deployment costs must not exceed $2000
  3.  Must be implemented by July 4th.
 
  ----------------------------
  # UML Diagram
  ![UML_diagram](https://user-images.githubusercontent.com/52415101/95673240-cd58a400-0b5b-11eb-9169-6965a6259ea0.png)
 ----------------------------

# Logical Database Design

People (<ins>PeopleID</ins>, WeChatID, LastName, FirstName, Phone_Number, Address_Province, Address_City, Address_Detailed)   
	   WeChatID  UNIQUE NOT NULL  
   	LastName   NOT NULL  
   	FirstName	 NOT NULL  

Consumer(<ins>ConsumerID</ins>)  
     Foreign key ConsumerID	references People(PeopleID)  

Employee(<ins>EmployeeID</ins>)  
     Foreign Key EmpolyeeID 	references People(PeopleID)  

Client(<ins>ClientID</ins>)  
     Foreign Key ClientID  references People(PeopleID)  

Sales(<ins>SaleID</ins>, SaleDate, ClientID, EmployeeID,SKU, SalePrice)  
     Foreign Key   	ClientID	references	Client(ClientID)  
     Foreign Key  	EmployeeID	references	Employee(EmployeeID)  
    	Foreign Key   SKU		references	Items(SKU)    
      SaleDate         	NOT NULL  
      SalePrice        	NOT NULL  
    	   SKU             NOT NULL  

Items (<ins>SKU</ins>,ProductID)  
      Foreign Key  	ProductID	references	Products(ProductID)        
       ProductID         NOT NULL     	
 
Shipping (<ins>ShippingID</ins>, ShipDate, ShippingCompany, SKU, FreightCost, ConsumerID, ReceivingDate)  
      Foreign Key		SKU  references 	Items(SKU)  
      Foreign Key		ConsumerID  references Consumer(ConsumerID)  
      ShipDate			   NOT NULL  
     FreightCost			NOT NULL  
                   	
Products (<ins>ProductID</ins>, ProductName, Brand, Category)  
       ProductName NOT NULL   

Orders (<ins>OrderID</ins>, SKU, VendorID, OrdeDate, OrderPrice, PaymentMethod, OrderMehod)    
      Foreign key 	SKU 		reference  	Items(SKU)  
      Foreign key 	VendorID 	reference 	Vendor	(VendorID)  
      OrderPrice      NOT  NULL  
      ProductID       NOT  NULL  
      OrderDate       NOT  NULL  
      VendorID        NOT  NULL      	

Vendor(<ins>VendorID</ins>, VendorName)  
      VendorName   NOT  NULL    

  
  
  

   
   


