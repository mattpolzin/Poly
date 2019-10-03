//
//  CollectionPolyTests.swift
//  PolyTests
//
//  Created by Mathew Polzin on 1/13/19.
//

import XCTest
import Poly

class CollectionPolyTests: XCTestCase {

	func test_Poly1() {
		let values = decoded(type: [Poly1<TestType1>].self,
							   data: one_value)

		XCTAssertEqual(values[TestType1.self].count, 1)
	}

	func test_Poly1_encode() {
		test_DecodeEncodeEquality(type: [Poly1<TestType1>].self,
								  data: one_value)
	}

	func test_TwoSameType() {
		let values = decoded(type: [Poly1<TestType1>].self,
							   data: two_same_type_values)

		XCTAssertEqual(values[TestType1.self].count, 2)
	}

	func test_TwoSameType_encode() {
		test_DecodeEncodeEquality(type: [Poly1<TestType1>].self,
								  data: two_same_type_values)
	}

	func test_TwoDifferentTypes() {
		let values = decoded(type: [Poly2<TestType1, TestType2>].self,
							   data: two_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
	}

	func test_TwoDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly2<TestType1, TestType2>].self,
								  data: two_different_type_values)
	}

	func test_ThreeDifferentTypes() {
		let values = decoded(type: [Poly3<TestType1, TestType2, TestType4>].self,
							   data: three_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
	}

	func test_ThreeDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly3<TestType1, TestType2, TestType4>].self,
								  data: three_different_type_values)
	}

	func test_FourDifferentTypes() {
		let values = decoded(type: [Poly4<TestType1, TestType2, TestType4, TestType6>].self,
							   data: four_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
	}

	func test_FourDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly4<TestType1, TestType2, TestType4, TestType6>].self,
								  data: four_different_type_values)
	}

	func test_FiveDifferentTypes() {
		let values = decoded(type: [Poly5<TestType1, TestType2, TestType3, TestType4, TestType6>].self,
							   data: five_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType3.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
	}

	func test_FiveDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly5<TestType1, TestType2, TestType3, TestType4, TestType6>].self,
								  data: five_different_type_values)
	}

	func test_SixDifferentTypes() {
		let values = decoded(type: [Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>].self,
							   data: six_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType3.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType5.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
	}

	func test_SixDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>].self,
								  data: six_different_type_values)
	}

	func test_SevenDifferentTypes() {
		let values = decoded(type: [Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>].self,
							   data: seven_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType3.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType5.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
		XCTAssertEqual(values[TestType7.self].count, 1)
	}

	func test_SevenDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>].self,
								  data: seven_different_type_values)
	}

	func test_EightDifferentTypes() {
		let values = decoded(type: [Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>].self,
							   data: eight_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType3.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType5.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
		XCTAssertEqual(values[TestType7.self].count, 1)
		XCTAssertEqual(values[TestType8.self].count, 1)
	}

	func test_EightDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>].self,
								  data: eight_different_type_values)
	}

	func test_NineDifferentTypes() {
		let values = decoded(type: [Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>].self,
							   data: nine_different_type_values)

		XCTAssertEqual(values[TestType1.self].count, 1)
		XCTAssertEqual(values[TestType2.self].count, 1)
		XCTAssertEqual(values[TestType3.self].count, 1)
		XCTAssertEqual(values[TestType4.self].count, 1)
		XCTAssertEqual(values[TestType5.self].count, 1)
		XCTAssertEqual(values[TestType6.self].count, 1)
		XCTAssertEqual(values[TestType7.self].count, 1)
		XCTAssertEqual(values[TestType8.self].count, 1)
		XCTAssertEqual(values[TestType9.self].count, 1)
	}

	func test_NineDifferentTypes_encode() {
		test_DecodeEncodeEquality(type: [Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>].self,
								  data: nine_different_type_values)
	}

    func test_TenDifferentTypes() {
        let values = decoded(type: [Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>].self,
                             data: ten_different_type_values)

        XCTAssertEqual(values[TestType1.self].count, 1)
        XCTAssertEqual(values[TestType2.self].count, 1)
        XCTAssertEqual(values[TestType3.self].count, 1)
        XCTAssertEqual(values[TestType4.self].count, 1)
        XCTAssertEqual(values[TestType5.self].count, 1)
        XCTAssertEqual(values[TestType6.self].count, 1)
        XCTAssertEqual(values[TestType7.self].count, 1)
        XCTAssertEqual(values[TestType8.self].count, 1)
        XCTAssertEqual(values[TestType9.self].count, 1)
        XCTAssertEqual(values[TestType10.self].count, 1)
    }

    func test_TenDifferentTypes_encode() {
        test_DecodeEncodeEquality(type: [Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>].self,
                                  data: ten_different_type_values)
    }

    func test_ElevenDifferentTypes() {
        let values = decoded(type: [Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>].self,
                             data: eleven_different_type_values)

        XCTAssertEqual(values[TestType1.self].count, 1)
        XCTAssertEqual(values[TestType2.self].count, 1)
        XCTAssertEqual(values[TestType3.self].count, 1)
        XCTAssertEqual(values[TestType4.self].count, 1)
        XCTAssertEqual(values[TestType5.self].count, 1)
        XCTAssertEqual(values[TestType6.self].count, 1)
        XCTAssertEqual(values[TestType7.self].count, 1)
        XCTAssertEqual(values[TestType8.self].count, 1)
        XCTAssertEqual(values[TestType9.self].count, 1)
        XCTAssertEqual(values[TestType10.self].count, 1)
        XCTAssertEqual(values[TestType11.self].count, 1)
    }

    func test_ElevenDifferentTypes_encode() {
        test_DecodeEncodeEquality(type: [Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>].self,
                                  data: eleven_different_type_values)
    }
}

// MARK: - Test Types
extension CollectionPolyTests {
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
}
