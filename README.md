# Article Searcher MacOSX Command Line Tool

This command line tool is a simple command line tool that will carry out a case insensitive search of the presupplied articles. It is developed within Xcode 6 on MacOSX 10.10.2.

The source code and all the unit tests can be executed from within Xcode. 

#Instructions

Using the supplied .ZIP file:

1. Open the .ZIP file containing the UNIX executable to a MacOSX machine and copy to a directory of your choice. 
2. Open up an instsance of Terminal
3. `cd /directory/of/your/choice`
4. type in `./ArticleSearch`

This will display the following helpful instructions:

To use this utility you have to supply commands in the following format:

    ./ArticleSearch [operator] [texttosearch]

[operator] choice between AND or OR

[texttosearch] a comma separated string of words to search for


There is also a special parameter to show the test outputs:

    showtests

E.g. ./ArticleSearch -showtests`

Follow the instructions to perform a search against the articles.


Building from Xcode:

1. Clone the repository https://github.com/jordmaz82/ArticleSearch.git
2. Open the project by double clicking the .xcopeproj file
3. Select Product > Build from the menu
4. Once built, expand the Products directory in the Project Navigator (select CMD 1 to show if not visible) and right click on ArticleSearch > Show In Finder
5. Open up and instance of Terminal
6. CD to the directory of the executable
7. type in `./ArticleSearch`

This will display the following helpful instructions:

To use this utility you have to supply commands in the following format:

    ./ArticleSearch [operator] [texttosearch]

[operator] choice between AND or OR

[texttosearch] a comma separated string of words to search for


There is also a special parameter to show the test outputs:

    showtests

E.g. ./ArticleSearch -showtests`

Follow the instructions to perform a search against the articles.



##Examples

Care Quality Commission OR

    ./ArticleSearch OR care,quality,commission

Care Quality Commission admission AND

    ./ArticleSearch AND care,quality,commission,admission


#Unit Tests and XCode Project

The command line tool contains a special parameter to execute the unit tests and display some output. However, this does not show you the full test suite nor does it provide details of the implementation. It simply highlights the Acceptance Criteria tests.

The source code is stored within an Xcode project where you can scrutinise the source. The unit tests are stored in a different target and can be run from the following key command:

`CMD` & `U`

or

Product > Test from the context menu


