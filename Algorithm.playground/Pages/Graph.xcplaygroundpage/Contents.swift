//: [Previous](@previous)

import Foundation

// 创建图
let graph = AdjacencyListGraph<String>()

// 添加顶点
let a = graph.createVertex("A")
let b = graph.createVertex("B")
let c = graph.createVertex("C")

// 添加边
graph.addDirectedEdge(a, to: b, withWeight: 1.0)
graph.addDirectedEdge(b, to: c, withWeight: 2.0)
graph.addDirectedEdge(c, to: a, withWeight: 3.0)

// 输出图表示
print(graph.description)
// 输出:
// A -> [(B: 1.0)]
// B -> [(C: 2.0)]
// C -> [(A: 3.0)]

// 获取所有边
let allEdges = graph.edges
print("边数: \(allEdges.count)") // 输出: 边数: 3

// 检查权重
if let weight = graph.weightFrom(a, to: b) {
    print("A 到 B 的权重: \(weight)") // 输出: A 到 B 的权重: 1.0
}

//: [Next](@next)
