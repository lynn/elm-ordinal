# elm-ordinal
Elm library for making English ordinal strings (1st, 2nd, 3rd)

## Example

```
import Ordinal exposing (ordinal, ordinalSuffix)

ordinal 42 == "42nd"
ordinal 0 == "0th"
ordinal (-1) == "-1st"

ordinalSuffix 42 == "nd"
ordinalSuffix 0 == "th"
ordinalSuffix (-1) == "st"
```

## TODO

* Support other languages, perhaps.
