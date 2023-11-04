# 🛍️ Shopi

Online store database implementation with MySQL


## Entity Relationship Diagram (ERD):

```mermaid
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ ORDER_DETAILS : contains
    PRODUCT ||--o{ ORDER_DETAILS : included_in

    CUSTOMER {
        int customer_id PK
        varchar customer_name
        varchar contact
        varchar email
    }

    CATEGORY {
        int category_id PK
        varchar category_name
    }

    PRODUCT {
        int product_id PK
        varchar product_name
        decimal price
        int category_id FK
    }

    ORDER {
        int order_id PK
        int category_id FK
        date order_date
        decimal total_amount
    }

    ORDER_DETAILS {
        int order_id FK
        int product_id FK
        int quantity
    }
```
