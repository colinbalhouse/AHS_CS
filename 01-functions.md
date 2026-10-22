# 4.1 Build Your First Functions

### @explicitHints true

## {Introduction @showdialog}

A **function** is a reusable piece of organized code that performs one specific job.

In this activity you will:

* define a function
* call a function
* follow the flow of control into and back out of a function
* reuse a function instead of duplicating code
* refactor code to make a program easier to read

## {Step 1 - Make a function}

Open `||functions:Functions||` and choose **Make a Function**.

Name the function `sayHello`.

Inside the function, add a `||game:splash||` block that displays **Hello there!**

#### ~ tutorialhint

```blocks
function sayHello() {
    game.splash("Hello there!")
}
```

## {Step 2 - Call it}

Defining a function tells the computer what the function *would* do. It does not run until the function is **called**.

Add `||functions:call sayHello||` to `||loops:on start||`.

Run the program.

#### ~ tutorialhint

```blocks
function sayHello() {
    game.splash("Hello there!")
}
sayHello()
```

## {Step 3 - Follow the control flow @showdialog}

When a function is called, the caller pauses while the function runs. When the function reaches the end, control returns to the caller and the next block runs.

Your `on start` block is the **caller** in this example.

## {Step 4 - Make a player function}

Create a variable named `player`.

Make a function named `makePlayer`. Inside it:

1. create a Player sprite and store it in `player`
2. turn on **stay in screen**
3. make the controller move the sprite

Call `makePlayer` from `on start`.

#### ~ tutorialhint

```blocks
let player: Sprite = null
function makePlayer() {
    player = sprites.create(img`.` , SpriteKind.Player)
    player.setStayInScreen(true)
    controller.moveSprite(player)
}
makePlayer()
```

## {Step 5 - Test scope through effects}

After the call to `makePlayer`, add a block that makes `player` say **Ready!**

The sprite was created inside the function, but the program can still use the `player` variable afterward.

#### ~ tutorialhint

```blocks
let player: Sprite = null
function makePlayer() {
    player = sprites.create(img`.` , SpriteKind.Player)
    player.setStayInScreen(true)
    controller.moveSprite(player)
}
makePlayer()
player.sayText("Ready!")
```

## {Step 6 - Reuse code}

Add an `||controller:on A button pressed||` event.

Call `sayHello` inside the event instead of rebuilding the splash code.

Now the same function is used from two different places.

#### ~ tutorialhint

```blocks
controller.A.onEvent(ControllerButtonEvent.Pressed, function () {
    sayHello()
})
```

## {Step 7 - Refactor @showdialog}

**Refactoring** means changing the structure of code without changing what the program does.

Moving a group of related blocks into a well-named function can make a program easier to read, test, and reuse.

Before you finish, look at your project and ask:

* Does each function have one clear job?
* Does the function name explain that job?
* Did you call a function instead of copying the same blocks twice?

## {Finish}

You have defined, called, reused, and refactored code with functions.

Click **Done** to complete this activity.
