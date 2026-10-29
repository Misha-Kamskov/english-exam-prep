create table public.tests (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    description text,
    test_type text not null,
    source_type text not null,
    year integer,
    duration_minutes integer not null default 150,
    is_published boolean not null default false,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),

    constraint tests_test_type_check
        check (test_type in ('exam', 'topic')),

    constraint tests_source_type_check
        check (source_type in ('official', 'author_created')),

    constraint tests_year_check
        check (year is null or year >= 2000),

    constraint tests_duration_check
        check (duration_minutes > 0),

    constraint tests_official_exam_year_check
        check (
            test_type <> 'exam'
            or source_type <> 'official'
            or year is not null
        )
);

create index tests_test_type_idx
    on public.tests (test_type);

create index tests_source_type_idx
    on public.tests (source_type);

create index tests_published_idx
    on public.tests (is_published);

alter table public.tests enable row level security;

create policy "Anyone can read published tests"
on public.tests
for select
to anon, authenticated
using (is_published = true);

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
    new.updated_at = now();
    return new;
end;
$$;

create trigger set_tests_updated_at
before update on public.tests
for each row
execute function public.set_updated_at();