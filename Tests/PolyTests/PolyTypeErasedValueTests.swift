//
//  PolyTypeErasedValueTests.swift
//  
//
//  Created by Mathew Polzin on 11/4/19.
//

import XCTest
import Poly

final class PolyTypeErasedValueTests: XCTestCase {
    func test_poly0() {
        XCTAssert(type(of: Poly0().value) == Void.self)
    }

    func test_poly1() {
        let t1 = Poly1<String>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")
    }

    func test_poly2() {
        let t1 = Poly2<String, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly2<Void, String>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")
    }

    func test_poly3() {
        let t1 = Poly3<String, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly3<Void, String, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly3<Void, Void, String>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")
    }

    func test_poly4() {
        let t1 = Poly4<String, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly4<Void, String, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly4<Void, Void, String, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly4<Void, Void, Void, String>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")
    }

    func test_poly5() {
        let t1 = Poly5<String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly5<Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly5<Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly5<Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly5<Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")
    }

    func test_poly6() {
        let t1 = Poly6<String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly6<Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly6<Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly6<Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly6<Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly6<Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")
    }

    func test_poly7() {
        let t1 = Poly7<String, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly7<Void, String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly7<Void, Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly7<Void, Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly7<Void, Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly7<Void, Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")

        let t7 = Poly7<Void, Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t7.value) == String.self)
        XCTAssertEqual(t7.value as? String, "hello")
    }

    func test_poly8() {
        let t1 = Poly8<String, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly8<Void, String, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly8<Void, Void, String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly8<Void, Void, Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly8<Void, Void, Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly8<Void, Void, Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")

        let t7 = Poly8<Void, Void, Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t7.value) == String.self)
        XCTAssertEqual(t7.value as? String, "hello")

        let t8 = Poly8<Void, Void, Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t8.value) == String.self)
        XCTAssertEqual(t8.value as? String, "hello")
    }

    func test_poly9() {
        let t1 = Poly9<String, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly9<Void, String, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly9<Void, Void, String, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly9<Void, Void, Void, String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly9<Void, Void, Void, Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly9<Void, Void, Void, Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")

        let t7 = Poly9<Void, Void, Void, Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t7.value) == String.self)
        XCTAssertEqual(t7.value as? String, "hello")

        let t8 = Poly9<Void, Void, Void, Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t8.value) == String.self)
        XCTAssertEqual(t8.value as? String, "hello")

        let t9 = Poly9<Void, Void, Void, Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t9.value) == String.self)
        XCTAssertEqual(t9.value as? String, "hello")
    }

    func test_poly10() {
        let t1 = Poly10<String, Void, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly10<Void, String, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly10<Void, Void, String, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly10<Void, Void, Void, String, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly10<Void, Void, Void, Void, String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly10<Void, Void, Void, Void, Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")

        let t7 = Poly10<Void, Void, Void, Void, Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t7.value) == String.self)
        XCTAssertEqual(t7.value as? String, "hello")

        let t8 = Poly10<Void, Void, Void, Void, Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t8.value) == String.self)
        XCTAssertEqual(t8.value as? String, "hello")

        let t9 = Poly10<Void, Void, Void, Void, Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t9.value) == String.self)
        XCTAssertEqual(t9.value as? String, "hello")

        let t10 = Poly10<Void, Void, Void, Void, Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t10.value) == String.self)
        XCTAssertEqual(t10.value as? String, "hello")
    }

    func test_poly11() {
        let t1 = Poly11<String, Void, Void, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t1.value) == String.self)
        XCTAssertEqual(t1.value as? String, "hello")

        let t2 = Poly11<Void, String, Void, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t2.value) == String.self)
        XCTAssertEqual(t2.value as? String, "hello")

        let t3 = Poly11<Void, Void, String, Void, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t3.value) == String.self)
        XCTAssertEqual(t3.value as? String, "hello")

        let t4 = Poly11<Void, Void, Void, String, Void, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t4.value) == String.self)
        XCTAssertEqual(t4.value as? String, "hello")

        let t5 = Poly11<Void, Void, Void, Void, String, Void, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t5.value) == String.self)
        XCTAssertEqual(t5.value as? String, "hello")

        let t6 = Poly11<Void, Void, Void, Void, Void, String, Void, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t6.value) == String.self)
        XCTAssertEqual(t6.value as? String, "hello")

        let t7 = Poly11<Void, Void, Void, Void, Void, Void, String, Void, Void, Void, Void>("hello")
        XCTAssert(type(of: t7.value) == String.self)
        XCTAssertEqual(t7.value as? String, "hello")

        let t8 = Poly11<Void, Void, Void, Void, Void, Void, Void, String, Void, Void, Void>("hello")
        XCTAssert(type(of: t8.value) == String.self)
        XCTAssertEqual(t8.value as? String, "hello")

        let t9 = Poly11<Void, Void, Void, Void, Void, Void, Void, Void, String, Void, Void>("hello")
        XCTAssert(type(of: t9.value) == String.self)
        XCTAssertEqual(t9.value as? String, "hello")

        let t10 = Poly11<Void, Void, Void, Void, Void, Void, Void, Void, Void, String, Void>("hello")
        XCTAssert(type(of: t10.value) == String.self)
        XCTAssertEqual(t10.value as? String, "hello")

        let t11 = Poly11<Void, Void, Void, Void, Void, Void, Void, Void, Void, Void, String>("hello")
        XCTAssert(type(of: t11.value) == String.self)
        XCTAssertEqual(t11.value as? String, "hello")
    }
}
