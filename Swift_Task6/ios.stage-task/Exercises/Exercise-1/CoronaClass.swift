import Foundation

class CoronaClass {
 
     var seats = [Int]()
     let n:Int
    
     init(n: Int) {
        self.n = n
     }
     
     func seat() -> Int {
        //1st seat
        if seats.isEmpty {
            seats.append(0)
            return 0
        }
        

        return -1
     }
     
     func leave(_ p: Int) {
        if let pos = seats.firstIndex(of: p) { seats.remove(at: pos) }
     }
}
