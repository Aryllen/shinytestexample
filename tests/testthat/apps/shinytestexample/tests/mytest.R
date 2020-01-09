app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$waitFor("false", timeout = 2000)
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
