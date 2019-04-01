//
//  CalculationModelTest.swift
//  CalculationTests
//
//  Created by 前田陸 on 2019/01/08.
//  Copyright © 2019年 陸　前田. All rights reserved.
//

import XCTest
@testable import Calculation

class CalculationModelTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //台形の表面積のユニットテスト
    func testTrapezoid() {
        class VCMock:CalculationModel {
            override func trapezoid(value1: Double, value2: Double, value3: Double) -> Double{
                return (value1+value2)*value3/2.0
            }
        }
        
        let vcm:VCMock = VCMock()
        
        // 期待する戻り値
        let expected: [Double] = [15.0, 630.0, 30200.0, 1850250.0]
        
        // テスト対象
        let value1: [Double] = [2.0, 15.0, 123.0, 1000.0]
        let value2: [Double] = [3.0, 27.0, 179.0, 1467.0]
        let value3: [Double] = [6.0, 30.0, 200.0, 1500.0]
        
        for i in 0...3 {
            let vcmResult = vcm.trapezoid(value1: value1[i], value2: value2[i], value3: value3[i])
            //テスト結果
            XCTAssertEqual(vcmResult, expected[i])
        }
    }
    
    //直方体の表面積のユニットテスト
    func testAreaCuboid() {
        class VCMock:CalculationModel {
            override func areaCuboid(value1: Double, value2: Double, value3: Double) -> Double{
                return 2.0 * ((value1*value2) + (value2*value3) + (value3*value1))
            }
        }
        
        let vcm:VCMock = VCMock()
        
        // 期待する戻り値
        let expected: [Double] = [72.0, 3330.0, 164834.0, 10335000.0]
        
        // テスト対象
        let value1: [Double] = [2.0, 15.0, 123.0, 1000.0]
        let value2: [Double] = [3.0, 27.0, 179.0, 1467.0]
        let value3: [Double] = [6.0, 30.0, 200.0, 1500.0]
        
        for i in 0...3 {
            let vcmResult = vcm.areaCuboid(value1: value1[i], value2: value2[i], value3: value3[i])
            //テスト結果
            XCTAssertEqual(vcmResult, expected[i])
        }
    }
    
    //四角錐の表面積のユニットテスト
    func testAreaSquarePyramid() {
        class VCMock:CalculationModel {
            override func areaSquarePyramid(value1: Double, value2: Double, value3: Double) -> Double{
                return (value1*value2) + (value1 * sqrt(value3*value3 + (value2/2.0)*(value2/2.0))) + (value2 * sqrt(value3*value3 + (value1/2.0)*(value1/2.0)))
            }
        }
        
        let vcm:VCMock = VCMock()
        
        // 期待する戻り値
        let expected: [Double] = [36.61760446774764, 1733.3924136754556, 86422.16008791991, 5456267.843651352]
        
        // テスト対象
        let value1: [Double] = [2.0, 15.0, 123.0, 1000.0]
        let value2: [Double] = [3.0, 27.0, 179.0, 1467.0]
        let value3: [Double] = [6.0, 30.0, 200.0, 1500.0]
        
        for i in 0...3 {
            let vcmResult = vcm.areaSquarePyramid(value1: value1[i], value2: value2[i], value3: value3[i])
            //テスト結果
            XCTAssertEqual(vcmResult, expected[i])
        }
    }
    
    //直方体の体積のユニットテスト
    func testVolumeCuboid() {
        class VCMock:CalculationModel {
            override func volumeCuboid(value1: Double, value2: Double, value3: Double) -> Double{
                return value1 * value2 * value3
            }
        }
        
        let vcm:VCMock = VCMock()
        
        // 期待する戻り値
        let expected: [Double] = [36.0, 12150.0, 4403400.0, 2200500000.0]
        
        // テスト対象
        let value1: [Double] = [2.0, 15.0, 123.0, 1000.0]
        let value2: [Double] = [3.0, 27.0, 179.0, 1467.0]
        let value3: [Double] = [6.0, 30.0, 200.0, 1500.0]
        
        for i in 0...3 {
            let vcmResult = vcm.volumeCuboid(value1: value1[i], value2: value2[i], value3: value3[i])
            //テスト結果
            XCTAssertEqual(vcmResult, expected[i])
        }
    }

}
