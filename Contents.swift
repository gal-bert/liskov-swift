import UIKit

protocol Shapes {
    associatedtype T
    func area() -> T
}

class Rectangle: Shapes {
    
    typealias T = Int
    
    var width: Int
    var height: Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    func area() -> Int {
        return width * height
    }
}

class Square: Shapes {
    
    typealias T = Int
    
    var side: Int
    
    init(side: Int) {
        self.side = side
    }
    
    func area() -> Int {
        return side * side
    }
    
}

class Triangle: Shapes {
    
    typealias T = Double
        
    var base: Double
    var height: Double
    
    init (base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    func area() -> Double {
        return 0.5 * base * height
    }
    
}

let rectangle = Rectangle(width: 10, height: 5)
print(rectangle.area())

let square = Square(side: 5)
print(square.area())

let triangle = Triangle(base: 5, height: 7)
print(triangle.area())

