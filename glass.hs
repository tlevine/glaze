
type Column = String | Int

cast :: Column -> Column -> [Record] -> Record

dataset1 = [ (("col1",1),("col2",2),("category","elephant"), ("value",4)),
            (("col1",1),("col2",2),("category","whale"), ("value",8)),
            (("col1",3),("col2",2),("category","whale"), ("value",8)) ]
cast "category" "elephant" dataset1 ==  [ (("col1", 1), ("col2", 2), ("elephant",4), ("whale", 8)),
                                          (("col1", 3), ("col2", 2), ("elephant",Nil), ("whale", 8)) ]
dataset2 = ^^that

meltDependent :: Column -> [Record] -> Record
meltDependent [0] dataset2 ==  [ (("col1", 1), ("key", "col2"), ("value", 2)),
                                  ("col1", 1), ("key", "elephant"), ("value", 4)),
                                  ("col1", 1), ("key", "whale"), ("value", 8)),
                                  ("col1", 3), ("key", "col2"), ("value", 2)),
                                  ("col1", 3), ("key", "elephant"), ("value", Nil)),
                                  ("col1", 3), ("key", "whale"), ("value", 8)) ]

meltDependent [0] dataset2 == meltDependent [2,3,4] dataset2
