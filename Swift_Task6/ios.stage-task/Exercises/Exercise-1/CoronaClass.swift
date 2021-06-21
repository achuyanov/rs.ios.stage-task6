import Foundation

class CoronaClass {
 
     var seats = [Int]()
     let n:Int
    
     init(n: Int) {
        self.n = n
     }
     
     func seat() -> Int {
        //1st seat
        if seats.isEmpty {seats.append(0);return 0}
        
        //last seat
        if (seats.count == 1) {seats.append(n-1);return n-1}
        
        // 0123456789
        // x___x_x__x
        
        var dist = [Int]()
        let len:Int = seats.count-2
        var pos:Int
        
        for i in 0...len {
            let k = seats[i+1] - seats[i]-1
            pos = k/2
            if (k%2==0) {pos-=1}
            dist.append(pos);
        }
        
        // max offset pos
        let d = dist.max() ?? 0
        let dPos = dist.firstIndex(of: d) ?? 0
        
        let seat = seats[dPos] + d + 1
        seats.insert(seat, at: dPos+1)
        return seat
     }
     
     func leave(_ p: Int) {
        if let pos = seats.firstIndex(of: p) { seats.remove(at: pos) }
     }
}
