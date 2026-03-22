## Anomaly Analysis

### Insert Anomaly

In the given dataset (orders_flat.csv), customer, product, and sales representative data are stored together in a single table. Because of this, we cannot insert a new customer or product unless there is an associated order. For example, if a new customer registers but has not placed an order yet, their data cannot be stored. This leads to an insert anomaly.

### Update Anomaly

The same information is repeated across multiple rows. For instance, a sales representative’s details (such as name or email) may appear in many rows. If we need to update the sales representative's email, we must update it in multiple places. If one row is missed, it leads to inconsistent data. This is an update anomaly.

### Delete Anomaly

Some information may be lost unintentionally when deleting records. For example, if a product appears in only one order and that order is deleted, all information about that product will also be lost. This leads to a delete anomaly.

### Conclusion

To avoid these anomalies, the data should be normalized into separate tables such as customers, products, sales representatives, and orders. This reduces redundancy and improves data integrity.
