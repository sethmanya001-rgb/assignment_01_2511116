## Architecture Recommendation

I would recommend a Data Lakehouse for the food delivery startup because it combines the advantages of both a Data Lake and a Data Warehouse.

First, the startup collects different types of data such as GPS location logs, customer text reviews, payment transactions, and restaurant menu images. A Data Lakehouse can store structured data like payment transactions, semi-structured data like reviews, and unstructured data like images in one system.

Second, it supports both analytics and machine learning. Payment data can be used for business reports, while text reviews and GPS data can help improve delivery prediction and customer recommendations.

Third, it is highly scalable for a fast-growing startup. As data volume increases daily, the system can handle large amounts of information without frequent redesign.

A traditional Data Warehouse mainly works well for structured reporting data but is less suitable for images and text reviews. A Data Lake stores all raw formats but does not always provide strong analytical performance.

Therefore, a Data Lakehouse is the best choice because it provides flexible storage, strong query capability, and support for future AI applications in one architecture.
