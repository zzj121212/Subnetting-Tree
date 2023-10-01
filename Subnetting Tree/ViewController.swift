//
//  ViewController.swift
//  Subnetting Tree
//
//  Created by apple on 29/9/2023.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
     }

    
   
   

    //64个1和0，然后if 一个0或1的root
    

}

 
    
    
    



class TreeNode<T>{
    var data: T
    var level: Int?
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(data: T, leftNode: TreeNode? = nil,
         rightNode: TreeNode? = nil, level: Int){
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
        self.level = level
    }
}

class BinaryTree<T: Comparable & CustomStringConvertible>

{
    private var rootNode: TreeNode<T>?

    func insert(element: T, level:Int){
        let node = TreeNode(data: element, level: level) //New node
        if let rootNode = self.rootNode{
            self.insert(element: rootNode as! T, level: level)
        }else{
            self.rootNode = node
        }
    }

    //recursive function
    private func insert(_ rootNode: TreeNode<T>, _ node: TreeNode<T>){
        if rootNode.data > node.data{// if the new value is less than the root value, put it in the left leaf.
            if let leftNode = rootNode.leftNode{
                self.insert(leftNode, node)
            }else{
                rootNode.leftNode = node //Once it get nil it will assign as a child node.
                
            }
            
        }else{   //if the new value is greater than the root value, put it in the left leaf.
            if let rightNode = rootNode.rightNode{
                self.insert(rightNode, node)
            }else{
                rootNode.rightNode = node
                    
                }
                
            }
            
        }
        
    }

func initTree( _node: TreeNode<Int>?){
    let tree = BinaryTree<Int>()
    tree.insert(element: 0, level: 32)
    tree.insert(element: 1, level: 32)
    tree.insert(element: 0, level: 31)
    tree.insert(element: 1, level: 31)
    tree.insert(element: 0, level: 30)
    tree.insert(element: 1, level: 30)
    tree.insert(element: 0, level: 29)
    tree.insert(element: 1, level: 29)
    tree.insert(element: 0, level: 28)
    tree.insert(element: 1, level: 28)
    tree.insert(element: 0, level: 27)
    tree.insert(element: 1, level: 27)
    tree.insert(element: 0, level: 26)
    tree.insert(element: 1, level: 26)
    tree.insert(element: 0, level: 25)
    tree.insert(element: 1, level: 25)
    tree.insert(element: 0, level: 24)
    tree.insert(element: 1, level: 24)
    tree.insert(element: 0, level: 23)
    tree.insert(element: 1, level: 23)
    tree.insert(element: 0, level: 22)
    tree.insert(element: 1, level: 22)
    tree.insert(element: 0, level: 21)
    tree.insert(element: 1, level: 21)
    tree.insert(element: 0, level: 20)
    tree.insert(element: 1, level: 20)
    tree.insert(element: 0, level: 19)
    tree.insert(element: 1, level: 19)
    tree.insert(element: 0, level: 18)
    tree.insert(element: 1, level: 18)
    tree.insert(element: 0, level: 17)
    tree.insert(element: 1, level: 17)
    tree.insert(element: 0, level: 16)
    tree.insert(element: 1, level: 16)
    tree.insert(element: 0, level: 15)
    tree.insert(element: 1, level: 15)
    tree.insert(element: 0, level: 14)
    tree.insert(element: 1, level: 14)
    tree.insert(element: 0, level: 13)
    tree.insert(element: 1, level: 13)
    tree.insert(element: 0, level: 12)
    tree.insert(element: 1, level: 12)
    tree.insert(element: 0, level: 11)
    tree.insert(element: 1, level: 11)
    tree.insert(element: 0, level: 10)
    tree.insert(element: 1, level: 10)
    tree.insert(element: 0, level: 9)
    tree.insert(element: 1, level: 9)
    tree.insert(element: 0, level: 8)
    tree.insert(element: 1, level: 8)
    tree.insert(element: 0, level: 7)
    tree.insert(element: 1, level: 7)
    tree.insert(element: 0, level: 6)
    tree.insert(element: 1, level: 6)
    tree.insert(element: 0, level: 5)
    tree.insert(element: 1, level: 5)
    tree.insert(element: 0, level: 4)
    tree.insert(element: 1, level: 4)
    tree.insert(element: 0, level: 3)
    tree.insert(element: 1, level: 3)
    tree.insert(element: 0, level: 2)
    tree.insert(element: 1, level: 2)
    tree.insert(element: 0, level: 1)
    tree.insert(element: 1, level: 1)
}
    
extension BinaryTree{
    
    func traverse(){
        self.inorder(self.rootNode)
        print("\n\nIn-ORDER TRAVERSE")
        
        
        
    }
    
    private func inorder(_ node: TreeNode<T>?){
        guard let _ = node
        else{return}
        self.inorder(node?.leftNode)
        print("\(node!.data)", terminator: "")
        self.inorder(node?.rightNode)
        
        
    }
    
    private func preorder(_ node: TreeNode<T>? ){
        
        guard let _ = node
        else{return}
        print("\(node!.data)", terminator: "")
        self.preorder(node?.leftNode)
        self.preorder(node?.rightNode)
        
    }
    
    private func postorder(_ node: TreeNode<T>? ){
        
        guard let _ = node
        else{return}
        self.postorder(node?.leftNode)
        self.postorder(node?.rightNode)
        print("\(node!.data)", terminator: "")

        
    }
    
    
    
    
}


func alloIPv4(_node: TreeNode<Int>?){
    
    
    
    
}


    
    
    
    
    
    
    
    

