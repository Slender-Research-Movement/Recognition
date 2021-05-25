local lang = {}

lang.Template = {
Header = "⚜️" --@#> [STRING] Log Emoji Header
Title = "Template for Pull Requests" --@#> [STRING] Log Title
--@#> [STRING] Log Inner -> Is to be provided by script
Importance = 2 --@#> [INT] Describes how many spaces after a '\n'
  
--@#> ======== EXAMPLE PRINT ========
--@#>  |⚜️| Template for Pull Requests | nil
}


lang.READY = ""

lang.APPEARENCE_ERROR = {
Header = "🛑"
Title = "Cannot get appearence info"
Importance = 0
}

lang.FLAGGED_ITEM = {
Header = "🚩"
Title = "Flagged Item"
Importance = 3
}

lang.FLAGGED_NAME = {
Header = "🏁"
Title = "Flagged Name"
Importance = 4
}

lang.DETECTED = {
Header = "💽"
Title = "Detected Slender"
Importance = 0
}

return lang
