//
//  TabObject.swift
//  JBScrollingTabBarController
//
// Created by Jeff Breunig on 11/9/16.
// Copyright (c) 2016 Jeff Breunig <jkbreunig@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import UIKit

struct TabObject {
    var color: UIColor
    var tabTitle: String
    var viewTitle: String
    var imageName: String
    
    init(color: UIColor,
         tabTitle: String,
         viewTitle: String,
         imageName: String) {
        self.color = color
        self.tabTitle = tabTitle
        self.viewTitle = viewTitle
        self.imageName = imageName
    }
    
    static func getTabObjects() -> [TabObject] {
        var tabObjects = [TabObject]()
        let imageNames = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]
        let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .magenta, .purple]
        for (index, imageName) in imageNames.enumerated() {
            let tabObject = TabObject(color: colors[index],
                                      tabTitle: imageName,
                                      viewTitle: "\(index)",
                imageName: imageName)
            tabObjects.append(tabObject)
        }
        return tabObjects
    }
}
