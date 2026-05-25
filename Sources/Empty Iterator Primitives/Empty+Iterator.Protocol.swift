//
//  Empty+Iterator.Protocol.swift
//  swift-empty-iterator-primitives
//

// `Empty` is the empty iterator: `next()` is always `nil`. The bare `Empty<Element>` type lives in
// `swift-empty-primitives` carrying no behavior of its own; this package attaches its
// iterator-domain conformance — exactly as the sequence and collection domains will each attach
// theirs once the family reconciles.
//
// The `where Element: ~Copyable & ~Escapable` clause restates the bare type's element bound so the
// conformance is unconditional over `Empty`'s full generic domain. Without it the extension would
// implicitly require `Element: Copyable & Escapable`, and the empty iterator would not exist for
// move-only or non-escaping elements — which it must, having no element storage whose copyability
// or escapability could matter.
//
// `@retroactive`: this bridge owns neither `Empty` (swift-empty-primitives) nor
// `Iterator.`Protocol`` (swift-iterator-primitives), so the cross-package conformance is
// retroactive by definition.
extension Empty: @retroactive Iterator.`Protocol` where Element: ~Copyable & ~Escapable {
    public typealias Failure = Never

    /// Always returns `nil`; the empty iterator is exhausted from construction.
    @inlinable
    @_lifetime(&self)
    public mutating func next() -> Element? {
        nil
    }
}
