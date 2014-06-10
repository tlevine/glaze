type ColumnId = String

type Cell a = (ColumnId, a)
type Row = [Cell String] -- ugly
type Table = [Row]

cast :: ColumnId -> ColumnId -> Table -> Table
cast dependent independent = undefined

melt :: ColumnId -> ColumnId -> [ColumnId] -> [ColumnId] -> Row -> Table
melt variableName valueName idVars measureVars = undefined

meltSimple = melt "variable" "value"
