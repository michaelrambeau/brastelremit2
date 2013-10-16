# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  ignoreCustomPatterns: new RegExp('.*\.less$') 
    
  templateData:
    nd: require('nodedump').dump
    x: 'test-mike2'
    
}


# Export the DocPad Configuration
module.exports = docpadConfig