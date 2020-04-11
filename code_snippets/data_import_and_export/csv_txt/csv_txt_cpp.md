## Data Import & Export - C++ - txt

The txt format is similar to csv and the trim policy, which indicates what characters should be ignored at the beginning and the end of every column, often uses '\t' and ' ' as the trim character.

```txt
1 114 32.124
2 115 20.784
3 116 10.542
```

In C++, we can use three classes, `fstream`, `ifstream` or `ostream`, to  read from or write to a txt file. See [cppreference](https://en.cppreference.com/w/cpp/header/fstream) or [cplusplus](http://www.cplusplus.com/reference/fstream/fstream/) for more details.

Here are step-by-step instructions, you can also find an [example cpp file](https://github.com/Magic-wei/programming_practices/blob/master/practice_cpp/func/src/file_ReadWrite_main.cpp).

#### 1. Include the header file as follows

```c++
#include <fstream> // for fstream, ifstream, ofstream classes
```

#### 2. Choose the right class you need

- `ifstream` is used to read from a file only
- `ofstream` is used to write to a file only
- `fstream` is more flexible, you can configure the mode as read or write and it also has some advanced configuration.

```c++
ifstream reader;
ofstream writer;
fstream f;
```

#### 3. Open or create a file

```c++
// for ifstream
reader.open("data01.txt");

// for ofstream
writer.open("output.txt");

// for fstream, open a certain file named `file_name` in `open_mode` mode.
f.open(file_name, open_mode);
f.open("data01.txt", std::ios::in); // read mode
f.open("./data01.txt", std::ios::in | std::ios::nocreate); // read mode, return error when file doesn't exist
f.open("./output.txt", std::ios::out); // write mode
```

`open_mode` is an integer-type number, here is a list:

* `std::ios::in = 0x01`, read, create new file if not exist (`ifstream` default mode).
* `std::ios::out = 0x02`, write (overwrite when file exist), create new file if not exist (`ofstream` default mode).
* `std::ios::ate = 0x04`, put the pointer at the end of the file when opened. The pointer can be changed, usually used along with `std::ios::in` and `std::ios::out`.
* `std::ios::app = 0x08`, write (append), create new file if not exist, the pointer is always at the end of the opened file.
* `std::ios::trunc = 0x10`, any current content is discarded, assuming a length of zero on opening.
* `std::ios::nocreate = 0x20`, return error when file doesn't exist, usually used along with `std::ios::in` and `std::ios::app`.
* `std::ios::noreplace = 0x40`, return error when file exist, usually used along with `std::ios::out`.
* `std::ios::binary = 0x80`, open file in binary format.

#### 4. Read & Write

```c++
// Read from file
std::vector<std::vector<data_type>> data;
double tmp[col_num];
while (!reader.eof()) {
    for (size_t i = 0; i < col_num; ++i) {
        reader >> tmp[i];
    }
    std::vector<data_type> row_data(tmp, tmp + col_num);
    data.push_back(row_data);
}
data.pop_back(); // the last row is read twice, remove one record.

// Write to file
char trim_character = ' ';
writer << 1 << trim_character << "string" << "\n";
writer << 2 << trim_character << 22.0 << "\n";
```

#### 5. Close the file

Remember, before operating another file, close the current file firstly, or you cannot open other files using the same instance.

```c++
reader.close();
writer.close();
f.close();
```



