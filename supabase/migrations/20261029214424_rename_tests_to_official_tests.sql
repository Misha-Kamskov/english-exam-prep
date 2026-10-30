-- Rename main table.
alter table public.tests
rename to official_tests;

-- Rename scoring table.
alter table public.scoring_scales
rename to official_test_scales;

-- Rename foreign key column.
alter table public.official_test_scales
rename column test_id to official_test_id;

-- Rename indexes.
alter index public.tests_published_idx
rename to official_tests_published_idx;

alter index public.scoring_scales_test_id_idx
rename to official_test_scales_official_test_id_idx;

-- Rename RLS policies.
alter policy "Anyone can read published tests"
on public.official_tests
rename to "Anyone can read published official tests";

alter policy "Anyone can read scoring scales"
on public.official_test_scales
rename to "Anyone can read published official test scales";

-- Rename updated_at trigger.
alter trigger set_tests_updated_at
on public.official_tests
rename to set_official_tests_updated_at;