import FileInteract(fileInteract)
import CH4.SafeListOperations(splitWith)

mapLines func = unlines . map func . lines
main = fileInteract $ mapLines $
       concat . take 1 . splitWith (`elem` ", ")
