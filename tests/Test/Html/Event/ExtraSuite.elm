module Test.Html.Event.ExtraSuite exposing (suite)

import Html
import Html.Events.Extra as Events
import Test exposing (Test, describe, test)
import Test.Html.Event as HtmlEvent
import Test.Html.Event.Extra as HtmlEvent
import Test.Html.Query as HtmlQuery


suite : Test
suite =
    describe "Decode test"
        [ test "releaseEnter" <|
            \_ ->
                Html.div [ Events.onEnter ReleaseEnter ] []
                    |> HtmlQuery.fromHtml
                    |> HtmlEvent.simulate HtmlEvent.releaseEnter
                    |> HtmlEvent.expect ReleaseEnter
        , test "change" <|
            \_ ->
                Html.input [ Events.onChange Change ] []
                    |> HtmlQuery.fromHtml
                    |> HtmlEvent.simulate (HtmlEvent.change "goats")
                    |> HtmlEvent.expect (Change "goats")
        ]


type Event
    = ReleaseEnter
    | Change String
