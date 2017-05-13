{Component} = require 'react'
{createClass, Component, div, a, p} = require '../index.js'

Test = createClass class extends Component
  (props) !->
    super props
    this.state = do
      num: []

  this.defaultProps = do
    test: 'defaultID'

  render: ->
    div [className: this.props.test],
      p [], this.props.children

main = createClass do
  render: ->
    div [],
      div [], 'r'
      div [],
        div [], 'hello'
        Test [test: 's'],
          a []
          a [], 'world'
      div [className: 'q']
      div [className: 'ff'] 's'

{render} = require 'react-dom'

window.onload = ->
  'app'
    |> document.createElement
    |> document.body.appendChild
  render do
    main []
    'app' |> document.querySelector
