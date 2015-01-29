
arg="GET /bsd HTTP/1.1"
arg.split()
# We've already split the string earlier in handle()
# Handle did this and then passed it on to handle_get
arg=arg.split()[1..-1].join(" ")
# Isolate the URI
arg.split()[0]
# Break up each argument
(arg.split[0]).split('/')
# Remove the empty string before the first /
(arg.split[0]).split('/')[1..-1]


