app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$snapshot()
Sys.sleep(5)
app$setInputs(hi = "click")
app$snapshot()
app$setInputs(hi = "click")
app$snapshot()
