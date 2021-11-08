# Food Delivery App
Food Delivery app is Mobile Application Built Using flutter sdk  To Provide  online Food Ordering to Resturants also help users to order there favorites foods online


#### Application Architecture









![alt text](https://github.com/mostafaemara/food_delivery/blob/main/food_delivery_app_arc.png?raw=true)

#####   App Has three main layers

##### Domain Layer
Domain Layer is the core of the application it contains  business Logics and interfaces for data layer and presentation layer following the dependency rule.




domain Layer has 4 main components
 - Entities:  
critical business logic  data structure such as meal,address,order,meal category
 - Failures:
 -  Types of failures 
 - Repositories: 
 interfaces of repositories
 - Validators:  
   Form fields validators functions returns valitation failure types so that the presentation layer decide the way to present it to user for example show the failure messege in arabic/english language
   
   
   
![alt text](https://github.com/mostafaemara/food_delivery/blob/main/domain%20layer.png)


##### Data Layer
Data Layer Consist of 3 main components
 - Repositories
 the implementation of the repositories interfaces
 - Models
 Data models extends entities with functions help mapping data coming from data sources to entities
 - Mappers
 another mapping solutaion to help map data to and from entities
 
 ![alt text](https://github.com/mostafaemara/food_delivery/blob/main/Data%20Layer.png)
 
