@available(iOS 13.0, *)
public protocol ProxyCodable: Codable {
	init(_ proxy: CodableProxy)
	
	associatedtype CodableProxy: CodableProxy where CodableProxy.Associated == Self
}

@available(iOS 13.0, *)
public protocol CodableProxy: Codable {
	init(_ associated: Associated)
	
	associatedtype Associated
}

@available(iOS 13.0, *)
public extension ProxyCodable {
	@inline(__always) init(from decoder: Decoder) throws {
		self.init(try CodableProxy(from: decoder))
	}
	
	@inline(__always) func encode(to encoder: Encoder) throws {
		try CodableProxy(self).encode(to: encoder)
	}
}
