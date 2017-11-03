React = require 'react'

process = ->
  arg = arguments[0]
  a = []
  if arg[1] is not undefined
    a = Array.prototype.slice.call arg, 1
  else
    a = Array.prototype.slice.call arg, 2
    a.shift arg[1]
  if arg[0][0] is not undefined
    a.unshift arg[0][0]
  else
    a.unshift null
  return a

createClass = (component) ->
  if typeof component is 'object'
    component = React.createClass component
  -> React.createFactory(component).apply this, (process arguments)

exports.createClass = createClass

html = [
  'a', 'abbr', 'address', 'area', 'article', 'aside', 'audio', 'b', 'base', 'bdi', 'bdo', 'big', 'blockquote', 'body', 'br',
  'button', 'canvas', 'caption', 'cite', 'code', 'col', 'colgroup', 'data', 'datalist', 'dd', 'del', 'details', 'dfn',
  'dialog', 'div', 'dl', 'dt', 'em', 'embed', 'fieldset', 'figcaption', 'figure', 'footer', 'form', 'h1', 'h2', 'h3', 'h4', 'h5',
  'h6', 'head', 'header', 'hgroup', 'hr', 'html', 'i', 'iframe', 'img', 'input', 'ins', 'kbd', 'keygen', 'label', 'legend', 'li',
  'link', 'main', 'map', 'mark', 'menu', 'menuitem', 'meta', 'meter', 'nav', 'noscript', 'object', 'ol', 'optgroup',
  'option', 'output', 'p', 'param', 'picture', 'pre', 'progress', 'q', 'rp', 'rt', 'ruby', 's', 'samp', 'script', 'section',
  'select', 'small', 'source', 'span', 'strong', 'style', 'sub', 'summary', 'sup', 'table', 'tbody', 'td', 'textarea',
  'tfoot', 'th', 'thead', 'time', 'title', 'tr', 'track', 'u', 'ul', 'var$', 'video', 'wbr'
].map (tag) -> exports[tag] = -> React.DOM[tag].apply this, (process arguments)

svg = [
  'circle', 'clipPath', 'defs', 'ellipse', 'g', 'image', 'line', 'linearGradient', 'mask', 'path', 'pattern',
  'polygon', 'polyline', 'radialGradient', 'rect', 'stop', 'svg', 'text', 'tspan'
].map (tag) -> exports[tag] = -> React.DOM[tag].apply this, (process arguments)

exports.React = React

exports.Component = React.Component