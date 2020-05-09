---
title: Admonition Style Test
date: 2016-03-02
updated: 2016-03-02
---
## Admonition

Python markdown实现中扩展了markdown的语法，让其支持了[admonition][]。标准markdown语法是不支持的，在hexo中我们可以通过安装[hexo-tag-admonition][]这个插件来用tag实现admonition。

在hexo site目录中，安装admonition插件:

```
npm install --save hexo-tag-admonition
```

使用的时候，在markdown文件中这样写:

```
{% admonition danger Don't do this %}
Hello this is just a test.
This is an another line.
{% endadmonition %}
```

然后你看到的就是下面的结果:

{% admonition danger Don't do this %}
Hello this is just a test.
This is an another line.
{% endadmonition %}


`admonition`是tag名，`danger`会是最后生成的html中用于style的class。这个地方你可以填成"note", "info", "tips", "warning", "important", "danger", "critical"，当然也可以是其他值，只要你所用的主题对这些class指定了样式就可以。

下面是一些例子:


### note / info /tips

```
{% admonition note 这是一个比较长的用于测试的中文标题 %}
Hello this is just a test
{% endadmonition %}
```

效果

{% admonition note 这是一个比较长的用于测试的中文标题 %}
Hello this is just a test
{% endadmonition %}


### warning / important

```
{% admonition warning 警告 %}
不要吃韭菜馅的水饺。
{% endadmonition %}
```

效果

{% admonition warning 警告 %}
不要吃韭菜馅的水饺。
{% endadmonition %}


### danger / critical

```
{% admonition critical Don't do this %}
Hello this is just a test
{% endadmonition %}
```

效果

{% admonition critical Don't do this %}
Hello this is just a test
{% endadmonition %}


## 使用plain html

不使用插件，我们也可以直接在markdown中写html来*粗暴的*实现admonition。

```
<div class="admonition note"><p class="admonition-title">Note</p><p>原生markdown并不支持admonition。</p><p>所以我们必须要自己手写一些html。</p></div>
```

效果

<div class="admonition note"><p class="admonition-title">Note</p><p>原生markdown并不支持admonition。</p><p>所以我们必须要自己手写一些html。</p></div>

```
<div class="admonition warning"><p class="admonition-title">Warning</p><p>Don't walk on the street alone, after 12:00 pm.</p></div>
```

效果

<div class="admonition warning"><p class="admonition-title">Warning</p><p>Don't walk on the street alone, after 12:00 pm.</p></div>

```
<div class="admonition danger"><p class="admonition-title">Danger</p><p>Boooooom!!!</p></div>
```

效果

<div class="admonition danger"><p class="admonition-title">Danger</p><p>Boooooom!!!</p></div>

[admonition]: https://pythonhosted.org/Markdown/extensions/admonition.html
[hexo-tag-admonition]: https://github.com/haishanh/hexo-tag-admonition