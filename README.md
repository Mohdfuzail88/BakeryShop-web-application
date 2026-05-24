# 🍞 BakeryShop-web-application

A web-based application designed to digitalize and manage daily bakery shop operations. Customers can browse bakery items online, while the admin can manage the complete inventory and shop details.

---

## 🚀 Features

* **User Panel:** Customers can browse various bakery products like cakes, pastries, and cookies.
* **Admin Dashboard:** Admins can add, update, or delete products, manage UserList, and OrderList.
* **Responsive Design:** Fully responsive UI that works perfectly on mobiles, tablets, and desktops.
* **Secure Database:** Safe and organized data storage for user details, products, and orders.

 ---

## 🛠️ Tech Stack Used

* **Frontend:** HTML, CSS, JavaScript, Bootstrap
* **Backend:** ASP.NET, C#
* **Database:** SQL, Microsoft SQL Server

* ---

## 📁 How to Run the Project

1. **Download the Project:**
   * Click on the green **"Code"** button at the top right of this GitHub page.
   * Select **"Download ZIP"** and extract the files on your computer.
2. **Open in Visual Studio:** Open the `BakeryShop.sln` file in Microsoft Visual Studio.
3. **Database Setup:** 
   * Locate the `database.mdf` file inside your project folder.
   * In Visual Studio, open the **Server Explorer** (on the left side).
   * Right-click on **Data Connections** -> **Add Connection** -> Select **Microsoft SQL Server Database File**.
   * Browse your `database.mdf` file and click **OK**.
   * Right-click on your connected database in Server Explorer and open its **Properties**.
   * Copy the **Connection String** from the properties window.
   * Open the `web.config` file in your project and paste this connection string inside the `<connectionStrings>` tag.
4. **Run the Application:** in Visual Studio or VS Code.
