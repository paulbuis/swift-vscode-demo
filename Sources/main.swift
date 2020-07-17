print("Hello \u{1F60A}")

// import statements are normally put at the
// top of a source code file. Here, I'm pointing out
// that print() is built-in, but Date() is not.
import Foundation
let now = Date()

print("Now it is ", now, " (at the Royal Observatory)")
print("π =", 4.0*atan(1.0))

func fact(_ n: Int32) -> Int64 {
    if (n <= 1) {
        return 1
    }
    else {
        return Int64(n)*fact(n-1)
    }
}
print("6! = ", fact(6))
print("20! = ", fact(20))

let N = 1000000
var array = [Float](repeating: 0.0, count:N);
for i in 0..<N {
    array[i] = Float(i+1)
}

@inlinable func add(a:Double, b:Float) -> Double {
    return a + Double(b)
}

print(array.reduce(0.0, add) == Double(Int64(N)*Int64(N+1)/2))
let start = Date()
//var sum = Double(0)
//for i in 0..<N {
//    sum += Double(array[i])
//}
var sum =  Double(0)
for _ in 0..<1000 {
    sum = array.reduce(0.0, add)
}
let end = Date()
let interval = DateInterval(start: start, end: end)
let elapsed = interval.duration
let flop_count = N*1000
let gigaflops = Double(flop_count) / elapsed / 1.0e+9
print("Elapsed Time:", elapsed)
print("Gigaflops: ", gigaflops)

