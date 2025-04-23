--REPORTS

--1. Discount Utilization Report.
-- Show how many invoices each discount was applied to, and the total value of those discounts.
SELECT
    d.name AS discount_name,
    COUNT(idisc.invoice_id) AS number_of_invoices,
    SUM(idisc.value_applied) AS total_discount_amount
FROM
    invoice_discount idisc
JOIN discount d ON idisc.discount_id = d.id
GROUP BY d.name
ORDER BY total_discount_amount DESC;


--2.Students with Outstanding Balances.
-- List all students who still owe money, showing their current balance due after discounts and payments.
SELECT
    s.id AS student_id,
    s.first_name || ' ' || s.last_name AS student_name,
    i.total_amount,
    i.discount_amount,
    i.amount_paid,
    (i.total_amount - i.discount_amount - i.amount_paid) AS balance_due
FROM
    student s
JOIN customer c ON c.student_id = s.id
JOIN invoice i ON i.customer_id = c.id
WHERE (i.total_amount - i.discount_amount - i.amount_paid) > 0;



--3. Invoice Payment Reconciliation Report.
--Compare the invoice total (final amount after discounts) to actual payments
--made via the payment system. Highlight discrepancies.
SELECT
    i.id AS invoice_id,
    i.total_amount AS final_invoice_amount,
    i.amount_paid AS recorded_paid,
    COALESCE(SUM(pd.amount_paid), 0) AS paid_via_payments,
    (COALESCE(SUM(pd.amount_paid), 0) - i.amount_paid) AS difference
FROM
    invoice i
LEFT JOIN payment_detail pd ON i.id = pd.invoice_id
GROUP BY i.id
HAVING (COALESCE(SUM(pd.amount_paid), 0) - i.amount_paid) != 0
ORDER BY difference DESC;



--4. Full Payment History Report
--List all payments made by all customers, including method, amount, date, and status.
SELECT
    p.id AS payment_id,
    p.customer_id,
    c.first_name || ' ' || c.last_name AS payer_name,
    p.payment_method,
    p.payment_date,
    p.amount_paid,
    p.payment_status,
    p.description
FROM
    payment p
JOIN customer c ON p.customer_id = c.id
ORDER BY p.payment_date DESC;


--5. Full Student–Guardian List (Including Students Without Guardians)
--List all students along with their assigned guardians, including those who don't have any guardians.
SELECT
    s.id AS student_id,
    s.first_name || ' ' || s.last_name AS student_name,
    g.id AS guardian_id,
    g.first_name || ' ' || g.last_name AS guardian_name,
    sg.relationship
FROM
    student s
LEFT JOIN student_guardian sg ON s.id = sg.student_id
LEFT JOIN guardian g ON sg.guardian_id = g.id
ORDER BY s.id, g.id;



