#  Unix Makefile for HW3 

# change this to be how you invoke cwm
C=cwm

all: myfamily.n3 family-rules.n3 rdfs-rules.n3 myfamily-facts.n3 
	touch all

# all_rules.n3 is just the combination of our rules for rdfs, rules
# for the gedcom relations and the addional rules for family relations
# (e.g., knows, older, etc.)
all_rules.n3 : rdfs-rules.n3 gedcom-relations.n3 family-rules.n3
	$C  rdfs-rules.n3 gedcom-relations.n3 family-rules.n3 > all_rules.n3

# produce myfamily-facts.n3 by applying the rules to myfamily.n3
myfamily-facts.n3 : all_rules.n3 myfamily.n3
	$C myfamily.n3 --apply=all_rules.n3  > myfamily-facts.n3

#ends
