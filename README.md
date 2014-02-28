Files for hW3

To see how this hould work, do the following:

  cwm rdfs-rules.n3 gedcom-relations.n3 family-rules.n3 > all_rules.n3
  cwm myfamily.n3 --apply=all_rules.n3  > myfamily-facts.n3

which will produce myfamily-facts.n3 that contains given and inferred
facts about the family defined in myfamily.n3.

#ends
