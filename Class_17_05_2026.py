trans_rdd = spark.read.csv('/Workspace/Users/selvakumar.ravindran@gmail.com/Datafiles/customers-1000000.csv', header=True, inferSchema=True)
trans_rdd.show()
trans_rdd.select("Index", "First Name","Last Name","Company").show(100)
