//Created  on 2018/12/11  by LCD :https://github.com/liucaide .

import Foundation
import UIKit

public extension CGRect{
    init(x:CGFloat = 0, y:CGFloat = 0, w:CGFloat = 0, h:CGFloat = 0) {
        self.init(x: x, y: y, width: w, height: h)
    }
}

public extension CGPoint{
    init(xx:CGFloat = 0, yy:CGFloat = 0) {
        self.init(x: xx, y: yy)
    }
}

public extension CGSize{
    init(w:CGFloat = 0, h:CGFloat = 0) {
        self.init(width: w, height: h)
    }
}
