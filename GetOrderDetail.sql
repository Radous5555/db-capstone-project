PREPARE GetOrderDetail FROM "SELECT OrderID, OrderQuantity, OrderCost FROM orders WHERE CustomerID = ?";