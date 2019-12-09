import UIKit

var rates: [Double]? = nil

rates = [4.0, 3.2, 3.6, 4.8, 2.3]

func calculrateRates (history:[Double]) -> (average:Double, min:Double, max:Double){
    var sum = 0.0, min = history[0], max = history[0]
    for value in history{
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

if let theRating = rates {
    let record = calculrateRates(history: theRating)
    print("this book has \(theRating.count) ratings, \r\nthe average is \(record.average), from \(record.min) to \(record.max)")
}
