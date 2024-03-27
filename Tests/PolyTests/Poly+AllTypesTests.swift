//
//  Poly+AllTypesTests.swift
//  
//
//  Created by Mathew Polzin on 3/5/20.
//

import XCTest
import Poly

final class PolyAllTypesTests: XCTestCase {
    func test_poly0() {
        XCTAssertTrue(Poly0.allTypes.isEmpty)
    }

    func test_poly1() {
        XCTAssert(Poly1<TestType1>.allTypes[0] == TestType1.self)
    }

    func test_poly2() {
        XCTAssert(Poly2<TestType1, TestType2>.allTypes[0] == TestType1.self)
        XCTAssert(Poly2<TestType1, TestType2>.allTypes[1] == TestType2.self)
    }

    func test_poly3() {
        XCTAssert(Poly3<TestType1, TestType2, TestType3>.allTypes[0] == TestType1.self)
        XCTAssert(Poly3<TestType1, TestType2, TestType3>.allTypes[1] == TestType2.self)
        XCTAssert(Poly3<TestType1, TestType2, TestType3>.allTypes[2] == TestType3.self)
    }

    func test_poly4() {
        XCTAssert(Poly4<TestType1, TestType2, TestType3, TestType4>.allTypes[0] == TestType1.self)
        XCTAssert(Poly4<TestType1, TestType2, TestType3, TestType4>.allTypes[1] == TestType2.self)
        XCTAssert(Poly4<TestType1, TestType2, TestType3, TestType4>.allTypes[2] == TestType3.self)
        XCTAssert(Poly4<TestType1, TestType2, TestType3, TestType4>.allTypes[3] == TestType4.self)
    }

    func test_poly5() {
        XCTAssert(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.allTypes[0] == TestType1.self)
        XCTAssert(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.allTypes[1] == TestType2.self)
        XCTAssert(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.allTypes[2] == TestType3.self)
        XCTAssert(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.allTypes[3] == TestType4.self)
        XCTAssert(Poly5<TestType1, TestType2, TestType3, TestType4, TestType5>.allTypes[4] == TestType5.self)
    }

    func test_poly6() {
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[0] == TestType1.self)
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[1] == TestType2.self)
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[2] == TestType3.self)
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[3] == TestType4.self)
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[4] == TestType5.self)
        XCTAssert(Poly6<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6>.allTypes[5] == TestType6.self)
    }

    func test_poly7() {
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[0] == TestType1.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[1] == TestType2.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[2] == TestType3.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[3] == TestType4.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[4] == TestType5.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[5] == TestType6.self)
        XCTAssert(Poly7<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7>.allTypes[6] == TestType7.self)
    }

    func test_poly8() {
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[0] == TestType1.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[1] == TestType2.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[2] == TestType3.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[3] == TestType4.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[4] == TestType5.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[5] == TestType6.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[6] == TestType7.self)
        XCTAssert(Poly8<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8>.allTypes[7] == TestType8.self)
    }

    func test_poly9() {
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[0] == TestType1.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[1] == TestType2.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[2] == TestType3.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[3] == TestType4.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[4] == TestType5.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[5] == TestType6.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[6] == TestType7.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[7] == TestType8.self)
        XCTAssert(Poly9<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9>.allTypes[8] == TestType9.self)
    }

    func test_poly10() {
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[0] == TestType1.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[1] == TestType2.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[2] == TestType3.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[3] == TestType4.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[4] == TestType5.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[5] == TestType6.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[6] == TestType7.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[7] == TestType8.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[8] == TestType9.self)
        XCTAssert(Poly10<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10>.allTypes[9] == TestType10.self)
    }

    func test_poly11() {
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[0] == TestType1.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[1] == TestType2.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[2] == TestType3.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[3] == TestType4.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[4] == TestType5.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[5] == TestType6.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[6] == TestType7.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[7] == TestType8.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[8] == TestType9.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[9] == TestType10.self)
        XCTAssert(Poly11<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11>.allTypes[10] == TestType11.self)
    }

    func test_poly12() {
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[0] == TestType1.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[1] == TestType2.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[2] == TestType3.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[3] == TestType4.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[4] == TestType5.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[5] == TestType6.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[6] == TestType7.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[7] == TestType8.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[8] == TestType9.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[9] == TestType10.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[10] == TestType11.self)
        XCTAssert(Poly12<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12>.allTypes[11] == TestType12.self)
    }

    func test_poly13() {
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[0] == TestType1.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[1] == TestType2.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[2] == TestType3.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[3] == TestType4.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[4] == TestType5.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[5] == TestType6.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[6] == TestType7.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[7] == TestType8.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[8] == TestType9.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[9] == TestType10.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[10] == TestType11.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[11] == TestType12.self)
        XCTAssert(Poly13<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13>.allTypes[12] == TestType13.self)
    }

    func test_poly14() {
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[0] == TestType1.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[1] == TestType2.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[2] == TestType3.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[3] == TestType4.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[4] == TestType5.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[5] == TestType6.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[6] == TestType7.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[7] == TestType8.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[8] == TestType9.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[9] == TestType10.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[10] == TestType11.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[11] == TestType12.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[12] == TestType13.self)
        XCTAssert(Poly14<TestType1, TestType2, TestType3, TestType4, TestType5, TestType6, TestType7, TestType8, TestType9, TestType10, TestType11, TestType12, TestType13, TestType14>.allTypes[13] == TestType14.self)
    }
}

// MARK: - Test types
extension PolyAllTypesTests {
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

    struct TestType14: Codable, Equatable {
        let n: Int
    }
}
