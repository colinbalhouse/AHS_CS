# 4.3 Get Information Back

### @explicitHints true

## {Introduction @showdialog}

Some functions do a job and then send information back to the caller. That information is a **return value**.

A return value can be stored in a variable, displayed, compared, or used inside another expression.

## {Step 1 - Return a number}

Create a function named `addNumbers` with three Number parameters.

Instead of displaying the answer inside the function, **return** the sum.

#### ~ tutorialhint

```blocks
function addNumbers(firstNumber: number, secondNumber: number, thirdNumber: number): number {
    return firstNumber + secondNumber + thirdNumber
}
```

## {Step 2 - Use the returned value}

Create a Player sprite.

Call `addNumbers` and make the sprite say the returned value.

#### ~ tutorialhint

```blocks
let player = sprites.create(img`.` , SpriteKind.Player)
player.sayText(addNumbers(3, 5, 7))
```

## {Step 3 - Why return? @showdialog}

Returning the value makes the function more flexible.

The same result could be:

* displayed by a sprite
* stored in a variable
* used in more math
* compared in an `if` statement

Once a `return` runs, that function is finished and control goes back to the caller.

## {Step 4 - Represent a deck of cards}

A standard 52-card deck has 4 suits with 13 cards in each suit.

If cards are numbered from 0 through 51, integer division by 13 can tell you which suit a card belongs to.

Make a function named `calculateSuit` with one Number parameter named `card` that returns a String.

## {Step 5 - Calculate the suit}

Use integer division to calculate a `suitNumber`.

Return the correct suit name for values 0 through 3.

#### ~ tutorialhint

```blocks
function calculateSuit(card: number): string {
    let suitNumber = Math.idiv(card, 13)
    if (suitNumber == 0) {
        return "Spades"
    } else if (suitNumber == 1) {
        return "Diamonds"
    } else if (suitNumber == 2) {
        return "Clubs"
    } else {
        return "Hearts"
    }
}
```

## {Step 6 - Ask for a card number}

Ask the player for a number from 0 through 51.

Call `calculateSuit` and display the returned String.

#### ~ tutorialhint

```blocks
let card = game.askForNumber("Card number 0-51")
game.splash(calculateSuit(card))
```

## {Step 7 - Optional challenge}

Create a second function named `calculatePip`.

Use the **remainder** when dividing by 13 to determine whether the card is an Ace, 2 through 10, Jack, Queen, or King.

Return the pip as a String, then display the complete card name.

## {Finish}

You created functions that return values and used those values outside the functions.
