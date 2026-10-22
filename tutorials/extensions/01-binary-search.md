# Binary Search Challenge

### @explicitHints true

## {Introduction @showdialog}

A sequential search works with any collection, but it may have to check every item.

A **binary search** can be much faster because it repeatedly cuts the remaining search area in half.

There is one important requirement: **the collection must already be sorted.**

## {Step 1 - Start with sorted data}

Create a sorted array of numbers and choose a target to search for.

#### ~ tutorialhint

```blocks
let values = [3, 8, 12, 17, 21, 29, 35, 42, 48, 55, 63, 71, 80, 92, 96, 100]
let target = game.askForNumber("Number to find?")
```

## {Step 2 - Track the search range}

Create variables named `beginning` and `ending`.

Set `beginning` to 0 and `ending` to the last valid array index.

#### ~ tutorialhint

```blocks
let beginning = 0
let ending = values.length - 1
```

## {Step 3 - Find the middle}

Create a Boolean named `found` and set it to false.

While the target has not been found **and** `beginning` is less than or equal to `ending`, calculate the middle index.

#### ~ tutorialhint

```blocks
let found = false
while (!found && beginning <= ending) {
    let middle = Math.idiv(beginning + ending, 2)
}
```

## {Step 4 - Compare the middle value}

Inside the loop:

* if `values[middle]` equals the target, set `found` to true
* if the target is smaller, move `ending` to one position before `middle`
* otherwise, move `beginning` to one position after `middle`

#### ~ tutorialhint

```blocks
let found = false
while (!found && beginning <= ending) {
    let middle = Math.idiv(beginning + ending, 2)
    if (values[middle] == target) {
        found = true
    } else if (target < values[middle]) {
        ending = middle - 1
    } else {
        beginning = middle + 1
    }
}
```

## {Step 5 - Report the result}

After the loop, tell the player whether the number was found.

Test values near the beginning, middle, and end, plus a value that is not present.

#### ~ tutorialhint

```blocks
if (found) {
    game.splash("Found it!")
} else {
    game.splash("Not found")
}
```

## {Step 6 - Why it is faster @showdialog}

Each comparison removes about half of the remaining possibilities.

With 16 sorted items, a binary search needs at most about 5 rounds to determine whether the target is present. A sequential search might inspect all 16.

The tradeoff is that binary search depends on sorted data and has more complex logic.

## {Finish}

You implemented a binary search by repeatedly dividing a sorted search range in half.
