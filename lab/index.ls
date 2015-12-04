require! \react-dom   : ReactDOM
require! \../index.ls : { io, Component, type, div, a, p }

test-div = io class extends Component

    (props) !->
        super props
        @state =
            num: []

    @propTypes =
        test:type.string

    @defaultProps =
        test: 'defaultID'

    render: ->
        div [ class-name: @props.test ],
            p [] @props.children

main = io do
    render: ->
        div [],
            div [] \r
            div [],
                div [] \hello
                test-div [ test:'s' ],
                    a []
                    a [] \world
            div [ class-name: \q ]
            div [ class-name: \ff ] \s

window.onload = ->
    \app |> document.createElement
         |> document.body.appendChild
    ReactDOM.render do
        main []
        \app |> document.querySelector
