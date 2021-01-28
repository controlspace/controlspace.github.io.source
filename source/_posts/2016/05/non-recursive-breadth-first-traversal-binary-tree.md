---
title: Breadth First Traversal In a Binary Tree Without Recursion
date: 2016-05-17
tags: ['java', 'algorithms', 'data-structures', 'problem', 'interview-question', 'binary-tree']
author: Buddha
description: Breadth first Traversal in a binary tree is a famous problem related to binary trees tree
---

<div style="text-align: center">
<svg width="100%" viewBox="0 0 700 450"><g transform="translate(262.5,150)" style="z-index: 1; cursor: inherit;"><line x1="67.20" y1="-38.40" x2="-67.20" y2="38.40" class="binary-tree-arrow"></line><line x1="-67.20" y1="38.40" x2="-56.28" y2="39.01" class="binary-tree-arrow"></line><line x1="-67.20" y1="38.40" x2="-62.18" y2="28.68" class="binary-tree-arrow"></line></g><g transform="translate(437.5,150)" style="z-index: 1; cursor: inherit;"><line x1="-67.20" y1="-38.40" x2="67.20" y2="38.40" class="binary-tree-arrow"></line><line x1="67.20" y1="38.40" x2="62.18" y2="28.68" class="binary-tree-arrow"></line><line x1="67.20" y1="38.40" x2="56.28" y2="39.01" class="binary-tree-arrow"></line></g><g transform="translate(131.25,250)" style="z-index: 1; cursor: inherit;"><line x1="28.35" y1="-32.40" x2="-28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-17.83" y2="29.42" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-26.79" y2="21.58" class="binary-tree-arrow"></line></g><g transform="translate(218.75,250)" style="z-index: 1; cursor: inherit;"><line x1="-28.35" y1="-32.40" x2="28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="26.79" y2="21.58" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="17.83" y2="29.42" class="binary-tree-arrow"></line></g><g transform="translate(65.62,350)" style="z-index: 1; cursor: inherit;"><line x1="12.50" y1="-28.58" x2="-12.50" y2="28.58" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-3.37" y2="22.56" class="binary-tree-arrow"></line><line x1="-12.50" y1="28.58" x2="-14.27" y2="17.79" class="binary-tree-arrow"></line></g><g transform="translate(284.37,350)" style="z-index: 1; cursor: inherit;"><line x1="-12.50" y1="-28.58" x2="12.50" y2="28.58" class="binary-tree-arrow"></line><line x1="12.50" y1="28.58" x2="14.27" y2="17.79" class="binary-tree-arrow"></line><line x1="12.50" y1="28.58" x2="3.37" y2="22.56" class="binary-tree-arrow"></line></g><g transform="translate(481.25,250)" style="z-index: 1; cursor: inherit;"><line x1="28.35" y1="-32.40" x2="-28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-17.83" y2="29.42" class="binary-tree-arrow"></line><line x1="-28.35" y1="32.40" x2="-26.79" y2="21.58" class="binary-tree-arrow"></line></g><g transform="translate(568.75,250)" style="z-index: 1; cursor: inherit;"><line x1="-28.35" y1="-32.40" x2="28.35" y2="32.40" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="26.79" y2="21.58" class="binary-tree-arrow"></line><line x1="28.35" y1="32.40" x2="17.83" y2="29.42" class="binary-tree-arrow"></line></g><g transform="translate(350,100)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay1"></circle><text class="delay1" x="0" dy="0.6ex" y="0">445</text></g><g transform="translate(175,200)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay2"></circle><text  class="delay2" x="0" dy="0.6ex" y="0">23</text></g><g transform="translate(525,200)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay3"></circle><text  class="delay3" x="0" dy="0.6ex" y="0">678</text></g><g transform="translate(87.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay4"></circle><text  class="delay4" x="0" dy="0.6ex" y="0">12</text></g><g transform="translate(262.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay5"></circle><text class="delay5" x="0" dy="0.6ex" y="0">46</text></g><g transform="translate(43.75,400)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay8"></circle><text  class="delay8" x="0" dy="0.6ex" y="0">1</text></g><g transform="translate(306.25,400)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay9"></circle><text class="delay9" x="0" dy="0.6ex" y="0">89</text></g><g transform="translate(437.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay6"></circle><text class="delay6" x="0" dy="0.6ex" y="0">461</text></g><g transform="translate(612.5,300)" style="z-index: 3; cursor: pointer;"><circle cx="0" cy="0" r="21.87" class="binary-tree-circle fast -blink delay7"></circle><text class="delay7" x="0" dy="0.6ex" y="0">789</text></g></svg>
<p></p><span class="caption">Breadth First Traversal of A Binary Tree</span>
</div>
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

---
SVG for BinaryTree diagram is generated by using [Binary Tree Visualizer](http://btv.melezinek.cz/binary-search-tree.html)
