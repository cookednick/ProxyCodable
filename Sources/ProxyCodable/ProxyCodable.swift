public protocol ProxyCodable: Codable {
	associatedtype Proxy: Codable
	
	func encode() -> Proxy
	
	init(proxy: Proxy)
}

public extension ProxyCodable {
	@inline(__always) func encode(to encoder: Encoder) throws {
		try encode().encode(to: encoder)
	}
	
	@inline(__always) init(from decoder: Decoder) throws {
		self.init(proxy: try Proxy(from: decoder))
	}
}
