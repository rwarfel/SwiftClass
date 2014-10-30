// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        
        var curVal: Int = 0
        var curIndex = 1
        
        if self.includesZero {
            values = [0,1]
        }
        else {
            values = [1,1]
        }
        
        if maxNumber > 1 {
            while curVal < maxNumber {
                curVal = values[curIndex - 1] + values[curIndex]
                if curVal < maxNumber {
                    values.append(curVal)
                }
                ++curIndex
            }
        } else {
            // throw error
            println("Maximum number must be greater than 1")
        }
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
//        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
        self.includesZero = includesZero
        
        if self.includesZero {
            values = [0,1]
        }
        else {
            values = [1,1]
        }
       
        if numberOfItemsInSequence > 1 {
            
            var curVal: Int = 0
            let stopValue =  numberOfItemsInSequence - 1
            
            for var i = 1; i < stopValue; i++ {
                curVal = values[i - 1] + values[i]
                values.append(curVal)
                
            }
        } else {
            // throw error
            println("Number of items must be greater than 1")
        }
        
        
        
    }

}


//let fibanocciSequence = FibonacciSequence(maxNumber:67890, includesZero: true)


//let fibanocciSequence = FibonacciSequence(maxNumber:12345, includesZero: false)

//let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 14, includesZero: true)

Int.max
Int32.max
UInt.max
UInt.addWithOverflow(203400948530485, 23409852304802985)



