# WrappingHStack

A SwiftUI component similar to `HStack` that wraps horizontally overflowing subviews onto the next lines.

  * [Overview](#overview)
  * [Examples](#examples)
  * [Installation](#installation)
  * [License](#license)

## Overview

The library is based on the SwiftUI's `Layout` protocol and thus has the following deployment requirement:

> iOS 16.0+, iPadOS 16.0+, macOS 13.0+, Mac Catalyst 16.0+, tvOS 16.0+, watchOS 9.0+

The component's signature:

``` swift
WrappingHStack(alignment: Alignment = .center,
               horizontalSpacing: CGFloat? = nil,
               verticalSpacing: CGFloat? = nil)
```

The component by default uses the `.center` alignment, but also supports the following alignment values: `.center`, `.leading`, `.topLeading`, `.top`, `.topTrailing`, `.trailing`, `.bottomTrailing`, `.bottom`, `.bottomLeading`. The rest are treated as `.center`.

The component by default uses system the provided spacing, but it's also possible to specify explicit `horizontalSpacing` and `verticalSpacing`.

The component assumes that the largest subview fits into the bounds and there are no infinitely growing subviews. The component assumes that it can grow vertically as much as necessary to fit into the width constraint.

## Examples

An array of tags:

![WrappingHStack](https://user-images.githubusercontent.com/18328341/205410620-19e66e2c-6dc4-4354-9c6a-f25a3704b2ac.gif)

``` swift
WrappingHStack(alignment: .leading) {
    ForEach(tags) {
        Text($0.text)
            .foregroundColor(Color.white)
            .padding(.horizontal, $0.horizontalPadding)
            .padding(.vertical, $0.verticalPadding)
            .background(Color.gray)
            .cornerRadius(16)
    }
}
```


## Installation

You can add WrappingHStack to an Xcode project by adding it as a package dependency.

> https://github.com/ksemianov/WrappingHStack

If you want to use WrappingHStack in a [SwiftPM](https://swift.org/package-manager/) project, 
it's as simple as adding it to a `dependencies` clause in your `Package.swift`:

``` swift
dependencies: [
    .package(url: "https://github.com/ksemianov/WrappingHStack", from: "0.1.0")
]
```

If you want to use WrappingHStack in a [CocoaPods](https://cocoapods.org) project,
add this line to your `Podfile`:

``` ruby
'WrappingHStackLayout', '~> 0.1.2'
```

## License

This library is released under the MIT license. See [LICENSE](LICENSE) for details.
