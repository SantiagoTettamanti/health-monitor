create schema health_monitor authorization postgres;

create table health_monitor.sites
(
    id           int     not null,
    uri          varchar not null,
    display_name varchar not null
);

create unique index sites_id_uindex
    on health_monitor.sites (id);

alter table health_monitor.sites
    add constraint sites_pk
        primary key (id);

