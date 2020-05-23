import Foundation

import DapperCore

let dapper = DapperCore()
do {
    let result = try dapper.run()
    print(result)
} catch {
    print("An error occurred: \(error)")
    exit(1) // EXIT_FAILURE
}
