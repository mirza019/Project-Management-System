# Project-Management-System

This project demonstrates a prototype of a **Workforce and Project Management System** built using **SQL**, **SharePoint**, **Power Automate**, and **Power Apps**. The system allows users to manage employees, projects, and tasks with seamless automation and interaction between cloud services.

---

## 🚧 **Work in Progress**

### **Important Note**
This project is currently a **prototype** and is under continuous development. It has been created for **learning purposes**, with a focus on:
- **Exploring Automation** using Power Automate and Power Apps.
- **Enhancing Efficiency** through dynamic database operations.
- **Adding Extra Features** for a more robust and user-friendly system.

I am actively working to improve the application by adding:
- Advanced automation workflows.
- Additional features for task and project management.
- Enhanced data visualization and reporting.

---

## Features (Prototype)

### Current Implementations
1. **Employee Management**:
   - Add, edit, and delete employees.
   - Display employees with associated department names.

2. **Project Management**:
   - View, add, edit, and delete projects.

3. **Task Management**:
   - Assign tasks to employees and link them to projects.
   - View tasks dynamically with employee and project details.

4. **Automation**:
   - Basic data synchronization between Azure SQL and SharePoint.
   - Automated email notifications for certain actions.

### Planned Features
- Advanced automation for task notifications and reminders.
- Integration with Power BI for detailed reporting.
- Role-based access control for enhanced security.

---

You can fix this project, suggest features, or contribute. Let me know if you need feedback or clarification on the current implementation!


---

## What I Have Done

### 1. SQL Database
The core backend for the project is implemented in Azure SQL Database. The following tables were created:

- **Employees**: Stores employee details such as `EmployeeName`, `Email`, `Phone`, `Salary`, and `DepartmentID`.
- **Departments**: Stores department information such as `DepartmentID` and `DepartmentName`.
- **Projects**: Tracks project details such as `ProjectName` and `DepartmentID`.
- **Tasks**: Stores task details such as `TaskName`, `EmployeeID`, `ProjectID`, `DueDate`, and `Status`.

#### SQL Queries Implemented
- **Joins**:
  - Combined `Employees` and `Departments` tables to display department names dynamically.
  - Linked `Projects` and `Departments` tables for better data visualization.
- **Views**:
  - Created views to simplify data retrieval for Power Apps and reporting.
- **Aggregate Functions**:
  - Used aggregate queries for insights such as the total number of employees in each department.
- **Data Insertion**:
  - Populated tables with initial data for employees, departments, projects, and tasks.
- **Randomized Salary Values**:
  - Generated random salary values for employees within a specified range (2800 to 5000).

---

### 2. SharePoint Integration
SharePoint was used to create a repository for synchronizing and viewing data from Azure SQL Database.

#### Key Actions
- Created a SharePoint list for tasks with columns such as:
  - Task Name
  - Assigned Employee
  - Project Name
  - Due Date
  - Status
- Connected SharePoint lists to Power Automate for automatic updates.
- Designed a workflow to synchronize Azure SQL tasks with the SharePoint list for real-time updates.

---

### 3. Power Automate
Power Automate was used to automate workflows and notifications across the system.

#### Workflows Implemented
1. **Sync SQL to SharePoint**:
   - Scheduled workflows to synchronize tasks from Azure SQL to SharePoint lists.
   - Utilized a `For Each` loop to iterate through SQL query results and update SharePoint.

2. **Email Notifications**:
   - Sent automated emails when:
     - A new employee was added.
     - A task was assigned or updated.
   - Emails included task or employee details for better transparency.

3. **Error Handling**:
   - Built logic to handle invalid data or connection failures with detailed notifications.

---

### 4. Power Apps
Power Apps was used to create an intuitive front-end application for interacting with the system.

#### Screens Developed
1. **Employee Management**:
   - Added, edited, and deleted employees dynamically.
   - Dropdown to select department names instead of department IDs.
   - Displayed department names alongside employee details in a gallery.

2. **Project Management**:
   - Displayed projects with associated department names.
   - Allowed users to add, edit, and delete projects directly.

3. **Task Management**:
   - Provided functionality to add tasks with dropdowns for selecting employees and projects.
   - Displayed tasks with employee and project details dynamically.
   - Allowed users to delete tasks and synchronize changes with SQL.

4. **Navigation**:
   - Designed intuitive navigation across all screens for employees, projects, and tasks.

#### Key Features
- **Dynamic Dropdowns**:
  - Used dropdowns to fetch department names from the `Departments` table.
  - Populated project and employee dropdowns dynamically.

- **Form Handling**:
  - Integrated Power Apps forms for adding and editing records.
  - Linked forms directly to Azure SQL for seamless data updates.

- **Custom Lookups**:
  - Used `LookUp()` to fetch related data (e.g., department names for employees).

---

## How It All Works Together

1. **SQL Database**:
   - Acts as the primary data store.
   - Provides structured data for employees, departments, projects, and tasks.

2. **Power Apps**:
   - Front-end application for managing all operations (add, edit, view, delete).
   - Uses dynamic lookups to display related data (e.g., department names).

3. **SharePoint**:
   - Serves as a secondary data store and synchronization point for tasks.
   - Allows external users to view and interact with tasks.

4. **Power Automate**:
   - Automates workflows like data synchronization and email notifications.
   - Ensures real-time updates between SQL and SharePoint.

---

## Setup Instructions

1. **SQL Setup**:
   - Create an Azure SQL Database.
   - Run the provided SQL scripts to create tables and populate data.

2. **SharePoint Setup**:
   - Create a SharePoint list for tasks.
   - Connect the list to Power Automate workflows.

3. **Power Automate**:
   - Import or create workflows for:
     - Synchronizing SQL to SharePoint.
     - Sending automated email notifications.

4. **Power Apps**:
   - Import the Power Apps project.
   - Connect it to the SQL database and SharePoint lists.
   - Publish the app for user access.

---

## Future Improvements
- **Reporting**:
  - Integrate Power BI for advanced data visualization and reporting.
- **Security**:
  - Implement role-based access in Power Apps for better control.
- **Enhanced Automation**:
  - Extend Power Automate workflows for more granular task management.
