---
title: How to check if a Binary Tree is Symmetric
date: 2021-01-24
tags: ['java', 'interview', 'algorithm', 'problem', 'question', 'binary', 'tree']
author: Jyothi Prasad Buddha
description: This article discusses solutions for verifying if a binary tree is symmetric or not
---

Assuming that you are given a root node of a binary tree, you need to test if the tree is symmetric. This problem can be solved by both iterative and recursive approaches. Before we jump into learning how to test it. Let us look at some examples on to understand what is a symmetric or mirror binary tree.

<img src="/assets/svgs/2021/01/symmetric-binary-tree-examples.svg" onclick="return false" alt="Examples for mirror/symmetric binary trees">

Each examples given above looks exactly same if we swap right and left nodes at every level. Take the second and third trees in the above picture, even if some nodes are missing. The nodes in the third level of the second binary tree is `[3, null, null, 3]` and when we reverse them the resulting list is going to be `[null, 3, 3, null]`, however as their parents are also going to be flipped, 1st & 2nd elements will become 3rd and 4th and viceversa so the end result will be `[3, null, 3, null]`.

<img src="/assets/svgs/2021/01/non-symmetric-binary-tree-examples.svg" alt="Examples that violate mirror/symmetric binary tree rules">

In the above examples, first and third examples are very straight forward. The second example however may be little confusing. The list of elements in lever order is `[3, null, 3, null]`. When their parents are flipped the nodes will become `[3, null, 3, null]` but as in the process of finding mirror tree we also flip the leaf nodes so in the end the result is going to be `[null, 3, null, 3]` which is no where same as the original. I gave how to tree looks when we see the same in a mirror.examples

<img src="/assets/svgs/2021/01/mirror-copies-not-matching.svg" alt="Mirror tree no longer looks the same">

There are numerous ways to solve this problem we will look at three different ways to solve this problem. I will provide the code samples using Java, but they should translate to any programming language with ease. <!-- more -->

<!-- more -->

### Still being written, come after few days
