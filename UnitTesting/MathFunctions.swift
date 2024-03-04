//
//  MathFunctions.swift
//  UnitTesting
//
//  Created by Mohamed Abd Elhakam on 04/03/2024.
//

import Foundation


class MathFunctions {
    
    func add(firstNum : Int , secondNum : Int) -> Int {
        return firstNum + secondNum
    }
    
    func subtract(firstNum : Int , secondNum : Int) -> Int {
        return firstNum - secondNum
    }
    
    func multiply(firstNum : Int , secondNum : Int) -> Int {
        return firstNum * secondNum
    }
    
    func checkedDivisionResult(firstNum : Int , secondNum : Int , checkedResult : Int) -> Bool {
        return (firstNum / secondNum) == checkedResult
    }
    
}
