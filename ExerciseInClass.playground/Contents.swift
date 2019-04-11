import UIKit

var x : [Int] = []

for i in 0 ..< 100{
    x.append(i)
}

var double = [1.3,2.5,3.6,1.49,2.54];
//Double list를 입력받아 반올림한 값들의 Int List을 return하는 함수
func get_round(ds: [Double]) -> [Int]{
    var rounded:[Int] = []
    for d in ds{
        if (d - Double(Int(d)) >= 0.5){
            rounded.append(Int(d)+1)
        }
        else {
            rounded.append(Int(d))
        }
    }
    return rounded
}
//Int list를 입력받아 3의 배수인 element만 있는 Int list를 return하는 함수
func get_Multiple_of_three(xs:[Int]) -> [Int]{
    var result : [Int] = []
    for i in xs {
        if (i % 3) == 0{
            result.append(i)
        }
    }
    return result
}
//Int list를 입력받아 Double의 평균을 return하는 함수
func get_average(xs:[Int])->Double{
    var result : Double = 0
    let list_num : Int = xs.count
    
    for x in xs{
        result += Double(x)/Double(list_num)
    }
    return result
}

//십진수의 int list를 입력받아 이진수로 변환한 String list를 반환하는 함수
func decimal_to_binary(xs:[Int]) -> [String]{
    var result : [String] = []
    
    for x in xs{
        var dec = x;
        var sequence = ""
        while(dec != 0){
            sequence = String(dec%2) + sequence
            dec /= 2
        }
        result.append(sequence);
        
    }
    return result;
}
//Int list 를 입력받아 최댓값을 return 하는 함수
func getMaxvalue(xs:[Int]) -> Int
{
    var max = 0;
    for x in xs
    {
        if x > max
        {
            max = x
        }
    }
    return max
}

print(get_round(ds: double))
print(get_Multiple_of_three(xs:x))
print(get_average(xs:x))
print(decimal_to_binary(xs : get_round(ds:double)))
print(getMaxvalue(xs: x))
