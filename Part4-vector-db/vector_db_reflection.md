## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a law firm handling large contracts. Keyword search relies on exact word matching, which means it may miss relevant information if different wording is used. For example, searching for "termination clauses" might not return results if the contract uses phrases like "end of agreement conditions."

A vector database, on the other hand, uses embeddings to understand the semantic meaning of text. It converts both the query and documents into numerical vectors and finds results based on similarity in meaning rather than exact keywords. This allows users to ask questions in natural language and still retrieve relevant sections of long documents.

In this system, the contracts would be broken into smaller chunks and converted into embeddings. When a lawyer asks a question, the query is also converted into an embedding and compared against stored vectors. The system then returns the most relevant sections based on similarity scores.

Therefore, a vector database is essential for building an intelligent contract search system. It improves accuracy, handles large unstructured text efficiently, and enables natural language queries, making it far more powerful than traditional keyword-based search.