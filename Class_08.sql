--GROUP BY
USE AP
GO
SELECT VendorID,SUM (PaymentTotal) FROM Invoices
GROUP BY VendorID
GO
--ROLLUP
SELECT Coalesce (TermsID,'8')AS ID,  SUM (PaymentTotal) FROM Invoices
GROUP BY ROLLUP (TermsID)
GO
--CUBE
SELECT SUM(TermsID)'TALL' FROM Invoices i
INNER JOIN Vendors v ON i.VendorID=v.VendorID 
GROUP BY CUBE (v.VendorID)

GO
--HAVING
SELECT VendorID,COUNT (PaymentTotal*CreditTotal) FROM Invoices
GROUP BY VendorID
HAVING AVG (PaymentTotal)>450
GO

