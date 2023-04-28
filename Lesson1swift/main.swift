//
//  main.swift
//  Lesson1swift
//
//  Created by Sara Regali on 28/04/23.
//

import Foundation

//optional binding
func pippo(_ inputOB: String?) -> (Int, String){
    if let e=inputOB{
        return(e.count, e.uppercased())
    }else{
        return (-1, "Non posso")
    }
}

//Forced unwrapping
func pippo(inputIUO: String?) -> (Int, String){

    guard inputIUO != nil else{
        return (-1, "Non posso")
    }
    var e = inputIUO!
    return(e.count, e.uppercased())
}

func printFun(tuple:(Int, String)){
    print(tuple.0, tuple.1)
}

let WEEKDAY_NAMES = ["Lun", "Mar", "Mer", "Gio", "Ven", "Sab", "Dom"]
func weekDayName(_ day: Int) -> String? {
    guard day>0 && day<8 else{
        return nil
    }
    return WEEKDAY_NAMES[day-1]
}


func countStrings(_ array: [String]) -> [String: Int]{
    var dict : [String: Int] = [:]
    
    for el in array{
        if(dict[el] == nil) {
            dict[el] = 1
        }else{
            dict[el]! += 1
        }
    }
    
    return dict
}

func equal(_ s1: String, _ s2: String) -> Bool{
    s1 == s2
}

func equalIgnoreCase(_ s1: String, _ s2: String) -> Bool{
    s1.lowercased() == s2.lowercased()
}

func similar2(_ s1: String, _ s2: String) -> Bool{
    s1.prefix(2) == s2.prefix(2)
}


typealias SimilarityCheck = (String, String) -> Bool

func countSimilar(_ s1: String, _ array:[String], _ compare: SimilarityCheck ) -> Int{
    var count = 0
    for s in array{
        count += compare(s1, s) ? 1 : 0
    }
    
    return count
}

printFun(tuple: pippo(inputIUO:"ciao"))
printFun(tuple: pippo(inputIUO:nil))
print(weekDayName(2))
print(countStrings(["a", "b", "a", "c"]))
print(similar2("ciao", "ciaO"))

print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], equal(_:_:)))
print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], equalIgnoreCase(_:_:)))
print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], similar2(_:_:)))

print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], {$0==$1}))
print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], {$0.lowercased()==$1.lowercased()}))
print(countSimilar("aaa", ["aaa", "Aaa", "aaA"], {$0.prefix(2)==$1.prefix(2)}))
