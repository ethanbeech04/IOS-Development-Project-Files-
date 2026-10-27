---
id: D4631C25-90A3-436D-B654-88557D2F37BC
name: Other Languages 3
type: lab
assignDay: CS10
dueDay: CS11
location:
---

# Other Languages 3 Lab Requirements - Due Oct 21, 2026

Last night you built `budget.py` or `budget.js`. Tonight you'll add two features to it with help from AI, check that the AI got them right, and write one of your old functions in Kotlin. Plan on about 30 minutes.

Keep working in the same folder, the same file and the same language you used for the Other Languages 2 lab.

## Instructions

### Step 1: Add categories

Add a `category` key to every expense in your `expenses` list, like Food, Travel or Fun. Use **at least 2** different categories, and use at least one of them more than once.

Run your file to make sure nothing broke.

### Step 2: Run the Swift version

Paste this into a new Xcode playground and run it. Write down the three lines it prints. Your translation has to print the same three lines.

```swift
struct Expense {
    let name: String
    let amount: Int
    let category: String
}

func categoryTotal(for category: String, in expenses: [Expense]) -> Int {
    var total = 0
    for expense in expenses {
        if expense.category == category {
            total += expense.amount
        }
    }
    return total
}

func biggestExpense(in expenses: [Expense]) -> Expense? {
    if expenses.isEmpty {
        return nil
    }
    var biggest = expenses[0]
    for expense in expenses {
        if expense.amount > biggest.amount {
            biggest = expense
        }
    }
    return biggest
}

let tripExpenses = [
    Expense(name: "Groceries", amount: 65, category: "Food"),
    Expense(name: "Gas", amount: 40, category: "Travel"),
    Expense(name: "Pizza", amount: 24, category: "Food"),
    Expense(name: "Movie tickets", amount: 30, category: "Fun")
]

print("Food: $\(categoryTotal(for: "Food", in: tripExpenses))")

if let biggest = biggestExpense(in: tripExpenses) {
    print("Biggest: \(biggest.name), $\(biggest.amount)")
}

if biggestExpense(in: []) == nil {
    print("No expenses yet")
}
```

### Step 3: Translate it with AI

Give the Swift code to any AI tool with this prompt. Fill in your language.

> Translate this Swift to ___ the way a ___ developer would write it. Store each expense as a dictionary (or a JavaScript object) with `name`, `amount` and `category`. Then explain each difference from the Swift version.

Paste the translated functions and test code at the bottom of your budget file. Run it.

### Step 4: Check the translation

1. Compare the output with the three lines you wrote down in Step 2. If they don't match, find the difference and fix it. Write a comment saying what was wrong.
2. Above the translated code, write a comment that names the AI tool you used and one thing your language does differently from Swift, and why.
3. Look at the translated version of `biggestExpense`. Is it literal, a loop copied from Swift line by line, or idiomatic? If it's literal, ask the AI for the version a developer in your language would write, run it, and check the output again. Write a comment saying which version you kept.

### Step 5: Use it on your own expenses

Below the test code, print two more lines using your own `expenses` list:

- The total for one of your categories
- Your biggest expense

### Step 6: One function in Kotlin

Go to play.kotlinlang.org. Write your budget status function from last night in Kotlin. Do this one yourself, without AI. It's very close to Swift.

- Name it `budgetStatus`. It takes two `Int`s and returns a `String`.
- Call it from `main()` three times, so all three results print.

Copy your Kotlin code into a new file named `budget.kt` in your `Other Languages Lab` folder.

### Step 7: Your next language

At the bottom of `budget.kt`, write a paragraph in a comment. Answer these:

- What language would you learn next, and why?
- What is that language's official documentation site?
- Where else would you practice it?
- What Swift program you've already written would you rewrite in it first?

When finished, have an instructor sign off on your work.

## Black Diamond

Translate your whole budget file into Kotlin yourself, using kotlinlang.org/docs. Then ask AI to translate it too, and compare the two versions. (Hint: look up Kotlin's `data class`. It works a lot like a Swift struct.)

## Rubric

- [ ] Every expense has a `category`, with at least 2 different categories
- [ ] The translated code prints the same three lines as the Swift version
- [ ] Comments name the AI tool and one difference from Swift
- [ ] A comment says whether `biggestExpense` was literal or idiomatic, and which version was kept
- [ ] A category total and the biggest expense print for your own `expenses`
- [ ] `budget.kt` has a `budgetStatus` function that prints all three results from `main()`
- [ ] The paragraph answers all four questions
