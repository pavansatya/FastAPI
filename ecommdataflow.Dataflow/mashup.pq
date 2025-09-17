[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"olist_customers_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_customers_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 5, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"customer_id", type text}, {"customer_unique_id", type text}, {"customer_zip_code_prefix", Int64.Type}, {"customer_city", type text}, {"customer_state", type text}})
in
  #"Changed column type";
shared #"olist_geolocation_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_geolocation_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 5, Encoding = 65001, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"geolocation_zip_code_prefix", Int64.Type}, {"geolocation_lat", type number}, {"geolocation_lng", type number}, {"geolocation_city", type text}, {"geolocation_state", type text}})
in
  #"Changed column type";
shared #"olist_order_items_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_order_items_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 7, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"order_id", type text}, {"order_item_id", Int64.Type}, {"product_id", type text}, {"seller_id", type text}, {"shipping_limit_date", type datetime}, {"price", type number}, {"freight_value", type number}})
in
  #"Changed column type";
shared #"olist_order_payments_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_order_payments_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 5, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"order_id", type text}, {"payment_sequential", Int64.Type}, {"payment_type", type text}, {"payment_installments", Int64.Type}, {"payment_value", type number}})
in
  #"Changed column type";
shared #"olist_order_reviews_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_order_reviews_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 7, Encoding = 65001, QuoteStyle = QuoteStyle.Csv]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"review_id", type text}, {"order_id", type text}, {"review_score", Int64.Type}, {"review_comment_title", type text}, {"review_comment_message", type text}, {"review_creation_date", type datetime}, {"review_answer_timestamp", type datetime}})
in
  #"Changed column type";
shared #"olist_orders_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_orders_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 8, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"order_id", type text}, {"customer_id", type text}, {"order_status", type text}, {"order_purchase_timestamp", type datetime}, {"order_approved_at", type datetime}, {"order_delivered_carrier_date", type datetime}, {"order_delivered_customer_date", type datetime}, {"order_estimated_delivery_date", type datetime}})
in
  #"Changed column type";
shared #"olist_products_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_products_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 9, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"product_id", type text}, {"product_category_name", type text}, {"product_name_lenght", Int64.Type}, {"product_description_lenght", Int64.Type}, {"product_photos_qty", Int64.Type}, {"product_weight_g", Int64.Type}, {"product_length_cm", Int64.Type}, {"product_height_cm", Int64.Type}, {"product_width_cm", Int64.Type}})
in
  #"Changed column type";
shared #"olist_sellers_dataset csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "olist_sellers_dataset.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 4, Encoding = 65001, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"seller_id", type text}, {"seller_zip_code_prefix", Int64.Type}, {"seller_city", type text}, {"seller_state", type text}})
in
  #"Changed column type";
shared #"product_category_name_translation csv" = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "8bfd2a06-a035-4731-aa03-eb3c897c32a7"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "17466a0d-623d-4760-b77b-ccc8a17ba1d5"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[Name = "ecomm"]}[Content],
  #"Navigation 5" = #"Navigation 4"{[Name = "product_category_name_translation.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 2, Encoding = 65001, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true])
in
  #"Promoted headers";
