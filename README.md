# swift-empty-iterator-primitives

The iterator-domain face of `Empty` — conforms the zero-element type to `Iterator.\`Protocol\`` (the
empty iterator: `next()` is always `nil`).

This is an integration package: it declares no types of its own, only the conformance bridging
`swift-empty-primitives` (`Empty`, the bare zero-element type) to `swift-iterator-primitives`
(`Iterator.\`Protocol\``). The conformance is unconditional over `Empty`'s full `~Copyable &
~Escapable` element domain — the empty iterator has no element storage, so it exists for every
element type.

    import Empty_Iterator_Primitives

    var iterator = Empty<Int>()
    // iterator.next() == nil

## License

Apache 2.0.
