import UIKit
var array = Array(1...100)
for element in array where element % 3 == 0 && element % 2 == 0 {
    print (element)
}
