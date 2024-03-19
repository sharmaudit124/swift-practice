import Foundation

func getSomeDataFromRestAPI( id : String) async -> String {
    // some networking cal or some other call over here 
    // so that main thread does not blcok

    return "DATA"
}

// async is always before throws
func getSomeDataFromRestAPIWithError( id : String) async throws -> String {
    // some networking cal or some other call over here 
    // This function can through error too!!
    // so that main thread does not blcok

    return "With Throw DATA"
}

let someData = await getSomeDataFromRestAPI( id: "id");
print(someData)

do{
    let someValue = try await getSomeDataFromRestAPIWithError(id: "id");
    print(someValue)
}catch{
    print("Error: \(error)")
}

//---------------------------Task methods------------------------
// Tas.Yeild method is used to create a suspension point explicitely

func simulateTask() async {
    for i in 1...15 {
        print("Task step \(i)")
        await Task.yield() // Yield control back to the scheduler
    }
}

// Run the task
await simulateTask()

//-------------Calling async functions parallely-----------------

func callAsyncFunctions() async {
    // Call both functions concurrently using async let
    async let someData = getSomeDataFromRestAPI(id: "id")
    async let someValue = try getSomeDataFromRestAPIWithError(id: "id")

    // Await the results of both calls
    let data = await someData
    let value = try await someValue
    print(data)
    print(value)
}