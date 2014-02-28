#  Unix Makefile for HW3 

# change this to be how you invoke cwm
C=/afs/umbc.edu/users/f/i/finin/pub/cwm

all: myfamily-facts.n3 

# produce all_rules.n3 by combining our rules for rdfs,
# gedcom-relations and the addional rules for family relations (e.g.,
# knows, older, etc.)
all_rules.n3 : rdfs-rules.n3 gedcom-relations.n3 family-rules.n3
	$C  rdfs-rules.n3 gedcom-relations.n3 family-rules.n3 > all_rules.n3

# produce myfamily-facts.n3 by applying the rules to myfamily.n3
myfamily-facts.n3 : all_rules.n3 myfamily.n3
	$C myfamily.n3 --apply=all_rules.n3  > myfamily-facts.n3

#ends
