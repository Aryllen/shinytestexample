app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$waitFor("false", timeout = 10000)
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
