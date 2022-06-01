@available(iOS 13.0, *)
public protocol ProxyCodable: Codable {
	init(_ proxy: Proxy)
	
	associatedtype Proxy: CodableProxy where Proxy.Associated == Self
}

@available(iOS 13.0, *)
public protocol CodableProxy: Codable {
	init(_ associated: Associated)
	
	associatedtype Associated
}

@available(iOS 13.0, *)
public extension ProxyCodable {
	@inline(__always) init(from decoder: Decoder) throws {
		self.init(try Proxy(from: decoder))
	}
	
	@inline(__always) func encode(to encoder: Encoder) throws {
		try Proxy(self).encode(to: encoder)
	}
}
