
protocol Shape {
    func name()      -> String
    func area()      -> Float
    func perimeter() -> Float
}

class Rectangle : Shape {
    let w, h: Float
    init(w: Float, h: Float) { self.w = w; self.h = h }
    func name()      -> String { "Rectangle" }
    func area()      -> Float  { w * h }
    func perimeter() -> Float  { 2 * w + 2 * h }
}

class Circle : Shape {
    let r: Float
    init(r: Float) { self.r = r }
    func name()      -> String { "Circle" }
    func area()      -> Float  { Float.pi * r * r }
    func perimeter() -> Float  { 2 * Float.pi * r }
}

class Square : Shape {
    let w: Float
    init(w: Float) { self.w = w }
    func name()      -> String { "Square" }
    func area()      -> Float  { w * w }
    func perimeter() -> Float  { 4 * w }
}

func printShapeInfo<T: Shape>(_ s: T) {
    print("Shape: \(s.name())\n" +
          "Area:  \(s.area())\n" +
          "Perim: \(s.perimeter())\n")
}

let c = Circle(r: 1)
let r = Rectangle(w: 2, h: 3)
let s = Square(w: 3)

printShapeInfo(c)
printShapeInfo(r)
printShapeInfo(s)
