![OFR](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/e261ba93-bcc1-4594-9fe4-ce48ca90b4ab)
# Oracle Forms and Reports

Here I will share with you a personal project that I created to demonstrate my skills in Oracle Forms and Reports.
The project consists of a reduced version of a sales system that I will call SalesPower here.
At SalesPower it is possible:
- log in
- register users
- register customers
- register products
- make a sale
- print a receipt for a sale
- print a customer report

# Below is an overview of Forms
Below is an overview of the forms available in this project.
![salespowerfont](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/822e7426-aca8-47ad-a4aa-e533cf88056c)

# Login
The first screen we have in the system is the login screen, where the user and password are validated, and if the user is not found or the password is invalid, an error message will be returned and if successful, the user will have access to system main menu screen.
![ofr_login](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/d1e674c4-1d45-4cd6-b08d-bae75f5141e7)

# Main Menu
After logging in, the user will be taken to the main menu screen where they will have easy access to all system resources.
![ofr_mainmenu](https://github.com/marciodesouzateixeira/Oracle/assets/44147082/c68880f3-6fe3-4b75-a082-102c445c492e)
<img src="https://github.com/marciodesouzateixeira/Oracle/assets/44147082/c68880f3-6fe3-4b75-a082-102c445c492e" width=50% height=50%>

# Users
On the user registration screen we have the features listed below:
1. We have a text box to search for the User using ID, if you don't know the User ID you can click on the button that has 3 dots and it will open a screen to search for all registered users
2. We have the option to clear all fields on the screen
3. After entering a User code or performing a User search, you can consult all User data
4. Option to Exit Screen
5. Option to add a new User
6. Option to update a User
7. Option to delete a User
8. When adding or changing a User, the system will always ask to confirm the User's password
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_users.png?raw=true" width=50% height=50%>

# Search User
To find a user you must follow the following steps:
1. Perform a search by clicking the button with 3 dots, which will open a screen with all registered users.
2. You can search by name in the "Find" text box
3. Then you need to click on the "Find" button
4. Finally click on the "OK" button to return to the previous screen with the selected user
5. If you want to cancel the search, just click the "Cancel" button
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_users_2.png?raw=true" width=50% height=50%>

# User update
To update a user you first need to follow the steps below:
1. Inform the User, manually or by searching for it.
2. Click on Search to load all User fields.
3. Confirm your password
4. Click on the "Update" button
5. If everything is ok, the message that the update was successful will be displayed!
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_users_3.png?raw=true" width=50% height=50%>

# Product Registration
In the product registration functionality you have the same resources as in the user registration and in addition we have the following resources:
1. Search for the category similar to the product search.
2. The value fields are formatted on the right and with decimal points.
3. And for the Weight Type and Dimension Type fields, there is a list with fixed values to choose from.
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_products_1.png?raw=true" width=50% height=50%>

# Customer base
In the customer registration functionality you have the same resources as in the user registration and in addition we have the following resources:
1. Being able to select the Genre through a list of values, LOV.
2. Enter a picture, for this you need to have a folder "C:\SalesPower\Images".
3. Display this picture.
4. Report Option
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_customers_1.png?raw=true" width=50% height=50%>
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_customers_2.png?raw=true" width=50% height=50%>

# Customer Report
To generate a Customer report, we have two filter options, in addition to the options to clear the filters and exit the report screen:
1. If you want to choose a specific customer, simply choose the customer using the button with 3 dots.
2. It is also possible to generate a report according to male or female gender.
3. After entering the cli filters, click the Report button.
4. Note: if you do not enter any filter, all customers will be displayed in the report.
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_customers_3.png?raw=true" width=50% height=50%>
Below is a report, where no filter was provided.
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_customers_4.png?raw=true" width=50% height=50%>
Below is a report, where the gender filter was informed.
<img src="https://github.com/marciodesouzateixeira/Oracle/blob/main/Forms%20and%20Reports/assets/ofr_customers_5.png?raw=true" width=50% height=50%>
