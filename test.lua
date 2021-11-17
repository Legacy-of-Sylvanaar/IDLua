-- Simple empty table
mytable = {}
print("Type of mytable is ",type(mytable))

mytable[1]= "Lua"
mytable["wow"] = "Tutorial"

print("mytable Element at index 1 is ", mytable[1])
print("mytable Element at index wow is ", mytable["wow"])

-- alternatetable and mytable refers to same table
alternatetable = mytable

print("alternatetable Element at index 1 is ", alternatetable[1])
print("alternatetable Element at index wow is ", alternatetable["wow"])

alternatetable["wow"] = "I changed it"

print("mytable Element at index wow is ", mytable["wow"])

-- only variable released and and not table
alternatetable = nil
print("alternatetable is ", alternatetable)

-- mytable is still accessible
print("mytable Element at index wow is ", mytable["wow"])

mytable = nil
print("mytable is ", mytable)

-- Assuming we have a module printFormatter
-- Also printFormatter has a funtion simpleFormat(arg)
-- Method 1
require "printFormatter"
printFormatter.simpleFormat("test")

-- Method 2
local formatter = require "printFormatter"
formatter.simpleFormat("test")

-- Method 3
require "printFormatter"
local formatterFunction = printFormatter.simpleFormat
formatterFunction("test")