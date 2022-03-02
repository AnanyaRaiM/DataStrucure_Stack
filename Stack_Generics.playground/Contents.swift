import UIKit
// Stack with generics

class Node<T> {
    var value: T?
    var next: Node?
    init(value: T){
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?

    func push(_ value: T){
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }

    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }

    func peek() -> T? {
        return top?.value
    }
}

struct User{
    var name: String
    var age: Int
}
let me = User(name: "Me", age: 20)
let you = User(name: "you", age: 23)

let stack = Stack<User>() // use Stack<Int> if pushing Int
stack.push(me)
stack.push(you)

stack.pop()?.name
stack.pop()
stack.pop()

/* Stacks with Int values
 
class Node {
    var value: Int?
    var next: Node?
    init(value: Int){
        self.value = value
    }
}

class Stack {
    var top: Node?
    
    func push(_ value: Int){
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> Int? {
        return top?.value
    }
}

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

stack.pop()
stack.pop()
stack.pop()
stack.pop()
*/
