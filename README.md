# Poly
[![MIT license](http://img.shields.io/badge/license-MIT-lightgrey.svg)](http://opensource.org/licenses/MIT) [![Swift 4.2](http://img.shields.io/badge/Swift-4.2-blue.svg)](https://swift.org) [![Build Status](https://app.bitrise.io/app/e46602b5a7b267d7/status.svg?token=u4El0Z-Ew_9QrR-Fk7Byug&branch=master)](https://app.bitrise.io/app/e46602b5a7b267d7)

Poly is a small library to provide an alternative to rolling your own type-erasure when a value has one of a small set of Types. The Poly library contains the Types `Poly1`, `Poly2`, `Poly3`, etc. for representing increasingly larger pools of possible Types. `Poly2` is isomorphic `Either` (a common generic functional programming Type).

## Dev Environment
### Prerequisites
1. Swift 4.2+ and Swift Package Manager

### Xcode project
To create an Xcode project for Poly, run
`swift package generate-xcodeproj`

## Usage

Usage will be explained by way of an example. Suppose you have some code with three different Types: `Dog`, `Cat`, and `Rat`. You also have a protocol, `Animal`, that they all belong to.

If you need to store animals of all three Types in one place (maybe an array), that looks like:
```swift
let dog = Dog()
let cat = Cat()
let rat = Rat()

let animals: [Poly3<Dog, Cat, Rat>] = [
  .init(dog),
  .init(cat),
  .init(rat)
]
```

You can get the `Dog`, `Cat`, or `Rat` value back out again, but you won't get any guarantees of which Type is being stored in a given `Poly`:
```swift
let animal = Poly3<Dog, Cat, Rat>(Dog())

let maybeDog: Dog? = animal.a
let maybeCat: Cat? = animal.b
let maybeRat: Rat? = animal.c
```
Or use the subscript operator to make accessing one of the possible values of a `Poly` a bit more intuitive:
```swift
let maybeDog2 = animal[Dog.self]
let maybeCat2 = animal[Cat.self]
let maybeRat2 = animal[Rat.self]
```
Or switch over the possible values:
```swift
switch animal {
  case .a(let dog):
    print(dog)
  case .b(let cat):
    print(dog)
  case .c(let rat):
    print(dog)
}
```

You might consider making a typealias to make your life easier:
```swift
typealias AnyAnimal = Poly3<Dog, Cat, Rat>
```

You also might find it worthwhile to go the extra mile and add `Animal` conformance to `Poly<Dog, Cat, Rat>`:
```swift
protocol Animal {
  var speak: String { get }
}

extension Poly3: Animal where A == Dog, B == Cat, C == Rat {
  var speak: String {
    switch self {
      case .a(let animal as Animal),
        .b(let animal as Animal),
        .c(let animal as Animal):
          return animal.speak
    }
  }
}
```
So now you can take the array of animals from the first example above and:
```swift
let animalSounds = animals.map { $0.speak }
```
