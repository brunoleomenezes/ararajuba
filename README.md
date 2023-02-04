<img src="https://github.com/brunoleomenezes/ararajuba/blob/main/ararajuba.jpg" style="width:200px; height:400px;">

# ararajuba
The Ararajubaba script analyzes schema differences between partitioned Optimized Row Columnar in the Hadoop Distributed File System.

Developed by Bruno Leonardo Santos Menezes.

------------------------------------------------------------------------------

*Installation:*

1. `wget https://github.com/brunoleomenezes/ararajuba/blob/main/ararajuba.zip`.
2. `unzip ararajuba.zip`.

------------------------------------------------------------------------------

*Execution examples:*
1. `sh ararajuba.sh sh script.sh hdfs://path/database/` - searching from a database.
------------------------------------------------------------------------------

*Analysis:*

1. The `output.txt` file contains some information about the files that were researched.

2. The file output_errors.txt stores the rows of different table schemas. If the `output_errors.txt` file is not empty, it means that there are differences and the message "Different patterns found, see the output_errors.txt file for more details" will be displayed. Otherwise, the message "All patterns are the same" will be displayed.

------------------------------------------------------------------------------

Copyright (c) [2023] [Bruno Leonardo Santos Menezes]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



