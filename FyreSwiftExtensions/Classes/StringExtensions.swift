//
//  StringExtensions.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import Foundation


/// The following convenience properties provide the value of the string in various numeric representations, such as Int and Double.
extension String {
    
    /// Returns an `Int` version of the string.
    ///
    /// The following example transforms a string to an `Int`:
    ///
    ///     let five = "5"
    ///     print(five.intValue)
    ///     // Prints "5"
    ///
    /// - Note: Returns 0 for invalid strings
    /// - Returns: An integer copy of the string.
    public var intValue: Int {
        return Int(self) ?? 0
    }
    
    /// Returns an `Int8` (short) version of the string.
    ///
    /// The following example transforms a string to an `Int8`:
    ///
    ///     let five = "5"
    ///     print(five.int8Value)
    ///     // Prints "5"
    ///
    /// - Note: Returns 0 for invalid strings
    /// - Returns: An int8 (short) copy of the string.
    public var int8Value: Int8 {
        return Int8(self) ?? 0
    }
    
    /// Returns an `Int16` version of the string.
    ///
    /// The following example transforms a string to an `Int16`:
    ///
    ///     let five = "5"
    ///     print(five.int16Value)
    ///     // Prints "5"
    ///
    /// - Note: Returns 0 for invalid strings
    /// - Returns: An int16 copy of the string.
    public var int16Value: Int16 {
        return Int16(self) ?? 0
    }
    
    /// Returns an `Int32` version of the string.
    ///
    /// The following example transforms a string to an `Int32`:
    ///
    ///     let five = "5"
    ///     print(five.int32Value)
    ///     // Prints "5"
    ///
    /// - Note: Returns 0 for invalid strings
    /// - Returns: An int32 copy of the string.
    public var int32Value: Int32 {
        return Int32(self) ?? 0
    }
    
    
    /// Returns an `Int64` version of the string.
    ///
    /// The following example transforms a string to an `Int64`:
    ///
    ///     let five = "5"
    ///     print(five.int64Value)
    ///     // Prints "5"
    ///
    /// - Note: Returns 0 for invalid strings
    /// - Returns: An int64 copy of the string.
    public var int64Value: Int64 {
        return Int64(self) ?? 0
    }
    
    
    /// Returns a `Double` version of the string.
    ///
    /// The following example transforms a string to a `Double`:
    ///
    ///     let five = "5"
    ///     print(five.doubleValue)
    ///     // Prints "5.0"
    ///
    /// - Note: Returns 0.0 for invalid strings
    /// - Returns: A double copy of the string.
    public var doubleValue: Double {
        return Double(self) ?? 0
    }
    
    
    /// Returns a `Float` version of the string.
    ///
    /// The following example transforms a string to a `Float`:
    ///
    ///     let five = "5"
    ///     print(five.floatValue)
    ///     // Prints "5"///
    ///
    /// - Note: Returns 0.0 for invalid strings
    /// - Returns: A float copy of the string.
    public var floatValue: Float {
        return Float(self) ?? 0
    }
    
    /// Returns a `Bool` version of the string.
    ///
    /// The following example transforms a string to a `Bool`:
    ///
    ///     let five = "5"
    ///     print(five.boolValue)
    ///     // Prints "true"
    ///
    ///     let zero = "0"
    ///     print(zero.boolValue)
    ///     // Prints "false"
    ///
    /// - Note: Returns false for invalid strings
    /// - Returns: A bool copy of the string.
    public var boolValue: Bool {
        return NSString(string: self).boolValue
    }
}
