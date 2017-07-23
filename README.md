# [lsx - LiveScript Extension](https://github.com/sakanabiscuit/lsx)

! This plugin is written LiveScript, you need to install LiveScript.

    { render } = require 'react-dom'
    { createClass, div, a, p } = require 'lsx'

    main = createClass do
      render : ->
        div [],
          a [] 'hello'
          p [] 'world'

    window.onload = ->
      'app' |> document.createElement
            |> document.body.appendChild
      render do
        main []
        'app' |> document.querySelector

Object Oriented Programming

    { createClass, Component, div, a, p } = require 'lsx'

    main = createClass class Main extends Component
      render : ->
        div [],
          a [] 'hello'
          p [] 'world'

# Installation

    yarn install lsx

# Usage

1 import plugin 'lsx'.

    { createClass, div, a, p } = require 'lsx'

2 create class and bind. (example:Main)

    Main = createClass do
      render : ->
        div [],
          p [] 'hello'
          a [] 'world'

3 render.

    { render } = require 'react-dom'
    
    render do
      Main []
      'app' |> document.querySelector

# Function

component

    div [] 'hello,world'

    # <div>hello,world</div>

null contents component

    div []

    # <div />

nest component

    div [],
      p []
      p [] 'hello,world'

    # <div>
    #   <p/>
    #   <p>hello,world</p>
    # </div>

set props and style, etc..

    div [ test-prop: 'test'
        , onClick: @test-func
        , style:
          height: 200
          width: 200 ] 'hello,world'

    # <div
    #   test-prop = "test"
    #   onClick = {this.testFunc}
    #   style = {
    #     height:200
    #     width:200
    #   }>
    #     hello,world
    # <div>

use component and set prop-types

    { createClass, type, div} = require 'lsx'

    test-component = createClass do
      prop-types =
        test-class: type.string
      get-default-props = ->
        test-class: 'default'
      render: ->
        div [ class-name: @props.test-class ] @props.children

    Main = createClass do
      render: ->
        div [],
          test-component [ test-class: 'test' ] 'hello,world'

use plain component

    plain-component = React.createClass do
      render: ->
        React.DOM.div null, 'hello,world'

    component = createClass plain-component

    ReactDOM.render do
      component []
      'app' |> document.querySelector

