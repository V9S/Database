left join (select gci.master_id from gams_card_invoice gci where gci.faph in (@faph) group by gci.master_id) as gci2 on gci2.master_id = c.id
