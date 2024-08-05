# What's the difference between File::path and File#path for version 2.7.8 of Ruby?

# File::path is a class method that calls the path class method for files.
# It will be used like this: file.path(argument)

# File#path is an instance method, so it is called on file object that like this: 'file'.path

# Definitely need a deeper understanding. 