/** not used after using hexo render
function escape(html, encode) {
  return html
    .replace(!encode ? /&(?!#?\w+;)/g : /&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}
*/

hexo.extend.tag.register('admonition', function(args, content) {
  var cls = args[0] || 'note';
  var title = args.slice(1).join(' ') || 'Note';
  var lines = hexo.render.renderSync({
    text: content,
    engine: 'markdown'
  });

  return '<div class="admonition ' + cls +
          '"><p class="admonition-title">' +
          title + '</p>' + lines + '</div>';
}, {
  async: true,
  ends: true
});
