//
//  PolyTests.swift
//  Poly
//
//  Created by Mathew Polzin on 11/23/18.
//

import XCTest
import Foundation
@testable import Poly

// MARK: - init
class PolyTests: XCTestCase {
	func test_init_Poly0() {
		let _ = Poly0()
	}

	func test_init_Poly1() {
		let entity = TestType5(e: 1)
		let poly = Poly1(entity)
		XCTAssertEqual(poly.a, entity)
	}

	func test_init_Poly2() {
		let entity = TestType5(e: 1)
		let poly = Poly2<TestType5, TestType1>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)

		let poly2 = Poly2<TestType1, TestType5>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
	}

	func test_init_Poly3() {
		let entity = TestType5(e: 1)
		let poly = Poly3<TestType5, TestType1, TestType2>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)

		let poly2 = Poly3<TestType1, TestType5, TestType2>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)

		let poly3 = Poly3<TestType1, TestType2, TestType5>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
	}

	func test_init_Poly4() {
		let entity = TestType5(e: 1)
		let poly = Poly4<TestType5, TestType1, TestType2, TestType3>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)

		let poly2 = Poly4<TestType1, TestType5, TestType2, TestType3>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)

		let poly3 = Poly4<TestType1, TestType2, TestType5, TestType3>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)

		let poly4 = Poly4<TestType1, TestType2, TestType3, TestType5>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
	}

	func test_init_Poly5() {
		let entity = TestType5(e: 1)
		let poly = Poly5<TestType5, TestType1, TestType2, TestType3, TestType4>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)

		let poly2 = Poly5<TestType1, TestType5, TestType2, TestType3, TestType4>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)

		let poly3 = Poly5<TestType1, TestType2, TestType5, TestType3, TestType4>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)

		let poly4 = Poly5<TestType1, TestType2, TestType3, TestType5, TestType4>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)

		let poly5 = Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
	}

	func test_init_Poly6() {
		let entity = TestType5(e: 1)
		let poly = Poly6<TestType5, TestType1, TestType2, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)

		let poly2 = Poly6<TestType1, TestType5, TestType2, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)

		let poly3 = Poly6<TestType1, TestType2, TestType5, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)

		let poly4 = Poly6<TestType1, TestType2, TestType3, TestType5, TestType4, TestType6>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)

		let poly5 = Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)

		let poly6 = Poly6<TestType1, TestType2, TestType3, TestType4, TestType6, TestType5>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
	}

	func test_init_Poly7() {
		let entity = TestType5(e: 1)
		let poly = Poly7<TestType5, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)

		let poly2 = Poly7<TestType1, TestType5, TestType2, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)

		let poly3 = Poly7<TestType1, TestType2, TestType5, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)

		let poly4 = Poly7<TestType1, TestType2, TestType3, TestType5, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)

		let poly5 = Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)

		let poly6 = Poly7<TestType1, TestType2, TestType3, TestType4, TestType6, TestType5, TestType7>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)

		let poly7 = Poly7<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType5>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
	}

	func test_init_Poly8() {
		let entity = TestType5(e: 1)
		let poly = Poly8<TestType5, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)
		XCTAssertNil(poly.h)

		let poly2 = Poly8<TestType1, TestType5, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)
		XCTAssertNil(poly2.h)

		let poly3 = Poly8<TestType1, TestType2, TestType5, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)
		XCTAssertNil(poly3.h)

		let poly4 = Poly8<TestType1, TestType2, TestType3, TestType5, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)
		XCTAssertNil(poly4.h)

		let poly5 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)
		XCTAssertNil(poly5.h)

		let poly6 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, TestType5, TestType7, TestType8>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)
		XCTAssertNil(poly6.h)

		let poly7 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType5, TestType8>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
		XCTAssertNil(poly7.h)

		let poly8 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType5>(entity)
		XCTAssertEqual(poly8.h, entity)
		XCTAssertNil(poly8.a)
		XCTAssertNil(poly8.b)
		XCTAssertNil(poly8.c)
		XCTAssertNil(poly8.d)
		XCTAssertNil(poly8.e)
		XCTAssertNil(poly8.f)
		XCTAssertNil(poly8.g)
	}

	func test_init_Poly9() {
		let entity = TestType5(e: 1)
		let poly = Poly9<TestType5, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)
		XCTAssertNil(poly.h)
		XCTAssertNil(poly.i)

		let poly2 = Poly9<TestType1, TestType5, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)
		XCTAssertNil(poly2.h)
		XCTAssertNil(poly2.i)

		let poly3 = Poly9<TestType1, TestType2, TestType5, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)
		XCTAssertNil(poly3.h)
		XCTAssertNil(poly3.i)

		let poly4 = Poly9<TestType1, TestType2, TestType3, TestType5, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)
		XCTAssertNil(poly4.h)
		XCTAssertNil(poly4.i)

		let poly5 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)
		XCTAssertNil(poly5.h)
		XCTAssertNil(poly5.i)

		let poly6 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType5, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)
		XCTAssertNil(poly6.h)
		XCTAssertNil(poly6.i)

		let poly7 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType5, TestType8, TestType9>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
		XCTAssertNil(poly7.h)
		XCTAssertNil(poly7.i)

		let poly8 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType5, TestType9>(entity)
		XCTAssertEqual(poly8.h, entity)
		XCTAssertNil(poly8.a)
		XCTAssertNil(poly8.b)
		XCTAssertNil(poly8.c)
		XCTAssertNil(poly8.d)
		XCTAssertNil(poly8.e)
		XCTAssertNil(poly8.f)
		XCTAssertNil(poly8.g)
		XCTAssertNil(poly8.i)

		let poly9 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9, TestType5>(entity)
		XCTAssertEqual(poly9.i, entity)
		XCTAssertNil(poly9.a)
		XCTAssertNil(poly9.b)
		XCTAssertNil(poly9.c)
		XCTAssertNil(poly9.d)
		XCTAssertNil(poly9.e)
		XCTAssertNil(poly9.f)
		XCTAssertNil(poly9.g)
		XCTAssertNil(poly9.h)
	}
}

