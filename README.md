pipesheet
=========

The pipesheet package is a free and open source software package in R that provides functions for editing Excel data within R. It allows users to write data to Excel, open it for editing, and then read the edited data back into R. This package is useful for quickly updating data in Excel and integrating it with R workflows.

Installation
------------

You can install the pipesheet package from GitHub using the `remotes` package:

```
# Install remotes package if not already installed
install.packages("remotes")

# Install the pipesheet package from GitHub
remotes::install_github("catbru/pipesheet")
```

Usage
-----

Once the pipesheet package is installed, you can load it into your R session using the `library()` function:

`library(pipesheet)`

The main functions provided by the pipesheet package are:

*   `edit(data)`: Writes data to a temporary Excel file, opens it for editing in Excel, and reads the edited data back into R as a tibble.
    
*   `view(data, row.names = FALSE)`: Writes data to a temporary Excel file and opens it for viewing in Excel. The `row.names` argument allows you to specify whether to include row names in the Excel file.
    

Examples
--------

Here are some examples of how to use the pipesheet package:

RCopy code

```
# Load the pipesheet package
library(pipesheet)

# Create a sample data frame
data <- data.frame(
  ID = c(1, 2, 3),
  Name = c("John", "Alice", "Bob"),
  Age = c(25, 30, 35))

# Edit the data in Excel
edited_data <- edit(data)

# View the data in Excel
view(data)
```

Contributing
------------

If you would like to contribute to the pipesheet package, please follow the guidelines in the CONTRIBUTING.md file in the GitHub repository. We welcome contributions, bug reports, and feedback to improve the package.

License
-------

This package is free and open source software, licensed under GPL-3. Please see the LICENSE.md file for more information.

Contact
-------

For any questions, issues, or feedback, please contact \[Roger Sanjaume\] at \[rsanjaume@gmail.com\].
