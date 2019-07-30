# CRUD operations on CRM database - Spring MVC

Web application powered by Java, Spring, Hibernate that allows users to perform CRUD operations on a CRM database. Application performs CRUD(Create, Read, Delete, Update) operations on database with the help of hibernate and uses Spring MVC to display views. Hibernate Validator is used for form validation.

# How to use it? 

1.Execute the sql scripts provided in the repository. 
   - create-user.sql : Creates a new user for you to create your schema and to access it.
   - customer-crud-demo.sql : Creates the database for CRM.

2.Use Apache Tomcat(or similar) as a server for the Java source code and run the web application on it.

3.If you used your own sql scripts, update the database information in persistence-mysql.properties in src/main/resources

4.The application will show the list of customer information stored in the database. 
![1](https://user-images.githubusercontent.com/16450711/62141165-c56f6400-b309-11e9-87bb-904f3fdc2181.PNG)

5.Here you can either add a new customer, delete a customer or update a customer information.

![2](https://user-images.githubusercontent.com/16450711/62141167-c56f6400-b309-11e9-9200-ddaa02da133c.PNG)
![3](https://user-images.githubusercontent.com/16450711/62141169-c607fa80-b309-11e9-89f7-74fe5fd9e880.PNG)
