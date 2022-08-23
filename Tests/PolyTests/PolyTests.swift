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
		let a = Poly0()
		let b = Poly0()

		XCTAssertEqual(a, b)
	}

	func test_init_Poly1() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly1(entity)
		XCTAssertEqual(poly.a, entity)
	}

	func test_init_Poly2() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly2<MatchingType, TestType1>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)

		let poly2 = Poly2<TestType1, MatchingType>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
	}

	func test_init_Poly3() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly3<MatchingType, TestType1, TestType2>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)

		let poly2 = Poly3<TestType1, MatchingType, TestType2>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)

		let poly3 = Poly3<TestType1, TestType2, MatchingType>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
	}

	func test_init_Poly4() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly4<MatchingType, TestType1, TestType2, TestType3>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)

		let poly2 = Poly4<TestType1, MatchingType, TestType2, TestType3>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)

		let poly3 = Poly4<TestType1, TestType2, MatchingType, TestType3>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)

		let poly4 = Poly4<TestType1, TestType2, TestType3, MatchingType>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
	}

	func test_init_Poly5() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly5<MatchingType, TestType1, TestType2, TestType3, TestType4>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)

		let poly2 = Poly5<TestType1, MatchingType, TestType2, TestType3, TestType4>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)

		let poly3 = Poly5<TestType1, TestType2, MatchingType, TestType3, TestType4>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)

		let poly4 = Poly5<TestType1, TestType2, TestType3, MatchingType, TestType4>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)

		let poly5 = Poly5<TestType1, TestType2, TestType3, TestType4, MatchingType>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
	}

	func test_init_Poly6() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly6<MatchingType, TestType1, TestType2, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)

		let poly2 = Poly6<TestType1, MatchingType, TestType2, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)

		let poly3 = Poly6<TestType1, TestType2, MatchingType, TestType3, TestType4, TestType6>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)

		let poly4 = Poly6<TestType1, TestType2, TestType3, MatchingType, TestType4, TestType6>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)

		let poly5 = Poly6<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)

		let poly6 = Poly6<TestType1, TestType2, TestType3, TestType4, TestType6, MatchingType>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
	}

	func test_init_Poly7() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly7<MatchingType, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)

		let poly2 = Poly7<TestType1, MatchingType, TestType2, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)

		let poly3 = Poly7<TestType1, TestType2, MatchingType, TestType3, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)

		let poly4 = Poly7<TestType1, TestType2, TestType3, MatchingType, TestType4, TestType6, TestType7>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)

		let poly5 = Poly7<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)

		let poly6 = Poly7<TestType1, TestType2, TestType3, TestType4, TestType6, MatchingType, TestType7>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)

		let poly7 = Poly7<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, MatchingType>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
	}

	func test_init_Poly8() {
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly8<MatchingType, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)
		XCTAssertNil(poly.h)

		let poly2 = Poly8<TestType1, MatchingType, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)
		XCTAssertNil(poly2.h)

		let poly3 = Poly8<TestType1, TestType2, MatchingType, TestType3, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)
		XCTAssertNil(poly3.h)

		let poly4 = Poly8<TestType1, TestType2, TestType3, MatchingType, TestType4, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)
		XCTAssertNil(poly4.h)

		let poly5 = Poly8<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)
		XCTAssertNil(poly5.h)

		let poly6 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, MatchingType, TestType7, TestType8>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)
		XCTAssertNil(poly6.h)

		let poly7 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, MatchingType, TestType8>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
		XCTAssertNil(poly7.h)

		let poly8 = Poly8<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, MatchingType>(entity)
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
		let entity = MatchingType(zzzzz: "hello world")
		let poly = Poly9<MatchingType, TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly.a, entity)
		XCTAssertNil(poly.b)
		XCTAssertNil(poly.c)
		XCTAssertNil(poly.d)
		XCTAssertNil(poly.e)
		XCTAssertNil(poly.f)
		XCTAssertNil(poly.g)
		XCTAssertNil(poly.h)
		XCTAssertNil(poly.i)

		let poly2 = Poly9<TestType1, MatchingType, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly2.b, entity)
		XCTAssertNil(poly2.a)
		XCTAssertNil(poly2.c)
		XCTAssertNil(poly2.d)
		XCTAssertNil(poly2.e)
		XCTAssertNil(poly2.f)
		XCTAssertNil(poly2.g)
		XCTAssertNil(poly2.h)
		XCTAssertNil(poly2.i)

		let poly3 = Poly9<TestType1, TestType2, MatchingType, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly3.c, entity)
		XCTAssertNil(poly3.a)
		XCTAssertNil(poly3.b)
		XCTAssertNil(poly3.d)
		XCTAssertNil(poly3.e)
		XCTAssertNil(poly3.f)
		XCTAssertNil(poly3.g)
		XCTAssertNil(poly3.h)
		XCTAssertNil(poly3.i)

		let poly4 = Poly9<TestType1, TestType2, TestType3, MatchingType, TestType4, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly4.d, entity)
		XCTAssertNil(poly4.a)
		XCTAssertNil(poly4.b)
		XCTAssertNil(poly4.c)
		XCTAssertNil(poly4.e)
		XCTAssertNil(poly4.f)
		XCTAssertNil(poly4.g)
		XCTAssertNil(poly4.h)
		XCTAssertNil(poly4.i)

		let poly5 = Poly9<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly5.e, entity)
		XCTAssertNil(poly5.a)
		XCTAssertNil(poly5.b)
		XCTAssertNil(poly5.c)
		XCTAssertNil(poly5.d)
		XCTAssertNil(poly5.f)
		XCTAssertNil(poly5.g)
		XCTAssertNil(poly5.h)
		XCTAssertNil(poly5.i)

		let poly6 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, MatchingType, TestType7, TestType8, TestType9>(entity)
		XCTAssertEqual(poly6.f, entity)
		XCTAssertNil(poly6.a)
		XCTAssertNil(poly6.b)
		XCTAssertNil(poly6.c)
		XCTAssertNil(poly6.d)
		XCTAssertNil(poly6.e)
		XCTAssertNil(poly6.g)
		XCTAssertNil(poly6.h)
		XCTAssertNil(poly6.i)

		let poly7 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, MatchingType, TestType8, TestType9>(entity)
		XCTAssertEqual(poly7.g, entity)
		XCTAssertNil(poly7.a)
		XCTAssertNil(poly7.b)
		XCTAssertNil(poly7.c)
		XCTAssertNil(poly7.d)
		XCTAssertNil(poly7.e)
		XCTAssertNil(poly7.f)
		XCTAssertNil(poly7.h)
		XCTAssertNil(poly7.i)

		let poly8 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, MatchingType, TestType9>(entity)
		XCTAssertEqual(poly8.h, entity)
		XCTAssertNil(poly8.a)
		XCTAssertNil(poly8.b)
		XCTAssertNil(poly8.c)
		XCTAssertNil(poly8.d)
		XCTAssertNil(poly8.e)
		XCTAssertNil(poly8.f)
		XCTAssertNil(poly8.g)
		XCTAssertNil(poly8.i)

		let poly9 = Poly9<TestType1, TestType2, TestType3, TestType4, TestType6, TestType7, TestType8, TestType9, MatchingType>(entity)
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

    func test_init_Poly10() {
        let entity = MatchingType(zzzzz: "hello world")
        let poly = Poly10<MatchingType, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly.a, entity)
        XCTAssertNil(poly.b)
        XCTAssertNil(poly.c)
        XCTAssertNil(poly.d)
        XCTAssertNil(poly.e)
        XCTAssertNil(poly.f)
        XCTAssertNil(poly.g)
        XCTAssertNil(poly.h)
        XCTAssertNil(poly.i)
        XCTAssertNil(poly.j)

        let poly2 = Poly10<TestType1, MatchingType, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly2.b, entity)
        XCTAssertNil(poly2.a)
        XCTAssertNil(poly2.c)
        XCTAssertNil(poly2.d)
        XCTAssertNil(poly2.e)
        XCTAssertNil(poly2.f)
        XCTAssertNil(poly2.g)
        XCTAssertNil(poly2.h)
        XCTAssertNil(poly2.i)
        XCTAssertNil(poly2.j)

        let poly3 = Poly10<TestType1, TestType2, MatchingType, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly3.c, entity)
        XCTAssertNil(poly3.a)
        XCTAssertNil(poly3.b)
        XCTAssertNil(poly3.d)
        XCTAssertNil(poly3.e)
        XCTAssertNil(poly3.f)
        XCTAssertNil(poly3.g)
        XCTAssertNil(poly3.h)
        XCTAssertNil(poly3.i)
        XCTAssertNil(poly3.j)

        let poly4 = Poly10<TestType1, TestType2, TestType3, MatchingType, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly4.d, entity)
        XCTAssertNil(poly4.a)
        XCTAssertNil(poly4.b)
        XCTAssertNil(poly4.c)
        XCTAssertNil(poly4.e)
        XCTAssertNil(poly4.f)
        XCTAssertNil(poly4.g)
        XCTAssertNil(poly4.h)
        XCTAssertNil(poly4.i)
        XCTAssertNil(poly4.j)

        let poly5 = Poly10<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly5.e, entity)
        XCTAssertNil(poly5.a)
        XCTAssertNil(poly5.b)
        XCTAssertNil(poly5.c)
        XCTAssertNil(poly5.d)
        XCTAssertNil(poly5.f)
        XCTAssertNil(poly5.g)
        XCTAssertNil(poly5.h)
        XCTAssertNil(poly5.i)
        XCTAssertNil(poly5.j)

        let poly6 = Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, MatchingType, TestType7, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly6.f, entity)
        XCTAssertNil(poly6.a)
        XCTAssertNil(poly6.b)
        XCTAssertNil(poly6.c)
        XCTAssertNil(poly6.d)
        XCTAssertNil(poly6.e)
        XCTAssertNil(poly6.g)
        XCTAssertNil(poly6.h)
        XCTAssertNil(poly6.i)
        XCTAssertNil(poly6.j)

        let poly7 = Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, MatchingType, TestType8, TestType9, TestType10>(entity)
        XCTAssertEqual(poly7.g, entity)
        XCTAssertNil(poly7.a)
        XCTAssertNil(poly7.b)
        XCTAssertNil(poly7.c)
        XCTAssertNil(poly7.d)
        XCTAssertNil(poly7.e)
        XCTAssertNil(poly7.f)
        XCTAssertNil(poly7.h)
        XCTAssertNil(poly7.i)
        XCTAssertNil(poly7.j)

        let poly8 = Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, MatchingType, TestType9, TestType10>(entity)
        XCTAssertEqual(poly8.h, entity)
        XCTAssertNil(poly8.a)
        XCTAssertNil(poly8.b)
        XCTAssertNil(poly8.c)
        XCTAssertNil(poly8.d)
        XCTAssertNil(poly8.e)
        XCTAssertNil(poly8.f)
        XCTAssertNil(poly8.g)
        XCTAssertNil(poly8.i)
        XCTAssertNil(poly8.j)

        let poly9 = Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, MatchingType, TestType10>(entity)
        XCTAssertEqual(poly9.i, entity)
        XCTAssertNil(poly9.a)
        XCTAssertNil(poly9.b)
        XCTAssertNil(poly9.c)
        XCTAssertNil(poly9.d)
        XCTAssertNil(poly9.e)
        XCTAssertNil(poly9.f)
        XCTAssertNil(poly9.g)
        XCTAssertNil(poly9.h)
        XCTAssertNil(poly9.j)

        let poly10 = Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, MatchingType>(entity)
        XCTAssertEqual(poly10.j, entity)
        XCTAssertNil(poly10.a)
        XCTAssertNil(poly10.b)
        XCTAssertNil(poly10.c)
        XCTAssertNil(poly10.d)
        XCTAssertNil(poly10.e)
        XCTAssertNil(poly10.f)
        XCTAssertNil(poly10.g)
        XCTAssertNil(poly10.h)
        XCTAssertNil(poly10.i)
    }

    func test_init_Poly11() {
        let entity = MatchingType(zzzzz: "hello world")
        let poly = Poly11<MatchingType, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly.a, entity)
        XCTAssertNil(poly.b)
        XCTAssertNil(poly.c)
        XCTAssertNil(poly.d)
        XCTAssertNil(poly.e)
        XCTAssertNil(poly.f)
        XCTAssertNil(poly.g)
        XCTAssertNil(poly.h)
        XCTAssertNil(poly.i)
        XCTAssertNil(poly.j)
        XCTAssertNil(poly.k)

        let poly2 = Poly11<TestType1, MatchingType, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly2.b, entity)
        XCTAssertNil(poly2.a)
        XCTAssertNil(poly2.c)
        XCTAssertNil(poly2.d)
        XCTAssertNil(poly2.e)
        XCTAssertNil(poly2.f)
        XCTAssertNil(poly2.g)
        XCTAssertNil(poly2.h)
        XCTAssertNil(poly2.i)
        XCTAssertNil(poly2.j)
        XCTAssertNil(poly2.k)

        let poly3 = Poly11<TestType1, TestType2, MatchingType, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly3.c, entity)
        XCTAssertNil(poly3.a)
        XCTAssertNil(poly3.b)
        XCTAssertNil(poly3.d)
        XCTAssertNil(poly3.e)
        XCTAssertNil(poly3.f)
        XCTAssertNil(poly3.g)
        XCTAssertNil(poly3.h)
        XCTAssertNil(poly3.i)
        XCTAssertNil(poly3.j)
        XCTAssertNil(poly3.k)

        let poly4 = Poly11<TestType1, TestType2, TestType3, MatchingType, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly4.d, entity)
        XCTAssertNil(poly4.a)
        XCTAssertNil(poly4.b)
        XCTAssertNil(poly4.c)
        XCTAssertNil(poly4.e)
        XCTAssertNil(poly4.f)
        XCTAssertNil(poly4.g)
        XCTAssertNil(poly4.h)
        XCTAssertNil(poly4.i)
        XCTAssertNil(poly4.j)
        XCTAssertNil(poly4.k)

        let poly5 = Poly11<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly5.e, entity)
        XCTAssertNil(poly5.a)
        XCTAssertNil(poly5.b)
        XCTAssertNil(poly5.c)
        XCTAssertNil(poly5.d)
        XCTAssertNil(poly5.f)
        XCTAssertNil(poly5.g)
        XCTAssertNil(poly5.h)
        XCTAssertNil(poly5.i)
        XCTAssertNil(poly5.j)
        XCTAssertNil(poly5.k)

        let poly6 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, MatchingType, TestType7, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly6.f, entity)
        XCTAssertNil(poly6.a)
        XCTAssertNil(poly6.b)
        XCTAssertNil(poly6.c)
        XCTAssertNil(poly6.d)
        XCTAssertNil(poly6.e)
        XCTAssertNil(poly6.g)
        XCTAssertNil(poly6.h)
        XCTAssertNil(poly6.i)
        XCTAssertNil(poly6.j)
        XCTAssertNil(poly6.k)

        let poly7 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, MatchingType, TestType8, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly7.g, entity)
        XCTAssertNil(poly7.a)
        XCTAssertNil(poly7.b)
        XCTAssertNil(poly7.c)
        XCTAssertNil(poly7.d)
        XCTAssertNil(poly7.e)
        XCTAssertNil(poly7.f)
        XCTAssertNil(poly7.h)
        XCTAssertNil(poly7.i)
        XCTAssertNil(poly7.j)
        XCTAssertNil(poly7.k)

        let poly8 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, MatchingType, TestType9, TestType10, TestType11>(entity)
        XCTAssertEqual(poly8.h, entity)
        XCTAssertNil(poly8.a)
        XCTAssertNil(poly8.b)
        XCTAssertNil(poly8.c)
        XCTAssertNil(poly8.d)
        XCTAssertNil(poly8.e)
        XCTAssertNil(poly8.f)
        XCTAssertNil(poly8.g)
        XCTAssertNil(poly8.i)
        XCTAssertNil(poly8.j)
        XCTAssertNil(poly8.k)

        let poly9 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, MatchingType, TestType10, TestType11>(entity)
        XCTAssertEqual(poly9.i, entity)
        XCTAssertNil(poly9.a)
        XCTAssertNil(poly9.b)
        XCTAssertNil(poly9.c)
        XCTAssertNil(poly9.d)
        XCTAssertNil(poly9.e)
        XCTAssertNil(poly9.f)
        XCTAssertNil(poly9.g)
        XCTAssertNil(poly9.h)
        XCTAssertNil(poly9.j)
        XCTAssertNil(poly9.k)

        let poly10 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, MatchingType, TestType11>(entity)
        XCTAssertEqual(poly10.j, entity)
        XCTAssertNil(poly10.a)
        XCTAssertNil(poly10.b)
        XCTAssertNil(poly10.c)
        XCTAssertNil(poly10.d)
        XCTAssertNil(poly10.e)
        XCTAssertNil(poly10.f)
        XCTAssertNil(poly10.g)
        XCTAssertNil(poly10.h)
        XCTAssertNil(poly10.i)
        XCTAssertNil(poly10.k)

        let poly11 = Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, MatchingType>(entity)
        XCTAssertEqual(poly11.k, entity)
        XCTAssertNil(poly11.a)
        XCTAssertNil(poly11.b)
        XCTAssertNil(poly11.c)
        XCTAssertNil(poly11.d)
        XCTAssertNil(poly11.e)
        XCTAssertNil(poly11.f)
        XCTAssertNil(poly11.g)
        XCTAssertNil(poly11.h)
        XCTAssertNil(poly11.i)
        XCTAssertNil(poly11.j)
    }

    func test_init_Poly12() {
        let entity = MatchingType(zzzzz: "hello world")
        let poly = Poly12<MatchingType, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly.a, entity)
        XCTAssertNil(poly.b)
        XCTAssertNil(poly.c)
        XCTAssertNil(poly.d)
        XCTAssertNil(poly.e)
        XCTAssertNil(poly.f)
        XCTAssertNil(poly.g)
        XCTAssertNil(poly.h)
        XCTAssertNil(poly.i)
        XCTAssertNil(poly.j)
        XCTAssertNil(poly.k)
        XCTAssertNil(poly.l)

        let poly2 = Poly12<TestType1, MatchingType, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly2.b, entity)
        XCTAssertNil(poly2.a)
        XCTAssertNil(poly2.c)
        XCTAssertNil(poly2.d)
        XCTAssertNil(poly2.e)
        XCTAssertNil(poly2.f)
        XCTAssertNil(poly2.g)
        XCTAssertNil(poly2.h)
        XCTAssertNil(poly2.i)
        XCTAssertNil(poly2.j)
        XCTAssertNil(poly2.k)
        XCTAssertNil(poly2.l)

        let poly3 = Poly12<TestType1, TestType2, MatchingType, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly3.c, entity)
        XCTAssertNil(poly3.a)
        XCTAssertNil(poly3.b)
        XCTAssertNil(poly3.d)
        XCTAssertNil(poly3.e)
        XCTAssertNil(poly3.f)
        XCTAssertNil(poly3.g)
        XCTAssertNil(poly3.h)
        XCTAssertNil(poly3.i)
        XCTAssertNil(poly3.j)
        XCTAssertNil(poly3.k)
        XCTAssertNil(poly3.l)

        let poly4 = Poly12<TestType1, TestType2, TestType3, MatchingType, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly4.d, entity)
        XCTAssertNil(poly4.a)
        XCTAssertNil(poly4.b)
        XCTAssertNil(poly4.c)
        XCTAssertNil(poly4.e)
        XCTAssertNil(poly4.f)
        XCTAssertNil(poly4.g)
        XCTAssertNil(poly4.h)
        XCTAssertNil(poly4.i)
        XCTAssertNil(poly4.j)
        XCTAssertNil(poly4.k)
        XCTAssertNil(poly4.l)

        let poly5 = Poly12<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly5.e, entity)
        XCTAssertNil(poly5.a)
        XCTAssertNil(poly5.b)
        XCTAssertNil(poly5.c)
        XCTAssertNil(poly5.d)
        XCTAssertNil(poly5.f)
        XCTAssertNil(poly5.g)
        XCTAssertNil(poly5.h)
        XCTAssertNil(poly5.i)
        XCTAssertNil(poly5.j)
        XCTAssertNil(poly5.k)
        XCTAssertNil(poly5.l)

        let poly6 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, MatchingType, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly6.f, entity)
        XCTAssertNil(poly6.a)
        XCTAssertNil(poly6.b)
        XCTAssertNil(poly6.c)
        XCTAssertNil(poly6.d)
        XCTAssertNil(poly6.e)
        XCTAssertNil(poly6.g)
        XCTAssertNil(poly6.h)
        XCTAssertNil(poly6.i)
        XCTAssertNil(poly6.j)
        XCTAssertNil(poly6.k)
        XCTAssertNil(poly6.l)

        let poly7 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, MatchingType, TestType8, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly7.g, entity)
        XCTAssertNil(poly7.a)
        XCTAssertNil(poly7.b)
        XCTAssertNil(poly7.c)
        XCTAssertNil(poly7.d)
        XCTAssertNil(poly7.e)
        XCTAssertNil(poly7.f)
        XCTAssertNil(poly7.h)
        XCTAssertNil(poly7.i)
        XCTAssertNil(poly7.j)
        XCTAssertNil(poly7.k)
        XCTAssertNil(poly7.l)

        let poly8 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, MatchingType, TestType9, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly8.h, entity)
        XCTAssertNil(poly8.a)
        XCTAssertNil(poly8.b)
        XCTAssertNil(poly8.c)
        XCTAssertNil(poly8.d)
        XCTAssertNil(poly8.e)
        XCTAssertNil(poly8.f)
        XCTAssertNil(poly8.g)
        XCTAssertNil(poly8.i)
        XCTAssertNil(poly8.j)
        XCTAssertNil(poly8.k)
        XCTAssertNil(poly8.l)

        let poly9 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, MatchingType, TestType10, TestType11, TestType12>(entity)
        XCTAssertEqual(poly9.i, entity)
        XCTAssertNil(poly9.a)
        XCTAssertNil(poly9.b)
        XCTAssertNil(poly9.c)
        XCTAssertNil(poly9.d)
        XCTAssertNil(poly9.e)
        XCTAssertNil(poly9.f)
        XCTAssertNil(poly9.g)
        XCTAssertNil(poly9.h)
        XCTAssertNil(poly9.j)
        XCTAssertNil(poly9.k)
        XCTAssertNil(poly9.l)

        let poly10 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, MatchingType, TestType11, TestType12>(entity)
        XCTAssertEqual(poly10.j, entity)
        XCTAssertNil(poly10.a)
        XCTAssertNil(poly10.b)
        XCTAssertNil(poly10.c)
        XCTAssertNil(poly10.d)
        XCTAssertNil(poly10.e)
        XCTAssertNil(poly10.f)
        XCTAssertNil(poly10.g)
        XCTAssertNil(poly10.h)
        XCTAssertNil(poly10.i)
        XCTAssertNil(poly10.k)
        XCTAssertNil(poly10.l)

        let poly11 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, MatchingType, TestType12>(entity)
        XCTAssertEqual(poly11.k, entity)
        XCTAssertNil(poly11.a)
        XCTAssertNil(poly11.b)
        XCTAssertNil(poly11.c)
        XCTAssertNil(poly11.d)
        XCTAssertNil(poly11.e)
        XCTAssertNil(poly11.f)
        XCTAssertNil(poly11.g)
        XCTAssertNil(poly11.h)
        XCTAssertNil(poly11.i)
        XCTAssertNil(poly11.j)
        XCTAssertNil(poly11.l)

        let poly12 = Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, MatchingType>(entity)
        XCTAssertEqual(poly12.l, entity)
        XCTAssertNil(poly12.a)
        XCTAssertNil(poly12.b)
        XCTAssertNil(poly12.c)
        XCTAssertNil(poly12.d)
        XCTAssertNil(poly12.e)
        XCTAssertNil(poly12.f)
        XCTAssertNil(poly12.g)
        XCTAssertNil(poly12.h)
        XCTAssertNil(poly12.i)
        XCTAssertNil(poly12.j)
        XCTAssertNil(poly12.k)
    }

    func test_init_Poly13() {
        let entity = MatchingType(zzzzz: "hello world")
        let poly = Poly13<MatchingType, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly.a, entity)
        XCTAssertNil(poly.b)
        XCTAssertNil(poly.c)
        XCTAssertNil(poly.d)
        XCTAssertNil(poly.e)
        XCTAssertNil(poly.f)
        XCTAssertNil(poly.g)
        XCTAssertNil(poly.h)
        XCTAssertNil(poly.i)
        XCTAssertNil(poly.j)
        XCTAssertNil(poly.k)
        XCTAssertNil(poly.l)
        XCTAssertNil(poly.m)

        let poly2 = Poly13<TestType1, MatchingType, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly2.b, entity)
        XCTAssertNil(poly2.a)
        XCTAssertNil(poly2.c)
        XCTAssertNil(poly2.d)
        XCTAssertNil(poly2.e)
        XCTAssertNil(poly2.f)
        XCTAssertNil(poly2.g)
        XCTAssertNil(poly2.h)
        XCTAssertNil(poly2.i)
        XCTAssertNil(poly2.j)
        XCTAssertNil(poly2.k)
        XCTAssertNil(poly2.l)
        XCTAssertNil(poly2.m)

        let poly3 = Poly13<TestType1, TestType2, MatchingType, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly3.c, entity)
        XCTAssertNil(poly3.a)
        XCTAssertNil(poly3.b)
        XCTAssertNil(poly3.d)
        XCTAssertNil(poly3.e)
        XCTAssertNil(poly3.f)
        XCTAssertNil(poly3.g)
        XCTAssertNil(poly3.h)
        XCTAssertNil(poly3.i)
        XCTAssertNil(poly3.j)
        XCTAssertNil(poly3.k)
        XCTAssertNil(poly3.l)
        XCTAssertNil(poly3.m)

        let poly4 = Poly13<TestType1, TestType2, TestType3, MatchingType, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly4.d, entity)
        XCTAssertNil(poly4.a)
        XCTAssertNil(poly4.b)
        XCTAssertNil(poly4.c)
        XCTAssertNil(poly4.e)
        XCTAssertNil(poly4.f)
        XCTAssertNil(poly4.g)
        XCTAssertNil(poly4.h)
        XCTAssertNil(poly4.i)
        XCTAssertNil(poly4.j)
        XCTAssertNil(poly4.k)
        XCTAssertNil(poly4.l)
        XCTAssertNil(poly4.m)

        let poly5 = Poly13<TestType1, TestType2, TestType3, TestType4, MatchingType, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly5.e, entity)
        XCTAssertNil(poly5.a)
        XCTAssertNil(poly5.b)
        XCTAssertNil(poly5.c)
        XCTAssertNil(poly5.d)
        XCTAssertNil(poly5.f)
        XCTAssertNil(poly5.g)
        XCTAssertNil(poly5.h)
        XCTAssertNil(poly5.i)
        XCTAssertNil(poly5.j)
        XCTAssertNil(poly5.k)
        XCTAssertNil(poly5.l)
        XCTAssertNil(poly5.m)

        let poly6 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, MatchingType, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly6.f, entity)
        XCTAssertNil(poly6.a)
        XCTAssertNil(poly6.b)
        XCTAssertNil(poly6.c)
        XCTAssertNil(poly6.d)
        XCTAssertNil(poly6.e)
        XCTAssertNil(poly6.g)
        XCTAssertNil(poly6.h)
        XCTAssertNil(poly6.i)
        XCTAssertNil(poly6.j)
        XCTAssertNil(poly6.k)
        XCTAssertNil(poly6.l)
        XCTAssertNil(poly6.m)

        let poly7 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, MatchingType, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly7.g, entity)
        XCTAssertNil(poly7.a)
        XCTAssertNil(poly7.b)
        XCTAssertNil(poly7.c)
        XCTAssertNil(poly7.d)
        XCTAssertNil(poly7.e)
        XCTAssertNil(poly7.f)
        XCTAssertNil(poly7.h)
        XCTAssertNil(poly7.i)
        XCTAssertNil(poly7.j)
        XCTAssertNil(poly7.k)
        XCTAssertNil(poly7.l)
        XCTAssertNil(poly7.m)

        let poly8 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, MatchingType, TestType9, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly8.h, entity)
        XCTAssertNil(poly8.a)
        XCTAssertNil(poly8.b)
        XCTAssertNil(poly8.c)
        XCTAssertNil(poly8.d)
        XCTAssertNil(poly8.e)
        XCTAssertNil(poly8.f)
        XCTAssertNil(poly8.g)
        XCTAssertNil(poly8.i)
        XCTAssertNil(poly8.j)
        XCTAssertNil(poly8.k)
        XCTAssertNil(poly8.l)
        XCTAssertNil(poly8.m)

        let poly9 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, MatchingType, TestType10, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly9.i, entity)
        XCTAssertNil(poly9.a)
        XCTAssertNil(poly9.b)
        XCTAssertNil(poly9.c)
        XCTAssertNil(poly9.d)
        XCTAssertNil(poly9.e)
        XCTAssertNil(poly9.f)
        XCTAssertNil(poly9.g)
        XCTAssertNil(poly9.h)
        XCTAssertNil(poly9.j)
        XCTAssertNil(poly9.k)
        XCTAssertNil(poly9.l)
        XCTAssertNil(poly9.m)

        let poly10 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, MatchingType, TestType11, TestType12, TestType13>(entity)
        XCTAssertEqual(poly10.j, entity)
        XCTAssertNil(poly10.a)
        XCTAssertNil(poly10.b)
        XCTAssertNil(poly10.c)
        XCTAssertNil(poly10.d)
        XCTAssertNil(poly10.e)
        XCTAssertNil(poly10.f)
        XCTAssertNil(poly10.g)
        XCTAssertNil(poly10.h)
        XCTAssertNil(poly10.i)
        XCTAssertNil(poly10.k)
        XCTAssertNil(poly10.l)
        XCTAssertNil(poly10.m)

        let poly11 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, MatchingType, TestType12, TestType13>(entity)
        XCTAssertEqual(poly11.k, entity)
        XCTAssertNil(poly11.a)
        XCTAssertNil(poly11.b)
        XCTAssertNil(poly11.c)
        XCTAssertNil(poly11.d)
        XCTAssertNil(poly11.e)
        XCTAssertNil(poly11.f)
        XCTAssertNil(poly11.g)
        XCTAssertNil(poly11.h)
        XCTAssertNil(poly11.i)
        XCTAssertNil(poly11.j)
        XCTAssertNil(poly11.l)
        XCTAssertNil(poly11.m)

        let poly12 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, MatchingType, TestType13>(entity)
        XCTAssertEqual(poly12.l, entity)
        XCTAssertNil(poly12.a)
        XCTAssertNil(poly12.b)
        XCTAssertNil(poly12.c)
        XCTAssertNil(poly12.d)
        XCTAssertNil(poly12.e)
        XCTAssertNil(poly12.f)
        XCTAssertNil(poly12.g)
        XCTAssertNil(poly12.h)
        XCTAssertNil(poly12.i)
        XCTAssertNil(poly12.j)
        XCTAssertNil(poly12.k)
        XCTAssertNil(poly12.m)

        let poly13 = Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, MatchingType>(entity)
        XCTAssertEqual(poly13.m, entity)
        XCTAssertNil(poly13.a)
        XCTAssertNil(poly13.b)
        XCTAssertNil(poly13.c)
        XCTAssertNil(poly13.d)
        XCTAssertNil(poly13.e)
        XCTAssertNil(poly13.f)
        XCTAssertNil(poly13.g)
        XCTAssertNil(poly13.h)
        XCTAssertNil(poly13.i)
        XCTAssertNil(poly13.j)
        XCTAssertNil(poly13.k)
        XCTAssertNil(poly13.l)
    }
}

