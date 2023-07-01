# aFile = File.new("log.txt", "r")

# if aFile
#     content = aFile.sysread(15)
#     puts content
# else
#     puts 'Error, Could not open file'
# end

# myFile = File.new("log.txt", "r+")

# if myFile
#     myFile.syswrite('Brian Yegon Ruby tutorial')
# else 
#     puts 'Could not open file'
# end

myFile = File.new("test.txt", "w+")

if myFile
    myFile.syswrite('This is content of new file')
else
    puts 'Error'
end