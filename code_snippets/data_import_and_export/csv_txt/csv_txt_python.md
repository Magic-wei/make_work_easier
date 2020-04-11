## Data Import & Export - Python - csv/txt

CSV (Comma-Separated Values) is a simple file format used to store tabular data. Files in the CSV format can be imported to and exported from programs that store data in tables, such as Microsoft Excel or OpenOffice Calc. There are many open-source libraries we can use to read from or write to a CSV file. A CSV file often uses `','` or `' '` as delimiter, and they might come with headers at the first row. The txt files to store data is often similar to csv files.

Typical csv/txt file structure looks like:

```csv
index,x,y
1,114,32.124
2,115,20.784
3,116,10.542
```
or with no header and use `' '` as the delimiter:

```csv
1 114 32.124
2 115 20.784
3 116 10.542
```

In Python, you can install Pandas to help you read structured data including tabular data. Here are step-by-step instructions:

#### 1. Import Pandas package
```python
import pandas as pd
```

#### 2. Read

We use `read_csv` method to import data from a csv/txt file. Set `header=None` if there is no header in the file. Delimiter sometimes can be strings other than `','` and `' '`, e.g. `"      "` which has six space characters. Note that `delimiter` (`None` by default) is an alias for `sep` (`','` by default), see [docs](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_csv.html) or [source code](https://github.com/pandas-dev/pandas/blob/a6a1ab20e1fd3b9c54308f852a4427846b0695da/pandas/io/parsers.py#L609).
```python
# Alias sep -> delimiter.
if delimiter is None:
    delimiter = sep
```

It is best to stick to `sep`, which seems to be more commonly used, and it is more consistent with other functions such as `to_csv`, which does not accept `delimiter`, only `sep`, see [docs](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_csv.html).

```python
# have no header
data = pd.read_csv("path/to/file/filename.csv", sep=' ', header=None)
data.columns = ["index", "x", "y"]  # Add headers manually
x = data["x"]  # pandas.Series type
y = data["y"]

# have header
data = pd.read_csv("path/to/file/filename.csv", sep=' ')
data = pd.read_csv("path/to/file/filename.csv")  # use ',' delimiter by default
x = data["x"]
y = data["y"]
```

You can render a `pandas.Series` object to other types if you want, e.g. numpy:
```python
x = data["x"].to_numpy()
y = data["y"].to_numpy()
```

#### 3. Write

Method `to_csv(filename)` from Pandas allows you to save data to a csv/txt file with headers. It is more recommended to write to csv files instead of txt files in this way, even though both work well.
```python
# convert list/tuple/np.array objects to pandas.DataFrame first if needed
list_1 = [1, 2, 3]
list_2 = (114, 115, 116)
list_3 = np.array([32.124, 20.784, 10.542])
raw_data = {'index': list_1,
			'x': list_2,
			'y': list_3}
data_frame = pd.DataFrame(data=raw_data)

# save to file
data_frame.to_csv('output.csv')  # recommended, use ',' as delimter by default
data_frame.to_csv('output.csv', sep=' ')  # recommended
data_frame.to_csv('output.txt')
data_frame.to_csv('output.txt', sep=' ')
```

You can also write to a file in another way.
```python
f = open('output.csv', 'w')  # use 'w' to overwrite old content, 'a' to append to the end of the file if it exists
f.write('index x y\n')
for index, x, y in zip(list_1, list_2, list_3):
    f.write('{} {} {}\n'.format(index, x, y))
f.close()
```

or
```python
with open('output.csv', 'w') as f:  # open file in this way will automatically close it when finish writing or reading.
    f.write('index x y\n')
    for index, x, y in zip(list_1, list_2, list_3):
        f.write('{} {} {}\n'.format(index, x, y))
```