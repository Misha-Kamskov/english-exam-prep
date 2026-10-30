
create table public.scoring_scales (
    id uuid primary key default gen_random_uuid(),

    test_id uuid not null
        references public.tests(id)
        on delete cascade,

    raw_score integer not null,
    scaled_score integer not null,

    created_at timestamptz not null default now(),

    constraint scoring_scales_raw_score_check
        check (raw_score >= 0),

    constraint scoring_scales_scaled_score_check
        check (scaled_score between 100 and 200),

    constraint scoring_scales_test_raw_unique
        unique (test_id, raw_score)
);

create index scoring_scales_test_id_idx
    on public.scoring_scales (test_id);

alter table public.scoring_scales enable row level security;

create policy "Anyone can read scoring scales"
on public.scoring_scales
for select
to anon, authenticated
using (
    exists (
        select 1
        from public.tests
        where tests.id = scoring_scales.test_id
          and tests.is_published = true
    )
);