// MARK: - switching with protocol

extension PolyTests {
	func test_switchWithProtocol() {
		let testThings: [Poly3<TestType1, TestType2, TestType3>] = [
			.init(TestType1(a: 1)),
			.init(TestType2(b: 2)),
			.init(TestType3(c: 3))
		]

		let testString = testThings.map { $0.test }.joined(separator: " ")

		XCTAssertEqual(testString, "Hello There World")
	}
}

// MARK: - subscript lookup
extension PolyTests {
	func test_Poly1_lookup() {
		let entity = decoded(type: TestType1.self, data: poly_entity1)
		let poly = decoded(type: Poly1<TestType1>.self, data: poly_entity1)

		XCTAssertEqual(entity, poly[TestType1.self])
	}

	func test_Poly2_lookup() {
		let entity = decoded(type: TestType2.self, data: poly_entity2)
		let poly = decoded(type: Poly2<TestType1, TestType2>.self, data: poly_entity2)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertEqual(entity, poly[TestType2.self])
	}

	func test_Poly3_lookup() {
		let entity = decoded(type: TestType3.self, data: poly_entity3)
		let poly = decoded(type: Poly3<TestType1, TestType2, TestType3>.self, data: poly_entity3)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertEqual(entity, poly[TestType3.self])
	}

	func test_Poly4_lookup() {
		let entity = decoded(type: TestType4.self, data: poly_entity4)
		let poly = decoded(type: Poly4<TestType1, TestType2, TestType3, TestType4>.self, data: poly_entity4)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertEqual(entity, poly[TestType4.self])
	}

	func test_Poly5_lookup() {
		let entity = decoded(type: TestType5.self, data: poly_entity5)
		let poly = decoded(type: Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.self, data: poly_entity5)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertNil(poly[TestType4.self])
		XCTAssertEqual(entity, poly[TestType5.self])
	}

	func test_Poly6_lookup() {
		let entity = decoded(type: TestType6.self, data: poly_entity6)
		let poly = decoded(type: Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.self, data: poly_entity6)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertNil(poly[TestType4.self])
		XCTAssertNil(poly[TestType5.self])
		XCTAssertEqual(entity, poly[TestType6.self])
	}

	func test_Poly7_lookup() {
		let entity = decoded(type: TestType7.self, data: poly_entity7)
		let poly = decoded(type: Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.self, data: poly_entity7)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertNil(poly[TestType4.self])
		XCTAssertNil(poly[TestType5.self])
		XCTAssertNil(poly[TestType6.self])
		XCTAssertEqual(entity, poly[TestType7.self])
	}