// MARK: - mapping with protocol

extension PolyTests {
	func test_mapWithProtocol() {
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

    func test_Poly10_lookup() {
        let entity = decoded(type: TestType10.self, data: poly_entity10)
        let poly = decoded(type: Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.self, data: poly_entity10)

        XCTAssertNil(poly[TestType1.self])
        XCTAssertNil(poly[TestType2.self])
        XCTAssertNil(poly[TestType3.self])
        XCTAssertNil(poly[TestType4.self])
        XCTAssertNil(poly[TestType5.self])
        XCTAssertNil(poly[TestType6.self])
        XCTAssertNil(poly[TestType7.self])
        XCTAssertNil(poly[TestType8.self])
        XCTAssertNil(poly[TestType9.self])
        XCTAssertEqual(entity, poly[TestType10.self])
    }

    func test_Poly11_lookup() {
        let entity = decoded(type: TestType11.self, data: poly_entity11)
        let poly = decoded(type: Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.self, data: poly_entity11)

        XCTAssertNil(poly[TestType1.self])
        XCTAssertNil(poly[TestType2.self])
        XCTAssertNil(poly[TestType3.self])
        XCTAssertNil(poly[TestType4.self])
        XCTAssertNil(poly[TestType5.self])
        XCTAssertNil(poly[TestType6.self])
        XCTAssertNil(poly[TestType7.self])
        XCTAssertNil(poly[TestType8.self])
        XCTAssertNil(poly[TestType9.self])
        XCTAssertNil(poly[TestType10.self])
        XCTAssertEqual(entity, poly[TestType11.self])
    }

    func test_Poly12_lookup() {
        let entity = decoded(type: TestType12.self, data: poly_entity12)
        let poly = decoded(type: Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.self, data: poly_entity12)

        XCTAssertNil(poly[TestType1.self])
        XCTAssertNil(poly[TestType2.self])
        XCTAssertNil(poly[TestType3.self])
        XCTAssertNil(poly[TestType4.self])
        XCTAssertNil(poly[TestType5.self])
        XCTAssertNil(poly[TestType6.self])
        XCTAssertNil(poly[TestType7.self])
        XCTAssertNil(poly[TestType8.self])
        XCTAssertNil(poly[TestType9.self])
        XCTAssertNil(poly[TestType10.self])
        XCTAssertNil(poly[TestType11.self])
        XCTAssertEqual(entity, poly[TestType12.self])
    }

    func test_Poly13_lookup() {
        let entity = decoded(type: TestType13.self, data: poly_entity13)
        let poly = decoded(type: Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.self, data: poly_entity13)

        XCTAssertNil(poly[TestType1.self])
        XCTAssertNil(poly[TestType2.self])
        XCTAssertNil(poly[TestType3.self])
        XCTAssertNil(poly[TestType4.self])
        XCTAssertNil(poly[TestType5.self])
        XCTAssertNil(poly[TestType6.self])
        XCTAssertNil(poly[TestType7.self])
        XCTAssertNil(poly[TestType8.self])
        XCTAssertNil(poly[TestType9.self])
        XCTAssertNil(poly[TestType10.self])
        XCTAssertNil(poly[TestType11.self])
        XCTAssertNil(poly[TestType12.self])
        XCTAssertEqual(entity, poly[TestType13.self])
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

    func test_Poly10_decode_throws_typeNotFound() {
        XCTAssertThrowsError(try JSONDecoder().decode(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.self, from: poly_entity11))
    }

    func test_Poly11_decode_throws_typeNotFound() {
        XCTAssertThrowsError(try JSONDecoder().decode(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.self, from: poly_entity12))
    }

    func test_Poly12_decode_throws_typeNotFound() {
        XCTAssertThrowsError(try JSONDecoder().decode(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.self, from: poly_entity13))
    }

    func test_Poly13_decode_throws_typeNotFound() {
        XCTAssertThrowsError(try JSONDecoder().decode(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.self, from: poly_entity14))
    }
}

// MARK: - decoding ambiguity

extension PolyTests {
    func test_DoubleThenInt() {
        // Poly2<Double, Int> is ambiguous when decoding a number that could be either
        // a Double or an Int. Poly will pick the first possible match.

        struct Test: Decodable, Equatable {
            let x: Poly2<Double, Int>
        }

        let data = #"{ "x": 2 }"#.data(using: .utf8)!

        XCTAssertEqual(try? JSONDecoder().decode(Test.self, from: data), Test(x: .a(2)))
    }

    func test_IntThenDouble() {
        // Poly2<Int, Double> avoids some ambiguity since a number that could be an Int can also
        // be a Double but not the other way around. If you expect a particular number that is
        // possible to represent as an Int to become a Double, you are still not able to use this
        // type.

        struct Test: Decodable, Equatable {
            let x: Poly2<Int, Double>
        }

        let data = #"{ "x": 2 }"#.data(using: .utf8)!

        XCTAssertEqual(try? JSONDecoder().decode(Test.self, from: data), Test(x: .a(2)))

        let data2 = #"{ "x": 2.1 }"#.data(using: .utf8)!

        XCTAssertEqual(try? JSONDecoder().decode(Test.self, from: data2), Test(x: .b(2.1)))
    }
}

// MARK: - debug output
extension PolyTests {
    func test_PolyTypeNotFoundOutput() {
        do {
            let _ = try JSONDecoder().decode(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.self, from: poly_entity12)
        } catch {
            XCTAssertNotNil((error as? PolyDecodeNoTypesMatchedError).debugDescription)
//            print(error)
        }
    }
}

// MARK: - Test types
extension PolyTests {
    struct MatchingType: Codable, Equatable {
        let zzzzz: String
    }

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

    struct TestType10: Codable, Equatable {
        let j: Int
    }

    struct TestType11: Codable, Equatable {
        let k: Int
    }

    struct TestType12: Codable, Equatable {
        let l: Int
    }

    struct TestType13: Codable, Equatable {
        let m: Int
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

let matching_entity = """
{
    "zzzzz": "hello world"
}
""".data(using: .utf8)!

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

let poly_entity11 = """
{
    "k": 1
}
""".data(using: .utf8)!

let poly_entity12 = """
{
    "l": 1
}
""".data(using: .utf8)!

let poly_entity13 = """
{
    "m": 1
}
""".data(using: .utf8)!

let poly_entity14 = """
{
    "n": 1
}
""".data(using: .utf8)!
