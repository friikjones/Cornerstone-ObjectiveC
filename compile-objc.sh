# -fobjc-arc : enable ARC
# -fmodules : enable modules so you can import with `@import Foundation;`
# -mmacosx-version=10.6 : support older OS X versions, this might increase bin size
clang -Wall -framework Foundation -isysroot `xcrun --show-sdk-path` -fobjc-arc -fmodules main.m -o main 
