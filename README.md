# SpendWise

## Project Description

SpendWise is a budget management web application designed to help users organize their budget and keep track of their expenses. The project uses HTML and CSS to create the dashboard interface and JavaScript to collect user information, process expense data, perform budget calculations, and display the results in the browser console.

The goal of this project is to build a simple foundation for a functional personal budgeting application.

## Technologies Used

* HTML5
* CSS3
* JavaScript
* Git and GitHub

## Project Files

```text
SpendWise/
│
├── index.html
├── style.css
├── script.js
└── README.md
```

### `index.html`

Contains the structure and content of the SpendWise dashboard.

### `style.css`

Contains the styling for the SpendWise dashboard, including layout, colors, typography, cards, tables, forms, and responsive design.

### `script.js`

Contains the JavaScript logic used to collect user input, store budgeting data, perform calculations, create reusable functions, and display results.

### `README.md`

Contains information about the project, the technologies used, and the JavaScript concepts implemented.

## JavaScript Concepts Implemented

The JavaScript part of SpendWise demonstrates the following concepts:

* Variables
* Data types
* User input
* Number conversion
* Arrays
* Arithmetic calculations
* Functions
* `reduce()`
* Console output

## Variables

Variables are used to store the user's budget and individual expenses.

Example:

```javascript
let budget = 0;
let expense1 = 0;
let expense2 = 0;
let expense3 = 0;
```

The `budget` variable stores the total amount available, while the expense variables store individual spending amounts.

The expenses are then grouped into an array:

```javascript
let expenses = [expense1, expense2, expense3];
```

This makes it easier to process multiple expenses.

## Collecting User Input

SpendWise uses JavaScript's `prompt()` function to allow the user to enter their budget and expenses.

Example:

```javascript
budget = Number(prompt("Enter your total monthly budget:"));
expense1 = Number(prompt("Enter your first expense:"));
```

The `Number()` function converts the user's input into a number so that it can be used in mathematical calculations.

The application collects:

* Monthly budget
* First expense
* Second expense
* Third expense

## Budget Calculations

SpendWise calculates the total amount spent and the remaining balance.

The total expenses are calculated using a reusable function:

```javascript
function calculateTotalExpenses(expenses) {
    return expenses.reduce((total, expense) => total + expense, 0);
}
```

The remaining balance is calculated by subtracting total expenses from the budget:

```javascript
function calculateRemainingBalance(budget, totalExpenses) {
    return budget - totalExpenses;
}
```

The calculation can be represented as:

```text
Remaining Balance = Budget - Total Expenses
```

For example, if the user enters:

```text
Budget: KSh 50,000
Expense 1: KSh 5,000
Expense 2: KSh 12,000
Expense 3: KSh 8,000
```

The application calculates:

```text
Total Expenses: KSh 25,000
Remaining Balance: KSh 25,000
```

## Functions

Functions help organize the JavaScript code into reusable blocks.

SpendWise uses two main functions:

### `calculateTotalExpenses()`

This function adds all the expenses together and returns the total amount spent.

### `calculateRemainingBalance()`

This function subtracts the total expenses from the available budget and returns the remaining balance.

Using functions makes the code easier to read, maintain, and reuse.

## Displaying Results

The calculated results are displayed in the browser console using `console.log()`.

Example output:

```text
===== SpendWise Budget Summary =====
Monthly Budget: KSh 50000.00
Total Expenses: KSh 25000.00
Remaining Balance: KSh 25000.00
====================================
```

This allows the user to verify that the JavaScript calculations are working correctly.

## How to Run the Project

1. Download or clone the SpendWise project.
2. Open the project folder.
3. Open `index.html` in a web browser.
4. JavaScript prompts will ask for the monthly budget and expenses.
5. Enter the requested information.
6. Open the browser Developer Tools.
7. Select the **Console** tab.
8. View the calculated budget summary.

## Testing

The application was tested by entering different budget and expense values.

Testing confirms that:

* User input is collected successfully.
* Input values are converted into numbers.
* Expenses are stored in an array.
* Total expenses are calculated correctly.
* Remaining balance is calculated correctly.
* Results are displayed clearly in the browser console.

## Conclusion

The SpendWise project has been enhanced from a static visual dashboard into an application that can process basic budgeting information using JavaScript.

The project demonstrates how variables, user input, arrays, calculations, functions, and console output can work together to create the foundation of a functional budgeting application.

## Author

SpendWise Project
    MAET JAMES BOL
    