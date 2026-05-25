import Testing
import Empty_Iterator_Primitives

@Suite("Empty Iterator Tests")
struct EmptyIteratorTests {
    @Suite struct Unit {}
}

extension EmptyIteratorTests.Unit {
    @Test
    func `empty iterator yields nothing`() {
        var iter = Empty<Int>()
        #expect(iter.next() == nil)
    }

    @Test
    func `empty iterator stays exhausted across repeated calls`() {
        var iter = Empty<String>()
        #expect(iter.next() == nil)
        #expect(iter.next() == nil)
        #expect(iter.next() == nil)
    }
}
