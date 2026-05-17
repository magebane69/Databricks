import csv

file = open ('D:\\Downloads\\customers-100.csv', mode='r')
csv_content = csv.reader(file)
for row in csv_content:
    print(row)
for r in csv_content:
    print(r[0])



file = open('D:\\Downloads\\customers-100.csv', mode='r')
csv_content = csv.reader(file)

# Get the header row
headers = next(csv_content)

# Find the index of your desired column
column_name = 'Customer Name'  # Replace with your actual column name
column_index = headers.index(column_name)

# Print that column
for r in csv_content:
    print(r[column_index])

#########################################
from oldclass6.sql import SparkSession

spark=SparkSession.builder.getOrCreate()
df=spark.range(10)
df.show()