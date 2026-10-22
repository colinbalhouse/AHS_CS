# 4.2 Give Functions Information

### @explicitHints true

## {Introduction @showdialog}

A **parameter** is information a function can use while doing its job. An **argument** is the value you send when you call the function.

You will first make a small practice function, then use a parameter to create different game levels.

## {Step 1 - Create a function with parameters}

Make a function named `addNumbers`.

Add **three Number parameters** named `firstNumber`, `secondNumber`, and `thirdNumber`.

Inside the function, display the sum of all three parameters.

#### ~ tutorialhint

```blocks
function addNumbers(firstNumber: number, secondNumber: number, thirdNumber: number) {
    game.splash(firstNumber + secondNumber + thirdNumber)
}
```

## {Step 2 - Send arguments}

Call `addNumbers` from `on start` and send three different numbers as arguments.

Change the numbers and run the project again.

The function stays the same; the arguments change what the function does.

#### ~ tutorialhint

```blocks
addNumbers(4, 8, 12)
```

## {Step 3 - Try expressions as arguments}

Put the call inside a `||loops:repeat||` loop and send random numbers as arguments.

This shows that arguments do not have to be fixed values. They can be expressions that are evaluated when the function is called.

#### ~ tutorialhint

```blocks
for (let index = 0; index < 3; index++) {
    addNumbers(randint(1, 10), randint(1, 10), randint(1, 10))
}
```

## {Step 4 - Start a level system}

Create a Player sprite in `on start` and make it move with the controller.

Then make a new function named `startLevel` with one Number parameter named `level`.

#### ~ tutorialhint

```blocks
let hero = sprites.create(img`.` , SpriteKind.Player)
controller.moveSprite(hero)

function startLevel(level: number) {
}
```

## {Step 5 - Clear the old level}

At the beginning of `startLevel`, loop through all Enemy sprites and destroy them.

That way the function can remove leftover enemies before building the next level.

#### ~ tutorialhint

```blocks
function startLevel(level: number) {
    for (let enemy of sprites.allOfKind(SpriteKind.Enemy)) {
        enemy.destroy()
    }
}
```

## {Step 6 - Use the parameter in a conditional}

Inside `startLevel`, add an `if / else` that checks the `level` parameter.

For level 1, set one background color and create one Enemy sprite.

For level 2, use a different background and create a different Enemy sprite.

#### ~ tutorialhint

```blocks
function startLevel(level: number) {
    for (let enemy of sprites.allOfKind(SpriteKind.Enemy)) {
        enemy.destroy()
    }
    if (level == 1) {
        scene.setBackgroundColor(7)
        sprites.create(img`.` , SpriteKind.Enemy)
    } else {
        scene.setBackgroundColor(2)
        sprites.create(img`.` , SpriteKind.Enemy)
    }
}
```

## {Step 7 - Call different levels}

Call `startLevel(1)` when the game begins.

Add an A-button event that calls `startLevel(2)`.

Test the game and make sure the level changes.

#### ~ tutorialhint

```blocks
startLevel(1)
controller.A.onEvent(ControllerButtonEvent.Pressed, function () {
    startLevel(2)
})
```

## {Step 8 - Your turn}

Customize both levels.

Try adding a different arrangement of enemies, a different hero position, or more than two levels.

Keep one rule in mind: **the parameter should change how the function behaves.**

## {Finish}

You used parameters and arguments to make a reusable function more flexible.
