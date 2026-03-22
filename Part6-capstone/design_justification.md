## Storage Systems

For this architecture, multiple storage systems are used based on different requirements. A relational database (MySQL) is used as the OLTP system to store structured patient records, appointments, and billing data. This ensures strong consistency and supports transactional operations. This also ensures data integrity using ACID properties.

A Data Lake (such as AWS S3) is used to store raw and unstructured data, including ICU device streams, logs, and historical records. This allows scalable and flexible storage for large volumes of data.

A Data Warehouse is used for analytical purposes, such as generating monthly reports on bed occupancy and department costs. It enables fast querying and aggregation of structured data.

Additionally, a Vector Database is used to store embeddings of patient records, enabling doctors to query patient history using natural language. This supports semantic search rather than keyword-based matching.

---

## OLTP vs OLAP Boundary

The OLTP system includes the MySQL database, where real-time transactional data such as patient details, treatments, and billing are stored. This system focuses on fast inserts, updates, and consistency.

The OLAP system begins at the Data Warehouse and Data Lake layers, where data is processed, transformed, and analyzed. ETL pipelines move data from the OLTP system into the analytical systems.

Thus, the boundary lies between the OLTP system (MySQL) and the analytical systems (Data Lake and Data Warehouse), where data transitions from operational to analytical use.

---

## Trade-offs

One significant trade-off in this architecture is increased system complexity. Using multiple systems such as OLTP databases, data lakes, warehouses, and vector databases increases maintenance and operational overhead.

To mitigate this, managed cloud services can be used to reduce infrastructure burden. Additionally, clear data pipelines and monitoring systems can ensure smooth data flow and reduce errors.

Despite the complexity, this architecture provides scalability, flexibility, and advanced analytics capabilities, making it suitable for an AI-powered healthcare system.
