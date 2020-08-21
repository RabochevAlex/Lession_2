import UIKit

//Задание №1
print("Задание №1")
func numEven(_ numberX: Int)->Bool {
    return numberX%2==0
}

var numberA:Int = 10
var numberB:Int = 11
print(numEven(numberA) ? String(numberA)+" четое": String(numberA)+" не четое")
print(numEven(numberB) ? String(numberB)+" четое": String(numberB)+" не четое")

//Задание №2
print("\n")
print("Задание №2")
func numQuotientTree(_ numberA: Int)->Bool {
    return (numberA%3)==0
}

numberA = 10
numberB = 120
print(numQuotientTree(numberA) ? String(numberA)+" делится на 3":String(numberA)+" не делится на 3")
print(numQuotientTree(numberB) ? String(numberB)+" делится на 3":String(numberB)+" не делится на 3")


//Задание №3
print("\n")
print("Задание №3")
func expArray()->[Int] {
    var newArray:[Int] = [ ]
    for element in 1...100 {
        newArray.append(element)
    }
    return newArray
}
print(expArray())

//Задание №4
print("\n")
print("Задание №4")
func removElemenArray(_ expArray:[Int])->[Int] {
    var newArray = expArray
    var count = newArray.count-1
    while count>=0 {
        if numEven(newArray[count]) || !numQuotientTree(newArray[count]) {
            newArray.remove(at: count)
    }
        count-=1
    }
    return newArray
}
print(removElemenArray(expArray()))

//Задание №5
print("\n")
print("Задание №5")
func febonachiArray(_ fistrNumber:Double)->[Double] {
    var newArray:[Double]=[]
    newArray.append(fistrNumber)
    var x1:Double = 0
    var x2:Double = 0
    while newArray.count<100 {
        x1 = newArray[newArray.count-1]
        x2 = newArray.count-2<0 ? 0:newArray[newArray.count-2]
        newArray.append(x1+x2)
    }
    return newArray
}
print(febonachiArray(1))

//Задание №6
print("\n")
print("Задание №6")
func simpleNumber(_ countNumber:Int)->[Int] {
    var simpelNummerArray:[Int]=[]
    var x: Int = 1
    while true {
        if x%2 == 0 {
            x+=1
            continue
        }
        var simpleNumber = true
        for element in simpelNummerArray {
            if (x%element == 0 && !(element==1)) || element>x {
                simpleNumber=false
                break
            }
        }
        if simpleNumber {
            simpelNummerArray.append(x)
        }
        if simpelNummerArray.count >= countNumber {
            break
        } else{
           x+=1
        }
    }
    return simpelNummerArray
}
print(simpleNumber(100))
// для пул реквеста



