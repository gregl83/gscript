# gscript

Bash Google Apps Script Client

A very basic Google Apps Script client, written *mostly* in Bash, to aid with revision control of Script projects using Git.

Google API OAuth2 authentication is used by the client to access Script projects in Google Drive.

`Pull`, `Push`, `List` Google Apps Script projects!

This project was written to help with development of a drive add-on but is NOT very robust. If need be it can mature through several iterations.

## Requirements

- Bash
- Perl, Python, or PHP (just one!)
- Git
- Web Browser for granted OAuth2 permissions

## Installation

    $ git clone https://github.com/gregl83/gscript.git
    $ ln -s /path/to/gscript/bin/gscript /usr/local/bin
    
Remember to edit the path to your cloned copy of `gscript`!!!

## Usage

`gscript` should be run from within a git repository.

First create a Script project in Google Drive and then a Git repository for the Project source.
 
Once that's done `gscript` can be used from the Project repository (directory).

Get a list of your Google Drive Projects by running:

    $ gscript list
    
Note: the first time this command is run `gscript` will need OAuth2 access to the Google Drive of the Project.

The `list` command will display both Project name and a unique identifier for that project. Note the identifier of the Project.

Run the `init` command from the Project repository.
 
    $ gscript init
    
A prompt will provide a walk-through for initializing the Project (project/file id required here).

The Project source directory will default to `repository-name/src`. That is where the Project files will exist.

After initialization run a `pull` of the Google Drive Apps Script Project files.

    $ gscript pull
    
To `push` changes or new files to Google Drive Apps Script use the `push` command.

    $ gscript push
    
Important: to run either the `pull` or `push` commands the repository MUST have all changes committed.

## License

MIT