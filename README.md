## storage container

A simple alpine-based storage container for sftp. Users are added to the in-mounted etc/passwd and users are chrooted to their home-folder.

Only public-key login is allowed, no passwords.

As they are ChRooted to their home-directory, it cannot be writable itself and has to be owned by root. The entry-script tries to set this. Folders inside can be.

## Example start

	 docker run --rm -it \
		 -p 22:22 \
		 -v $(PWD)/home:/home \
		 -v $(PWD)/etc:/usr/etc \
		 storage
