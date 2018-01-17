import UIKit

var multiplyClosure: (Int, Int) -> Int

multiplyClosure = { a, b in
    return a * b
}

let result = multiplyClosure(5, 6)



var mathClosure: (Int, Int, Int) -> Int
mathClosure = { a, b, c in
    return a + b - c
}

let first = mathClosure(7, 3, 5)


var counter = 0
let incrementCounter = {
    counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
counter


func countingClosure() -> () -> Int {
    var counter = 0
    let incrementingCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementingCounter
}


let cococo = countingClosure()

cococo()
cococo()


let names = ["Zeppelin", "Tanford", "Applejohn", "Putford", "John"]
names.sorted()

names.sorted(by: { a, b in
    a > b
})


var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

let largePrices = prices.filter { a -> Bool in
    return a > 5
}

let lowPrices = prices.filter { a -> Bool in
    return a < 5
}

let salePrices = prices.map { price -> Double in
    return price * 0.9
}

let sum = prices.reduce(0) { result, price -> Double in
    return result + price
}


var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
var stockSum = stock.reduce(0) { result, pair -> Double in
    return result + (pair.key * Double(pair.value))
}











