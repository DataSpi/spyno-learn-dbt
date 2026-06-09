SELECT
    *
FROM
    {{ ref('fct_reviews') }} r
    inner join {{ ref('dim_listings_cleansed') }} l
    using (listing_id)
WHERE l.created_at > r.review_date 
LIMIT 10
