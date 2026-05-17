CREATE TABLE wh_gb_test.gb_test.product (
  Product_ID VARCHAR(16) COLLATE UTF8_BINARY NOT NULL,
  Product_Name VARCHAR(128) COLLATE UTF8_BINARY,
  Category VARCHAR(16) COLLATE UTF8_BINARY,
  Sub_Category VARCHAR(16) COLLATE UTF8_BINARY,
  CONSTRAINT `pk_product` PRIMARY KEY (`Product_ID`))
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpoint.writeStatsAsJson' = 'false',
  'delta.checkpoint.writeStatsAsStruct' = 'true',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd')
