CREATE TABLE wh_gb_test.gb_test.order_detail (
  RowID_ID BIGINT NOT NULL,
  Order_ID VARCHAR(16) COLLATE UTF8_BINARY,
  Product_ID VARCHAR(16) COLLATE UTF8_BINARY,
  Sales FLOAT,
  Quantity INT,
  Discount FLOAT,
  Profit FLOAT,
  Shipping_Cost FLOAT,
  CONSTRAINT `pk_order_detail` PRIMARY KEY (`RowID_ID`),
  CONSTRAINT `fk_order` FOREIGN KEY (`Order_ID`) REFERENCES `wh_gb_test`.`gb_test`.`order` (`Order_ID`),
  CONSTRAINT `fk_product` FOREIGN KEY (`Product_ID`) REFERENCES `wh_gb_test`.`gb_test`.`product` (`Product_ID`))
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpoint.writeStatsAsJson' = 'false',
  'delta.checkpoint.writeStatsAsStruct' = 'true',
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.identityColumns' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd')
