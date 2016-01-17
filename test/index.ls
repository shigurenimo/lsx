ReactDOM = require 'react-dom'
{ createClass, Component, type, div, a, p } = require '../index.ls'

test-div = createClass class extends Component

    (props) !->
        super props
        @state =
            num : []

    @propTypes =
        test : type.string

    @defaultProps =
        test : 'defaultID'

    render : ->
        div [ className : @props.test ],
            p [], @props.children

main = createClass do

    render : ->
        div [],
            div [], 'r'
            div [],
                div [] ,'hello'
                test-div [ test : 's' ],
                    a []
                    a [], 'world'
            div [ className : 'q' ]
            div [ className : 'ff' ] 's'

window.onload = ->
    'app' |> document.createElement
          |> document.body.appendChild
    ReactDOM.render do
        main []
        'app' |> document.querySelector
