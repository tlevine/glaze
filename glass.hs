type ColumnId = String

type Cell a = (ColumnId, a)
type Row = [Cell String] -- ugly
type Table = [Row]

type Glaze = Table -> Table

cast :: ColumnId -> ColumnId -> Glaze
cast dependent independent = undefined

melt :: ColumnId -> ColumnId -> [ColumnId] -> [ColumnId] -> Glaze
melt variableName valueName idVars measureVars = undefined

meltSimple = melt "variable" "value"
