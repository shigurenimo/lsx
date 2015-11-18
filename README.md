### [lsReact - React plugin for LiveScript](https://github.com/sakanabiscuit/lsReact)

! This plugin is written LiveScript, you need to install LiveScript. LiveScript is a language which compiles to JavaScript.

JSX(facebook) need compiler, but LiveScript is not usable together with JSX. This plugin make understandable and simple. This is sample.

    require! \react-dom : ReactDOM
    require! ls-react   : { Live, init, div, a, p }

    Main = init class extends Live
        render: ->
            div [],
                p [] \hello
                a [] \world

    window.onload = ->
        \app |> document.createElement
             |> document.body.appendChild
        ReactDOM.render do
            Main []
            \app |> document.querySelector

### Installation

Have Node.js installed.

    npm i -D lsReact

### Usage

1 first, you need import plugin "lsReact".

    require! ls-react   : { Live, init, type, div, a, p }

2 create class and bind. (example:Main)

    Main = init class extends Live

        render: ->
            div [],
                p [] \hello
                a [] \world

3 render.

    ReactDOM.render do
        Main []
        \app |> document.querySelector

### Function

component

    div [] \hello,world

    # <div>hello,world</div>

null contents component

    div []

    # <div />

nest component

    div [],
        p []
        p [] \hello,world

    # <div>
    #     <p></p>
    #     <p>hello,world</p>

set props and style, etc..

    div [ test-prop:\test
        , onClick: @test-func
        , style:
          height: 200
          width:  200 ] \hello,world

    # <div test-prop = "test"
    #      onClick = {this.testFunc}
    #      style = {
    #          height:200
    #          width:200
    #      }>hello,world<div>

use original component

    test-component = init class extends Live

        (props) !->
            super props
            @state =
                num: []

        @prop-types =
            test-class:type.string

        @default-props =
            test-class:\default

        render: ->
            div [ class-name: @props.test-class ] @props.children

    Main = init class extends Live

        render: ->
            div [],
                test-component [ test-class: \test ] \hello,world

if use plain component

    Test-componet = React.createClass
        render: ->
            React.DOM.div null, 'hello,world'

    test-component = init Test-componet
