-- Run once in the Supabase SQL Editor for the doorstepcarloan project.
-- Public website visitors may submit an enquiry, but cannot read or change rows.
create table if not exists public.car_loan_enquiries (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  full_name text not null check (char_length(btrim(full_name)) between 1 and 120),
  phone text not null check (char_length(btrim(phone)) between 7 and 24),
  city text not null check (city in ('Lucknow', 'Bengaluru', 'Other nearby')),
  car_type text not null check (car_type in ('Used', 'New')),
  loan_amount numeric check (loan_amount is null or loan_amount between 0 and 50000000),
  message text check (message is null or char_length(message) <= 2000)
);

alter table public.car_loan_enquiries enable row level security;

grant usage on schema public to anon;
revoke all on table public.car_loan_enquiries from anon, authenticated;
grant insert on table public.car_loan_enquiries to anon;

drop policy if exists "Public website can submit enquiries" on public.car_loan_enquiries;
create policy "Public website can submit enquiries"
  on public.car_loan_enquiries
  for insert
  to anon
  with check (
    char_length(btrim(full_name)) between 1 and 120
    and char_length(btrim(phone)) between 7 and 24
    and city in ('Lucknow', 'Bengaluru', 'Other nearby')
    and car_type in ('Used', 'New')
    and (loan_amount is null or loan_amount between 0 and 50000000)
    and (message is null or char_length(message) <= 2000)
  );

-- Quick setup verification. This should show RLS enabled.
select schemaname, tablename, rowsecurity
from pg_tables
where schemaname = 'public' and tablename = 'car_loan_enquiries';
