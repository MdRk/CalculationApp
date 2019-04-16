//
//  UnitModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class UnitModel {
    
    // km³->m³
    func billion(x: Double) -> Double {
        return x * 1000000000
    }
    
    //km²->m², m³->cm³
    func million(x: Double) -> Double {
        return x * 1000000
    }
    
    // m²->cm², ha->m²
    func tThousand(x: Double) -> Double {
        return x * 10000
    }
    
    // t->kg, kg->g, g->mg, km->m, cm³->mm³, kL->L
    func thousand(x: Double) -> Double {
        return x * 1000
    }
    
    // m->cm, cm²->mm², a->m², dL->mL
    func hundred(x: Double) -> Double {
        return x * 100
    }
    
    // cm->mm, L->dL
    func ten(x: Double) -> Double {
        return x * 10
    }
    
    // ダース
    func dozen(x: Double) -> Double {
        return x * 12
    }
}