	func test_Poly8_lookup() {
		let entity = decoded(type: TestType8.self, data: poly_entity8)
		let poly = decoded(type: Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.self, data: poly_entity8)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertNil(poly[TestType4.self])
		XCTAssertNil(poly[TestType5.self])
		XCTAssertNil(poly[TestType6.self])
		XCTAssertNil(poly[TestType7.self])
		XCTAssertEqual(entity, poly[TestType8.self])
	}

	func test_Poly9_lookup() {
		let entity = decoded(type: TestType9.self, data: poly_entity9)
		let poly = decoded(type: Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.self, data: poly_entity9)

		XCTAssertNil(poly[TestType1.self])
		XCTAssertNil(poly[TestType2.self])
		XCTAssertNil(poly[TestType3.self])
		XCTAssertNil(poly[TestType4.self])
		XCTAssertNil(poly[TestType5.self])
		XCTAssertNil(poly[TestType6.self])
		XCTAssertNil(poly[TestType7.self])
		XCTAssertNil(poly[TestType8.self])
		XCTAssertEqual(entity, poly[TestType9.self])
	}
}

// MARK: - failures
extension PolyTests {
	func test_Poly1_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly1<TestType1>.self, from: poly_entity2))
	}

	func test_Poly2_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly2<TestType1, TestType2>.self, from: poly_entity3))
	}

	func test_Poly3_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly3<TestType1, TestType2, TestType3>.self, from: poly_entity4))
	}

	func test_Poly4_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly4<TestType1, TestType2, TestType3, TestType4>.self, from: poly_entity5))
	}

	func test_Poly5_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.self, from: poly_entity6))
	}

	func test_Poly6_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.self, from: poly_entity7))
	}

	func test_Poly7_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.self, from: poly_entity8))
	}

	func test_Poly8_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.self, from: poly_entity9))
	}

	func test_Poly9_decode_throws_typeNotFound() {
		XCTAssertThrowsError(try JSONDecoder().decode(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.self, from: poly_entity10))
	}
}

// MARK: - Test types
extension PolyTests {
	struct TestType1: Codable, Equatable {
		let a: Int
	}

	struct TestType2: Codable, Equatable {
		let b: Int
	}

	struct TestType3: Codable, Equatable {
		let c: Int
	}

	struct TestType4: Codable, Equatable {
		let d: Int
	}

	struct TestType5: Codable, Equatable {
		let e: Int
	}

	struct TestType6: Codable, Equatable {
		let f: Int
	}

	struct TestType7: Codable, Equatable {
		let g: Int
	}

	struct TestType8: Codable, Equatable {
		let h: Int
	}

	struct TestType9: Codable, Equatable {
		let i: Int
	}
}

protocol TestProtocol {
	var test: String { get }
}

extension PolyTests.TestType1: TestProtocol {
	var test: String { return "Hello" }
}

extension PolyTests.TestType2: TestProtocol {
	var test: String { return "There" }
}

extension PolyTests.TestType3: TestProtocol {
	var test: String { return "World" }
}

extension Poly3: TestProtocol where A == PolyTests.TestType1, B == PolyTests.TestType2, C == PolyTests.TestType3 {
	var test: String {
		switch self {
		case .a(let x as TestProtocol),
			 .b(let x as TestProtocol),
			 .c(let x as TestProtocol):
			return x.test
		}
	}
}

let poly_entity1 = """
{
	"a": 1
}
""".data(using: .utf8)!

let poly_entity2 = """
{
	"b": 1
}
""".data(using: .utf8)!

let poly_entity3 = """
{
	"c": 1
}
""".data(using: .utf8)!

let poly_entity4 = """
{
	"d": 1
}
""".data(using: .utf8)!

let poly_entity5 = """
{
	"e": 1
}
""".data(using: .utf8)!

let poly_entity6 = """
{
	"f": 1
}
""".data(using: .utf8)!

let poly_entity7 = """
{
	"g": 1
}
""".data(using: .utf8)!

let poly_entity8 = """
{
	"h": 1
}
""".data(using: .utf8)!

let poly_entity9 = """
{
	"i": 1
}
""".data(using: .utf8)!

let poly_entity10 = """
{
	"j": 1
}
""".data(using: .utf8)!
