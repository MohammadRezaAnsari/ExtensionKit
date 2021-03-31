//
//  Numeric+Localization.swift
//  
//
//  Created by MohammadReza Ansary on 3/14/21.
//

import XCTest
import UIKit

@testable import ExtensionKit

final class Numeric_LocalizationTests: XCTestCase {
    
    var testCasesForLocalizedNumeric = [
        
        // English
        (number: 0, locale: "en", expectation: "0"),
        (number: 1.0, locale: "en", expectation: "1"),
        (number: 1.12345678, locale: "en", expectation: "1.12345678"),
        (number: -1.12, locale: "en", expectation: "-1.12"),
        (number: 1.1234567890, locale: "en", expectation: "1.12345679"),
        (number: 3.14, locale: "en", expectation: "3.14"),
        (number: Double.pi, locale: "en", expectation: "3.14159265"),
        (number: 1234567890, locale: "en", expectation: "1,234,567,890"),
        
        // Arabic
        (number: 0, locale: "ar", expectation: "٠"),
        (number: 1.0, locale: "ar", expectation: "١"),
        (number: 1.12345678, locale: "ar", expectation: "١٫١٢٣٤٥٦٧٨"),
        (number: -1.12, locale: "ar", expectation: "؜-١٫١٢"),
        (number: 1.1234567890, locale: "ar", expectation: "١٫١٢٣٤٥٦٧٩"),
        (number: 3.14, locale: "ar", expectation: "٣٫١٤"),
        (number: Double.pi, locale: "ar", expectation: "٣٫١٤١٥٩٢٦٥"),
        (number: 1234567890, locale: "ar", expectation: "١٬٢٣٤٬٥٦٧٬٨٩٠"),
        
        // Persian
        (number: 0, locale: "fa", expectation: "۰"),
        (number: 1.0, locale: "fa", expectation: "۱"),
        (number: 1.12345678, locale: "fa", expectation: "۱٫۱۲۳۴۵۶۷۸"),
        (number: -1.12, locale: "fa", expectation: "‎−۱٫۱۲"),
        (number: 1.1234567890, locale: "fa", expectation: "۱٫۱۲۳۴۵۶۷۹"),
        (number: 3.14, locale: "fa", expectation: "۳٫۱۴"),
        (number: Double.pi, locale: "fa", expectation: "۳٫۱۴۱۵۹۲۶۵"),
        (number: 1234567890, locale: "fa", expectation: "۱٬۲۳۴٬۵۶۷٬۸۹۰"),
        
        // Unknown locale
        (number: 3453461.123456782146, locale: "Unknown", expectation: "3453461.12345678"),
    ]
    
    func testNumericLocalizationWithDifferentValues() {
        for testCase in testCasesForLocalizedNumeric {
            let toTest = try? testCase.number.localizedString(with: testCase.locale)
            XCTAssertEqual(toTest, testCase.expectation)
        }
    }
    
    func testNumericLocalizationSpecialCase() {
        let number = NSNumber(bytes: UnsafeRawPointer(bitPattern: 1)!, objCType: "v")
        XCTAssertThrowsError(try number.localizedString(with: "en"))
        do {
            _ = try number.localizedString(with: "en")
        } catch {
            XCTAssertNotNil(error as? MachError)
            let error = error as! MachError
            XCTAssertEqual(error.code, MachError(.invalidValue).code)
        }
    }
}
