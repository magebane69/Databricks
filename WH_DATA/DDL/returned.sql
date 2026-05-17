CREATE TABLE wh_gb_test.gb_test.returned (
  Order_ID VARCHAR(16) COLLATE UTF8_BINARY NOT NULL,
  CONSTRAINT `pk_returned` PRIMARY KEY (`Order_ID`),
  CONSTRAINT `fk_returned_order` FOREIGN KEY (`Order_ID`) REFERENCES `wh_gb_test`.`gb_test`.`order` (`Order_ID`))
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
