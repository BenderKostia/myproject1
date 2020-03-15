create table #REP_DATE (FDAY date,
                        LDAY date);
commit;
create DATE index FDAY_DATE on #REP_DATE (FDAY);
create DATE index LDAY_DATE on #REP_DATE (LDAY);
--*********************************************************************--
insert into #REP_DATE (FDAY,LDAY)
select convert(date,'2016-12-01'),
       convert(date,'2016-12-31')
;
commit;
--*********************************************************************--
insert into DN120483GVN.REITING_SOP_GROUP_FACTORY (FDAY,LDAY,LDAP_LOGIN,REP_CLID)
select distinct
       t2.FDAY,
       t2.LDAY,
       t1.LDAP_LOGIN,
       t1.REP_CLID
  from BUS_GENERAL.EMPLOYEE_DATA_RP as t1
 cross join #REP_DATE               as t2
 where t1.POSIT_POS in ('00022403') 
   and t1.NODE_KIND   = '10'
   and t1.PEOP_STATE <> '4'
   and t1.PEOP_DEK    = 0
   and not (t1.PEOP_STATE = '1' and t1.HOSPITAL_CODE in (61,137,138,175))
;
commit;
--Выводим сообщение об успешной заливке данных
select 'В таблицу DN120483GVN.REITING_SOP_GROUP_FACTORY вставлено ' as "T1",
       count()                                                      as "CNT",
       ' строк(и) УСПЕШНО за период с '                             as "T2",
       t2.FDAY,
       ' по '                                                       as "T3",
       t2.LDAY
  from DN120483GVN.REITING_SOP_GROUP_FACTORY as t1
  join #REP_DATE                             as t2 on t2.FDAY = t1.FDAY
                                                  and t2.LDAY = t1.LDAY
 group by t2.FDAY,
          t2.LDAY
--КОНЕЦ СКРИПТА--