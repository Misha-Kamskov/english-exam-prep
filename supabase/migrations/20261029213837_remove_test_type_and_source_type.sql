-- Remove constraints related to test_type and source_type.
alter table public.tests
drop constraint if exists tests_test_type_check;

alter table public.tests
drop constraint if exists tests_source_type_check;

alter table public.tests
drop constraint if exists tests_official_exam_year_check;

-- Remove indexes related to test_type and source_type.
drop index if exists public.tests_test_type_idx;

drop index if exists public.tests_source_type_idx;

-- Remove columns.
alter table public.tests
drop column test_type,
drop column source_type;