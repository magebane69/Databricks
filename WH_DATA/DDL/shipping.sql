CREATE TABLE wh_gb_test.gb_test.shipping (
  Shipping_ID BIGINT NOT NULL,
  Order_ID VARCHAR(16) COLLATE UTF8_BINARY,
  Ship_Date TIMESTAMP,
  Ship_Mode VARCHAR(16) COLLATE UTF8_BINARY,
  City VARCHAR(64) COLLATE UTF8_BINARY,
  State VARCHAR(64) COLLATE UTF8_BINARY,
  Country VARCHAR(32) COLLATE UTF8_BINARY,
  Region VARCHAR(16) COLLATE UTF8_BINARY,
  CONSTRAINT `pk_shipping` PRIMARY KEY (`Shipping_ID`),
  CONSTRAINT `fk_shipping_order` FOREIGN KEY (`Order_ID`) REFERENCES `wh_gb_test`.`gb_test`.`order` (`Order_ID`))
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
