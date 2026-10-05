// SpendWise Budget JavaScript

// 2. Store application data
let budget = 0;
let expense1 = 0;
let expense2 = 0;
let expense3 = 0;

// 3. Collect user input
budget = Number(prompt("Enter your total monthly budget:"));
expense1 = Number(prompt("Enter your first expense:"));
expense2 = Number(prompt("Enter your second expense:"));
expense3 = Number(prompt("Enter your third expense:"));

// 5. Reusable functions

function calculateTotalExpenses(expenses) {
    return expenses.reduce((total, expense) => total + expense, 0);
}

function calculateRemainingBalance(budget, totalExpenses) {
    return budget - totalExpenses;
}

// Store expenses in an array
let expenses = [expense1, expense2, expense3];

// 4. Perform budget calculations
let totalExpenses = calculateTotalExpenses(expenses);
let remainingBalance = calculateRemainingBalance(budget, totalExpenses);

// 6. Display results in the browser console
console.log("===== SpendWise Budget Summary =====");
console.log("Monthly Budget: KSh " + budget.toFixed(2));
console.log("Total Expenses: KSh " + totalExpenses.toFixed(2));
console.log("Remaining Balance: KSh " + remainingBalance.toFixed(2));
console.log("====================================");