---
title: Right View of Binary Tree without Recursion
date: 2016-07-22
tags: ['java', 'algorithms','datastructures', 'solutions','problems']
author: Buddha
description: This article shows you how to print right view of a binary tree, which using recursion.
---

<div style="text-align: center">
<svg width="100%" viewBox="0 0 700 450"><g transform="translate(262.5,150)" style="z-index: 1; cursor: inherit;"><line class="binary-tree-arrow" x1="67.20" y1="-38.40" x2="-67.20" y2="38.40"></line><line x1="-67.20" y1="38.40" x2="-56.28" y2="39.01" class="binary-tree-arrow"></line><line x1="-67.20" y1="38.40" x2="-62.18" y2="28.68" class="binary-tree-arrow"></line></g><g transform="translate(131.25,250)" style="z-index: 1; cursor: inherit;"><line x1="28.35" y1="-32.40" x2="-28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-17.83" y2="29.42" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-26.79" y2="21.58" class="binary-tree-arrow"></line></g><g transform="translate(65.62,350)" style="z-index: 1; cursor: inherit;"><line x1="12.50" y1="-28.58" x2="-12.50" y2="28.58" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-3.37" y2="22.56" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-14.27" y2="17.79" class="binary-tree-arrow"></line></g><g transform="translate(218.75,250)" style="z-index: 1; cursor: inherit;"><line x1="-28.35" y1="-32.40" x2="28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="26.79" y2="21.58" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="17.83" y2="29.42" class="binary-tree-arrow"></line></g><g transform="translate(240.62,350)" style="z-index: 1; cursor: inherit;"><line x1="12.50" y1="-28.58" x2="-12.50" y2="28.58" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-3.37" y2="22.56" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-14.27" y2="17.79" class="binary-tree-arrow"></line></g><g transform="translate(437.5,150)" style="z-index: 1; cursor: inherit;"><line x1="-67.20" y1="-38.40" x2="67.20" y2="38.40" class="binary-tree-arrow"></line><line x1="67.20" y1="38.40" x2="62.18" y2="28.68" class="binary-tree-arrow"></line><line x1="67.20" y1="38.40" x2="56.28" y2="39.01" class="binary-tree-arrow"></line></g><g transform="translate(481.25,250)" style="z-index: 1; cursor: inherit;"><line x1="28.35" y1="-32.40" x2="-28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-17.83" y2="29.42" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-26.79" y2="21.58" class="binary-tree-arrow"></line></g><g transform="translate(568.75,250)" style="z-index: 1; cursor: inherit;"><line x1="-28.35" y1="-32.40" x2="28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="26.79" y2="21.58" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="17.83" y2="29.42" class="binary-tree-arrow"></line></g><g transform="translate(350,100)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle -highlight"></circle><text x="0" dy="0.6ex" y="0">44</text></g><g transform="translate(175,200)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle dull"></circle><text x="0" dy="0.6ex" y="0">23</text></g><g transform="translate(87.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle dull"></circle><text x="0" dy="0.6ex" y="0">13</text></g><g transform="translate(43.75,400)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle dull"></circle><text x="0" dy="0.6ex" y="0">7</text></g><g transform="translate(262.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle dull"></circle><text x="0" dy="0.6ex" y="0">27</text></g><g transform="translate(218.75,400)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle -highlight"></circle><text x="0" dy="0.6ex" y="0">26</text></g><g transform="translate(525,200)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle -highlight"></circle><text x="0" dy="0.6ex" y="0">51</text></g><g transform="translate(437.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle dull"></circle><text x="0" dy="0.6ex" y="0">50</text></g><g transform="translate(612.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle -highlight"></circle><text x="0" dy="0.6ex" y="0">65</text></g></svg>
<p></p><span class="caption">Right View of Binary Tree</span>
</div>

## The Problem

Imagine you have a binary tree and wants to get all the nodes that will be visible when seen from the right side of the tree. How do you print all such nodes? Final output for this tree should be 44, 51, 65, 26. In other words, the first nodes we touch upon if we draw horizontal lines from right side of the tree. Read on to find the solution.

 <!-- more -->

## The Solution

Quicktip, whenever we try to do something without using recursion, you need to use some auxiliary datastructure like Queue or Stack. To solve this problem, we use a queue.

To solve this problem, we use a mechanism similar to {% post_link 2016/05/non-recursive-breadth-first-traversal-binary-tree Breadth First Traversal %}.

We start with pushing the root node and a null node into queue, to indicate first level is complete. We begin iterating until queue becomes empty. In every iteration, we dequeue a node, if it is not null node, we enqueue its children to the end of queue. We keep adding until children of all the nodes are added to queue.

If we encounter a null node, it means we reached end of the current level. We need to print the node dequeued before this node. To acheive this, we keep checking if next node in the queue is a null node by using `peek` method. As soon as the peek method returns null, it means this is the last node in the current level, we have to print it. If we get a null node, we have to check if there are more nodes to be dequeued, if there are no more nodes, we have reached end of the binary tree, otherwise, we just reached end of current level and more nodes are present in the queue. Find the program below written in java.

{% codeblock Program to print Right View of A Binary Tree lang:java %}
public void rightView(Node root) {
    Queue<Node> queue = new Queue<>();
    if(root != null) {
        queue.enqueue(root);
        queue.enqueue(null);  // first level is over
    }

    while (!queue.isEmpty()) {
        Node temp = queue.dequeue();
        if(temp == null) {
            if(queue.getSize() > 0)
                queue.enqueue(null);   // current level is over
            continue;
        }

        if(queue.peek() == null)      // next node is null means end of current level, so print it.
            System.out.println(temp.data);
        if(temp.left != null)
            queue.enqueue(temp.left);
        if(temp.right != null)
            queue.enqueue(temp.right);
    }
}
{% endcodeblock %}

What do you think of this solution? Can you think of a simpler solution? Let me know in the comments.

---
SVG for BinaryTree diagram is generated by using [Binary Tree Visualizer](http://btv.melezinek.cz/binary-search-tree.html)
