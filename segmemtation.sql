-- Target Audience: Active Users who signed up in the last 7 days and haven't purchased yet
SELECT 
    SubscriberKey,
    EmailAddress,
    FirstName,
    CreatedDate
FROM 
    Subscriber_DataExtension
WHERE 
    Status = 'Active'
    AND HasPurchased = 0
    AND CreatedDate >= DATEADD(day, -7, GETDATE());