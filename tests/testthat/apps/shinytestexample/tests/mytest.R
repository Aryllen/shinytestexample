app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
