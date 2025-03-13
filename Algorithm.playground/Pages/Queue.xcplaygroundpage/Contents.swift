//: [Previous](@previous)
import Queue_PageSources

// Create a queue and put some elements on it already.
//var queueOfNames = SimpleQueue(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])
var queueOfNames = SimpleQueue<String>()


// Adds an element to the end of the queue.
queueOfNames.enqueue("Carl")
queueOfNames.enqueue("Lisa")
queueOfNames.enqueue("Stephanie")
queueOfNames.enqueue("Jeff")
queueOfNames.enqueue("Wade")
queueOfNames.enqueue("Mike")

// Queue is now ["Carl", "Lisa", "Stephanie", "Jeff", "Wade", "Mike"]
for name in queueOfNames {
    print(name)
}

let iterator = queueOfNames.makeIterator()
while let name = iterator.next() {
    print(name)
}

// Remove and return the first element in the queue. This returns "Carl".
queueOfNames.dequeue()

// Return the first element in the queue.
// Returns "Lisa" since "Carl" was dequeued on the previous line.
queueOfNames.front

// Check to see if the queue is empty.
// Returns "false" since the queue still has elements in it.
queueOfNames.isEmpty
//: [Next](@next)
