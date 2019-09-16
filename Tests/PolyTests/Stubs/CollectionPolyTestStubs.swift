//
//  CollectionPolyTestStubs.swift
//  PolyTests
//
//  Created by Mathew Polzin on 1/13/19.
//

let one_value = """
[
	{
		"a": 1
	}
]
""".data(using: .utf8)!

let two_same_type_values = """
[
	{
		"a": 1
	},
	{
		"a": 2
	}
]
""".data(using: .utf8)!

let two_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	}
]
""".data(using: .utf8)!

let three_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"d": 2
	}
]
""".data(using: .utf8)!

let four_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"d": 2
	},
	{
		"f": 2
	}
]
""".data(using: .utf8)!

let five_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"c": 2
	},
	{
		"d": 2
	},
	{
		"f": 2
	}
]
""".data(using: .utf8)!

let six_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"c": 2
	},
	{
		"d": 2
	},
	{
		"e": 2
	},
	{
		"f": 2
	}
]
""".data(using: .utf8)!

let seven_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"c": 2
	},
	{
		"d": 2
	},
	{
		"e": 2
	},
	{
		"f": 2
	},
	{
		"g": 2
	}
]
""".data(using: .utf8)!

let eight_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"c": 2
	},
	{
		"d": 2
	},
	{
		"e": 2
	},
	{
		"f": 2
	},
	{
		"g": 2
	},
	{
		"h": 2
	}
]
""".data(using: .utf8)!

let nine_different_type_values = """
[
	{
		"a": 1
	},
	{
		"b": 2
	},
	{
		"c": 2
	},
	{
		"d": 2
	},
	{
		"e": 2
	},
	{
		"f": 2
	},
	{
		"g": 2
	},
	{
		"h": 2
	},
	{
		"i": 2
	}
]
""".data(using: .utf8)!

let ten_different_type_values = """
[
    {
        "a": 1
    },
    {
        "b": 2
    },
    {
        "c": 2
    },
    {
        "d": 2
    },
    {
        "e": 2
    },
    {
        "f": 2
    },
    {
        "g": 2
    },
    {
        "h": 2
    },
    {
        "i": 2
    },
    {
        "j": 3
    }
]
""".data(using: .utf8)!
