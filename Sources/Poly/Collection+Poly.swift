//
//  Collection+Poly.swift
//  Poly
//
//  Created by Mathew Polzin on 1/13/19.
//

// MARK: 1 type
extension Collection where Element: _Poly1 {
	public subscript(type: Element.A.Type) -> [Element.A] {
		return compactMap { $0.a }
	}
}

// MARK: 2 types
extension Collection where Element: _Poly2 {
	public subscript(type: Element.B.Type) -> [Element.B] {
		return compactMap { $0.b }
	}
}

// MARK: 3 types
extension Collection where Element: _Poly3 {
	public subscript(type: Element.C.Type) -> [Element.C] {
		return compactMap { $0.c }
	}
}

// MARK: 4 types
extension Collection where Element: _Poly4 {
	public subscript(type: Element.D.Type) -> [Element.D] {
		return compactMap { $0.d }
	}
}

// MARK: 5 types
extension Collection where Element: _Poly5 {
	public subscript(type: Element.E.Type) -> [Element.E] {
		return compactMap { $0.e }
	}
}

// MARK: 6 types
extension Collection where Element: _Poly6 {
	public subscript(type: Element.F.Type) -> [Element.F] {
		return compactMap { $0.f }
	}
}

// MARK: 7 types
extension Collection where Element: _Poly7 {
	public subscript(type: Element.G.Type) -> [Element.G] {
		return compactMap { $0.g }
	}
}

// MARK: 8 types
extension Collection where Element: _Poly8 {
	public subscript(type: Element.H.Type) -> [Element.H] {
		return compactMap { $0.h }
	}
}

// MARK: 9 types
extension Collection where Element: _Poly9 {
	public subscript(type: Element.I.Type) -> [Element.I] {
		return compactMap { $0.i }
	}
}
