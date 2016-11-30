// Super Memo

public class SuperMemo {
    public class func sayHello() -> String {
        print("Hello")
        return "World"
    }
    
    public class func update(card c:Card, with response:Double) -> Card {
        c.repetition += 1
        c.eFactor = c.eFactor - 0.8 + 0.28 * response - 0.02 * response * response
        return c
    }
}
