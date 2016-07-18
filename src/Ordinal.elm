module Ordinal exposing
    ( ordinal
    )

{-| A library for converting integers (`23`, `0`, `-2`) to ordinal strings
(`"23rd"`, `"0th"`, `"-2nd"`).

# Ordinal conversion
@docs ordinal

-}

{- Ordinal -}

{-| Convert an integer into an ordinal number string.

    ordinal 42 == "42nd"
    ordinal 0 == "0th"
    ordinal (-1) == "-1st"
-}
ordinal : Int -> String
ordinal n =
    let
        n' = abs n
        suffix =
            if n' % 100 // 10 == 1 then
                "th"
            else
                case n' % 10 of
                    1 -> "st"
                    2 -> "nd"
                    3 -> "rd"
                    _ -> "th"
    in
        toString n ++ suffix
