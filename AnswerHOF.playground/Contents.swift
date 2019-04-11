import UIKit

var x : [Int] = []

for i in 0 ..< 100{
    x.append(i)
}

var double = [1.3, 2.5, 3.6, 1.49, 2.54];
//Double list를 입력받아 반올림한 값들의 Int List을 return하는 함수
func get_round(ds: [Double]) -> [Int] {
    let intlist = ds.map({(value:Double) -> Int in
        if value - Double(Int(value)) >= 0.5 {
            return Int(value) + 1
        }
        else {
            return Int(value)
        }
    })
    return intlist
}
//Int list를 입력받아 3의 배수인 element만 있는 Int list를 return하는 함수
func get_Multiple_of_three(xs:[Int]) -> [Int]{
    return xs.filter{ $0 % 3 == 0}
}

//Int list를 입력받아 Double의 평균을 return하는 함수
func get_average(xs:[Int])->Double{
    return Double( xs.reduce(0, + ) ) / Double(xs.count)
}

//십진수의 int list를 입력받아 이진수로 변환한 String list를 반환하는 함수
func decimal_to_binary(xs:[Int]) -> [String]{
    return xs.map({(value:Int) -> String in
        var x = value
        var result = ""
        while (x != 0) {
            result = String(x % 2) + result
            x /= 2
        }
        return result
    })
}
//Int list 를 입력받아 최댓값을 return 하는 함수
func getMaxvalue(xs:[Int]) -> Int
{
    let result = xs.reduce(0, {(v1:Int, v2:Int) -> Int in
        return max(v1,v2)
    })
    return result
}

print(get_round(ds: double))
print(get_Multiple_of_three(xs:x))
print(get_average(xs:x))
print(decimal_to_binary(xs : get_round(ds:double)))
print(getMaxvalue(xs: x))
