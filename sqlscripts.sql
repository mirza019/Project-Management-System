-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(15),
    Salary FLOAT CHECK (Salary >= 2800 AND Salary <= 5000),
    DepartmentID INT NOT NULL FOREIGN KEY REFERENCES Departments(DepartmentID)
);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    ProjectName NVARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL FOREIGN KEY REFERENCES Departments(DepartmentID)
);

-- Create Tasks Table
CREATE TABLE Tasks (
    TaskID INT IDENTITY(1,1) PRIMARY KEY,
    TaskName NVARCHAR(100) NOT NULL,
    EmployeeID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
    ProjectID INT NOT NULL FOREIGN KEY REFERENCES Projects(ProjectID),
    DueDate DATE,
    Status NVARCHAR(50) CHECK (Status IN ('Pending', 'Completed'))
);

-- Insert Initial Data into Departments
INSERT INTO Departments (DepartmentName) VALUES 
('Engineering'), 
('HR'), 
('Finance'), 
('IT'), 
('Operations');

-- Insert Initial Data into Employees
INSERT INTO Employees (EmployeeName, Email, Phone, Salary, DepartmentID) VALUES 
('Alice Johnson', 'alice.johnson@example.com', '1234567890', 3500, 1),
('Bob Smith', 'bob.smith@example.com', '9876543210', 4000, 2),
('Charlie Brown', 'charlie.brown@example.com', '4567891230', 3200, 3),
('Diana Prince', 'diana.prince@example.com', '7891234560', 5000, 4),
('Evan Davis', 'evan.davis@example.com', '6543217890', 2900, 5);

-- Insert Initial Data into Projects
INSERT INTO Projects (ProjectName, DepartmentID) VALUES 
('Green Energy Initiative', 1),
('Employee Retention Program', 2),
('Financial Analysis', 3),
('IT Infrastructure Upgrade', 4),
('Operational Excellence', 5);

-- Insert Initial Data into Tasks
INSERT INTO Tasks (TaskName, EmployeeID, ProjectID, DueDate, Status) VALUES 
('Prepare Budget Report', 1, 3, '2025-01-15', 'Pending'),
('Develop Training Materials', 2, 2, '2025-02-01', 'Completed'),
('Implement System Upgrade', 4, 4, '2025-03-10', 'Pending'),
('Analyze Financial Trends', 3, 3, '2025-01-20', 'Completed'),
('Enhance Customer Support', 5, 5, '2025-01-25', 'Pending');
