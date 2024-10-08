// STEP 1: Explore whole graph
MATCH (n)-[r]-(m)
RETURN n, r, m
LIMIT 300

// STEP 2: Match the two subject nodes
MATCH (s:Subject)
RETURN s

// STEP 3: Matching a node based on a property
MATCH (s:Subject {name: 'oh bah mə'})-[r]-(m)
RETURN s, r, m

// STEP 4: Matching nodes between 1 and 2 hops away from Harvard University
MATCH (harvard {name: 'harvard university'})-[r]-{1,2}(m)
RETURN harvard, r, m
