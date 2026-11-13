class Ride {
    static var totalRiders = 0
    static let minHeightCm = 100

    let name: String
    private(set) var queueLength = 0 {
        didSet { print("\(name) queue: \(queueLength)") }
    }

    var waitMinutes: Int {
        return queueLength * 2
    }

    init(name: String) {
        self.name = name
    }

    func join(heightCm: Int) {
        if heightCm < Ride.minHeightCm {
            print("Too short for \(name)")
            return
        }
        queueLength += 1
        Ride.totalRiders += 1
    }
}

let dragon = Ride(name: "The Dragon")
let duplo = Ride(name: "Duplo Train")
dragon.join(heightCm: 130)
dragon.join(heightCm: 90)
duplo.join(heightCm: 110)
print(dragon.waitMinutes)
print(Ride.totalRiders)
