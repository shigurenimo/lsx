# [lsx - LiveScript Extension](https://github.com/sakanabiscuit/lsx)

! This plugin is written [LiveScript](http://livescript.net/), you need to install LiveScript. LiveScript is a language which compiles to JavaScript.

```livescript
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
```

Object Oriented Programming

```livescript
{ createClass, Component, div, a, p } = require 'lsx'

main = createClass class Main extends Component

    render : ->
        div [],
            a [] 'hello'
            p [] 'world'
```

### Installation

    yarn install lsx

```sh
npm i lsx
```

### Usage

1 import plugin 'lsx'.

```livescript
{ createClass, div, a, p } = require 'lsx'
```

2 create class and bind. (example:Main)

```livescript
Main = createClass do

    render : ->
        div [],
            p [] 'hello'
            a [] 'world'
```

3 render.

```livescript
{ render } = require 'react-dom'
render do
    Main []
    'app' |> document.querySelector
```

# Function

component

```livescript
div [] 'hello,world'

# <div>hello,world</div>
```

null contents component

```livescript
div []

# <div />
```

nest component

```livescript
div [],
    p []
    p [] 'hello,world'

# <div>
#     <p />
#     <p>hello,world</p>
# </div>
```

set props and style, etc..

```livescript
div [ test-prop : 'test'
    , onClick : @test-func
    , style :
      height : 200
      width : 200 ] 'hello,world'

# <div test-prop = "test"
#      onClick = {this.testFunc}
#      style = {
#          height:200
#          width:200
#      }>
#     hello,world
# <div>
```

use component and set prop-types

```livescript
{ createClass, type, div } = require 'lsx'


test-component = createClass do

    prop-types =
        test-class : type.string

    get-default-props = ->
        test-class : 'default'

    render : ->
        div [ class-name: @props.test-class ] @props.children

Main = createClass do

    render: ->
        div [],
            test-component [ test-class: 'test' ] 'hello,world'
```

use plain component

```livescript
plain-component = React.createClass do
    render : ->

        React.DOM.div null, 'hello,world'

component = createClass plain-component


ReactDOM.render do
    component []
    'app' |> document.querySelector
```

use with `React.createClass`

```livescript
plain-component = React.createClass do
    test-component []
    render : ->
        div [] 'hello,world'
```
