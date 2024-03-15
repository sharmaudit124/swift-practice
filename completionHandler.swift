import Foundation

let myCompletionHandler: (Bool) -> Void = { isCompleted in
    if isCompleted {
        print("Work is Completed")
    } else {
        print("Not Completed")
    }
}

func performTask(completion: @escaping (Bool) -> Void) {
    DispatchQueue.global().async {
        print("Task started")
        sleep(2)
        let success = Bool.random()
        completion(success)
        print("Task completed")
    }
    print("performTask(completion:) returned")
}

print("Before calling performTask")

performTask(completion: myCompletionHandler)

print("After calling performTask")

print("Before sleeping")

sleep(3)

print("After sleeping")

