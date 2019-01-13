import XCTest

extension PolyTests {
    static let __allTests = [
        ("test_init_Poly0", test_init_Poly0),
        ("test_init_Poly1", test_init_Poly1),
        ("test_init_Poly2", test_init_Poly2),
        ("test_init_Poly3", test_init_Poly3),
        ("test_init_Poly4", test_init_Poly4),
        ("test_init_Poly5", test_init_Poly5),
        ("test_init_Poly6", test_init_Poly6),
        ("test_init_Poly7", test_init_Poly7),
        ("test_init_Poly8", test_init_Poly8),
        ("test_init_Poly9", test_init_Poly9),
        ("test_Poly1_decode_throws_typeNotFound", test_Poly1_decode_throws_typeNotFound),
        ("test_Poly1_lookup", test_Poly1_lookup),
        ("test_Poly2_decode_throws_typeNotFound", test_Poly2_decode_throws_typeNotFound),
        ("test_Poly2_lookup", test_Poly2_lookup),
        ("test_Poly3_decode_throws_typeNotFound", test_Poly3_decode_throws_typeNotFound),
        ("test_Poly3_lookup", test_Poly3_lookup),
        ("test_Poly4_decode_throws_typeNotFound", test_Poly4_decode_throws_typeNotFound),
        ("test_Poly4_lookup", test_Poly4_lookup),
        ("test_Poly5_decode_throws_typeNotFound", test_Poly5_decode_throws_typeNotFound),
        ("test_Poly5_lookup", test_Poly5_lookup),
        ("test_Poly6_decode_throws_typeNotFound", test_Poly6_decode_throws_typeNotFound),
        ("test_Poly6_lookup", test_Poly6_lookup),
        ("test_Poly7_decode_throws_typeNotFound", test_Poly7_decode_throws_typeNotFound),
        ("test_Poly7_lookup", test_Poly7_lookup),
        ("test_Poly8_decode_throws_typeNotFound", test_Poly8_decode_throws_typeNotFound),
        ("test_Poly8_lookup", test_Poly8_lookup),
        ("test_Poly9_decode_throws_typeNotFound", test_Poly9_decode_throws_typeNotFound),
        ("test_Poly9_lookup", test_Poly9_lookup),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PolyTests.__allTests),
    ]
}
#endif
