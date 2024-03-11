//TODO: APP
import Foundation;

class Task{
    var title: String
    var isCompleted: Bool
    
    init(title: String){
        self.title = title
        self.isCompleted = false
    }
}

enum TodoErrors : Error{
    case todoAlreadyExist, todoNotFound
}

class Todo{
    var todos: [Task];
    
    init(){
        self.todos = []
    }

    func addTaskSimply(task: Task) throws {
        for todo in todos {
            if todo.title == task.title {
                throw TodoErrors.todoAlreadyExist
            }
        }
        todos.append(task)
    }

    func addTask(task: Task) throws {
        guard !todos.contains(where:{$0.title == task.title}) else{
            throw TodoErrors.todoAlreadyExist
        }
        todos.append(task)
    }
    
    func markTaskAsCompletedSimple(title: String) throws{
        for todo in todos{
            if(todo.title == title){
                todo.isCompleted = true
                return;
            }
        }
        throw TodoErrors.todoNotFound
    }

    func markTaskAsCompleted(title: String) throws {
        guard let todoIndex = todos.firstIndex(where: { $0.title == title }) else {
            throw TodoErrors.todoNotFound
        }
        todos[todoIndex].isCompleted = true
    }
    
    func updateTask(title: String, updatedTodo: String) throws {
        guard let todoIndex = todos.firstIndex(where: { $0.title == title }) else {
            throw TodoErrors.todoNotFound
        }
        todos[todoIndex].title = updatedTodo
    }

    func removeTodo(title: String) throws{
        guard let todoIndex = todos.firstIndex(where: { $0.title == title }) else {
            throw TodoErrors.todoNotFound
        }
        todos.remove(at: todoIndex);
    }

    func getTask(title: String) -> Task? {
        return todos.first { $0.title == title }
    }
    
    func printTodos() {
        print("To-Do List:")
        for todo in todos {
            let status = todo.isCompleted ? "[✓]" : "[x]"
            print("TODO ::  \(todo.title) :: \(status).")
        }
    }
    func getSize()-> Int{
        return todos.count
    }
}

var todo = Todo()

do {
    try todo.addTask(task: Task(title: "Learn swift"))
    try todo.addTask(task: Task(title: "Revise swift"))
    try todo.addTask(task: Task(title: "Master swift"))
    try todo.addTask(task: Task(title: "Create Mobile App"))
    try todo.markTaskAsCompleted(title: "Learn swift")
    try todo.removeTodo(title:"Create Mobile Apps")
} catch let error {
    switch error {
    case TodoErrors.todoAlreadyExist:
        print("Cannot have duplicate todos")
    case TodoErrors.todoNotFound:
        print("Todo not found")
    default:
        print("An unknown error occurred")
    }
}

todo.printTodos()

let val = todo.getSize()
print(val)

if let task = todo.getTask(title: "Learn swift") {
    print("Found task: \(task.title)")
} else {
    print("Task not found")
}



