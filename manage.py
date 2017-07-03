from script import setting
from script import app

import sys
import getpass
import threading

# global settings
help_doc = """
Usage: python manage.py [args]\n
[args]
	runserver [port]
	createsuperuser

[options]
	--debug
	--server"""

DEBUG = "--debug"
SERVER = "--server"

# print the help document
if len(sys.argv) < 2:
	print help_doc
else:
	if sys.argv[1] == "runserver":
		try:
			port = int(sys.argv[2]) if len(sys.argv)==3 and sys.argv[2] != DEBUG else 8080
		except ValueError:
			print "Incorrect port number"
			print help_doc
			sys.exit()

		# Run server with debug mode
		if DEBUG in sys.argv[2:]:
			if SERVER in sys.argv[2:]:
				app.application.run(port=port, server="paste", debug=True)
			else:
				app.application.run(port=port, debug=True)
		elif SERVER in sys.argv[2:]:
			app.application.run(port=port, server="paste")
		else:
			app.application.run(port=port)

	elif sys.argv[1] == "createsuperuser":
		username = raw_input("Enter the username: ")
		# Enter the passowrd but not show
		password = getpass.getpass("Enter the password: ")
		print setting.create_super_user(username,password)

	else:
		print help_doc
