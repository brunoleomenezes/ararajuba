
# ararajuba
<img src="https://github.com/brunoleomenezes/ararajuba/blob/main/ararajuba.jpg" style="width:200px; height:200px;">

------------------------------------------------------------------------------

The Ararajuba script aims to identify whether Optimized Row Columnar files in the Hadoop Distributed File System are corrupted, for this purpose it uses the count method and analyzes the difference in schemas in the tables.
Developed by Bruno Menezes.

------------------------------------------------------------------------------

*Installation:*

1. `wget https://github.com/brunoleomenezes/ararajuba/blob/main/ararajuba.zip`.
2. `unzip ararajuba.zip`.

------------------------------------------------------------------------------

*Execution examples:*
1. `sh ararajuba.sh -schema hdfs://path/database/table/`.
2. `sh ararajuba.sh -count hdfs://path/database/table/ <integer>`.  

------------------------------------------------------------------------------

*Analysis:*

`sh ararajuba.sh -schema hdfs://path/database/table/`:
1. The `output.txt` file contains some information about the files that were researched.

2. The file `output_errors.txt` stores the rows of different table schemas. If the `output_errors.txt` file is not empty, it means that there are differences and the message "Different patterns found, see the output_errors.txt file for more details" will be displayed. Otherwise, the message "All patterns are the same" will be displayed.

`sh ararajuba.sh -count hdfs://path/database/table/ <integer>`:
1. In the file `output_count_errors.txt` the tables that gave error in select count (integer).

------------------------------------------------------------------------------

*Important:*

It is good practice to remove or move the `output.txt`, `output_erros.txt` and `output_count_errors.txt` files with each new search. Examples:

1. `rm output.txt`.
2. `mv output_erros.txt path`.

------------------------------------------------------------------------------

MIT License

Copyright (c) 2023 Bruno Menezes

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
