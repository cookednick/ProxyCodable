# ProxyCodable

A very simple set of two protocols which makes conforming classes to `Codable` more automatic.

Normally to conform to `Codable`, a class must manually encode/decode individual properties. Structs do this automatically when its members all already conform to `Codable`.

Using `ProxyCodable`, you can conform a class to `Codable` utlizing an additional struct type to gain this automatic behavior.

## Guide

1. Conform a class **A** to `ProxyCodable`.
2. Create a struct **B** which conforms to `Codable`.
3. Connect the two types using the `init(proxy: B)` initializer and the `encode()` method within A.
4. **A** now conforms to `Codable`, utilizing the code of **B**.

## Installation

Use Swift Package Manager with this GitHub URL.

## License

````
MIT License

Copyright © 2022 Nicolas Cook Leon

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
````
