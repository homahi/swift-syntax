//
//  GameProtocol.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/17.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

protocol GameProtocol{
    var gamePoint:Int {get}
    func hit()
    func miss()
}
