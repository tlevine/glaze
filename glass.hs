data ColumnId = String

type Cell a = (ColumnId, a)
type Row => [Column]
type Table => [Row]

type Glaze = [ColumnId] -> Table -> Table
type Glaze = [ColumnId] -> Table -> Table

cast :: ColumnId -> ColumnId -> Glaze
cast dependent independent = undefined


