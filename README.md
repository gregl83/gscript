# gscript

Bash Google Apps Script Client

A very basic Google Apps Script client, written *mostly* in Bash, to aid with revision control of Script projects using Git.

Google API OAuth2 authentication is used by the client to access Script projects within Google Drive.

`Pull`, `Push`, and `List` Google Apps Script projects!

`gscript` was written to help with development of a drive add-on but is very much pre-alpha. If need be it *can* mature through many more iterations.

## Requirements

- Bash
- Perl, Python, or PHP (only one is needed)
- Git
- Web Browser for granted OAuth2 permissions

## Installation

    $ git clone https://github.com/gregl83/gscript.git
    $ ln -s /path/to/gscript/bin/gscript /usr/local/bin
    
Remember to edit the path to your cloned copy of `gscript`!!!

## Usage

`gscript` should always be executed from within a git repository root directory.

First create a Script project in Google Drive and then a Git repository for the project source.

Now get a list of your Google Drive projects by running the `list` command. Note: the first time `gscript` is executed it will need OAuth2 access to the Google Drive of the project.

    $ gscript list

The `list` command will list names and unique identifiers for each project belonging to the authorized Google Drive account. Make note of the project identifier for later use.

Next run the `init` command from the project repository.
 
    $ gscript init
    
A walk-through prompt for initializing the project (project identifier required) will run. The project source directory will default to `repository-name/src`. That is where the all the project files will exist.

After initialization run a `pull` of the Google Drive Apps Script project files.

    $ gscript pull
    
To `push` changes or new files to Google Drive Apps Script use the `push` command.

    $ gscript push
    
Important: to run either the `pull` or `push` commands the repository MUST have all changes committed.

## License

MIT