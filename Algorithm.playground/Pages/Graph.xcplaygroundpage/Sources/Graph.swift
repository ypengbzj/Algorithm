//
//  Graph.swift
//  Graph
//
//  Created by Andrew McKnight on 5/8/16.
//

import Foundation

open class AbstractGraph<T>: CustomStringConvertible where T: Hashable {
    
    // MARK: - 初始化方法
    public required init() {}
    
    public required init(fromGraph graph: AbstractGraph<T>) {
        for edge in graph.edges {
            let from = createVertex(edge.from.data)
            let to = createVertex(edge.to.data)
            
            addDirectedEdge(from, to: to, withWeight: edge.weight)
        }
    }
    
    // MARK: - 字符串表示
    open var description: String {
        fatalError("abstract property accessed")
    }
    
    // MARK: - 属性

    /// 返回图中所有顶点的数组
    open var vertices: [Vertex<T>] {
        fatalError("abstract property accessed")
    }
    
    /// 返回图中所有边的数组
    open var edges: [Edge<T>] {
        fatalError("abstract property accessed")
    }
    
    // MARK: - 创建顶点

    // Adds a new vertex to the matrix.
    // Performance: possibly O(n^2) because of the resizing of the matrix.
    /// 创建新顶点并添加到图中
    open func createVertex(_ data: T) -> Vertex<T> {
        fatalError("abstract function called")
    }
    
    // MARK: - 添加边
    
    /// 添加一条从一个顶点到另一个顶点的有向边
    open func addDirectedEdge(_ from: Vertex<T>, to: Vertex<T>, withWeight weight: Double?) {
        fatalError("abstract function called")
    }
    
    /// 添加一条连接两个顶点的无向边
    open func addUndirectedEdge(_ vertices: (Vertex<T>, Vertex<T>), withWeight weight: Double?) {
        fatalError("abstract function called")
    }
    
    // MARK: - 边的查询
    
    /// 获取两个顶点之间边的权重
    open func weightFrom(_ sourceVertex: Vertex<T>, to destinationVertex: Vertex<T>) -> Double? {
        fatalError("abstract function called")
    }
    
    /// 获取从指定顶点出发的所有边
    open func edgesFrom(_ sourceVertex: Vertex<T>) -> [Edge<T>] {
        fatalError("abstract function called")
    }
}
