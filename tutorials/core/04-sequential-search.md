# 4.4 Search an Array

### @explicitHints true

## {Introduction @showdialog}

**Searching** is an algorithmic problem: find a requested item in a collection, or determine that the item is not there.

A **sequential search** checks items one at a time in sequence.

In this activity you will build a search and then refactor it into a reusable function.

## {Step 1 - Make an array}

Create an array of several names.

Ask the player for a name to search for and store the response in `searchTerm`.

#### ~ tutorialhint

```blocks
let names = ["Avery", "Blake", "Casey", "Devon", "Emery", "Finley"]
let searchTerm = game.askForString("Name to find?")
```

## {Step 2 - Track whether it was found}

Create a Boolean variable named `found` and set it to `false`.

Loop through each value in the array.

If the current value equals `searchTerm`, set `found` to `true`.

#### ~ tutorialhint

```blocks
let found = false
for (let value of names) {
    if (value == searchTerm) {
        found = true
    }
}
```

## {Step 3 - Report the result}

After the loop, use an `if / else` to tell the player whether the name was found.

Test a name that exists and one that does not.

#### ~ tutorialhint

```blocks
if (found) {
    game.splash("Found it!")
} else {
    game.splash("Not found")
}
```

## {Step 4 - Think about the algorithm @showdialog}

If the target is not in an unordered array, a sequential search may need to check **every item** before it can be certain the item is missing.

If a collection is sorted, some search algorithms can take advantage of the order.

## {Step 5 - Refactor the search into a function}

Create a function named `sequentialSearch`.

Give it two parameters:

* an array of Strings named `items`
* a String named `target`

The function should return a Boolean.

Return `true` as soon as the target is found. If the loop finishes without finding it, return `false`.

#### ~ tutorialhint

```blocks
function sequentialSearch(items: string[], target: string): boolean {
    for (let value of items) {
        if (value == target) {
            return true
        }
    }
    return false
}
```

## {Step 6 - Use your search function}

Replace the earlier search code with one call to `sequentialSearch`.

Use the returned Boolean in an `if / else`.

#### ~ tutorialhint

```blocks
if (sequentialSearch(names, searchTerm)) {
    game.splash("Found it!")
} else {
    game.splash("Not found")
}
```

## {Step 7 - Test carefully}

Test at least three cases:

1. the first item in the array
2. an item near the end
3. an item that is not present

A search algorithm must correctly handle both **found** and **not found** cases.

## {Finish}

You implemented a sequential search and packaged the algorithm inside a reusable function that returns a Boolean value.
