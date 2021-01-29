---
title: Breadth First Traversal In a Binary Tree Without Recursion
date: 2016-05-17
tags: ['java', 'algorithms', 'data-structures', 'problem', 'interview-question', 'binary-tree']
author: Buddha
description: Breadth first Traversal in a binary tree is a famous problem related to binary trees tree
---

<img src="/assets/svgs/2016/breadth-first-traversal.svg" alt="Breadth first/Level order traversal of a binary tree"/>
<span class="caption">Breadth first/Level order traversal of a binary tree</span>

## The Problem

Imagine you have a binary tree where as shown above. You may be aware of InOrder traversal where you follow a scheme of visiting left subtree and then visit root node and finally visit right subtree. With small variations in order same is done in pre-order as well as post-order traversal. How do you do a breadth first traversal? It is slightly more tricky. Doing it non-recursively is even more difficult at first sight. Let me first explain what is breadthfirst traversal.

Different traversals produce different output as shown below

{% codeblock In-Order Traversal lang:java %}
1 12 23 46 89 445 461 678 789
{% endcodeblock %}

{% codeblock Post-Order Traversal lang:java %}
1 12 89 46 23 461 789 678 445
{% endcodeblock %}

{% codeblock Pre-Order Traversal lang:java %}
445 23 12 1 46 89 678 461 789
{% endcodeblock %}

{% codeblock Level-Order Traversal lang:java %}
445 23 678 12 46 461 789 1 89
{% endcodeblock %}


<!-- more -->
Trick to solve any binary tree problem without Recursion is to use an auxiliary datastructure like Queue or Stack. For this problem, we shall use Queue as shown below code snippet.

Logic is actually pretty simple, at every level after the root node, add left and right elements to the queue and repeat the process for child levels. As Queue, will give us the elements in FIFO order, when we pop the elements, we will be getting them in the order they are added, which is breadth wise.

{% codeblock lang:java %}
public void levelOrderTraversal(BinaryTree<Integer> tree) {
  Queue<BinaryTreeNode<Integer>> q = new LinkedBlockingQueue<>();
  q.add((tree.getRootNode()));
  while(true) {
    BinaryTreeNode<Integer> temp = q.poll();

    if(temp == null)
      break;

    System.out.println(temp.getValue());

    if(temp.left != null)
      q.add(temp.left);
    if(temp.right != null)
      q.add(temp.right);
  }
}
{% endcodeblock %}

What do you think of this solution? Can you think of a simpler solution? Let me know in the comments.
