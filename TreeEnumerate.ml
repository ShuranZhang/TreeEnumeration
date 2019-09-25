let rec range a b = if a > b then [] else a:: range (a + 1) b
let joinTree ltree rtree =  if ltree = [] then List.map (fun ritem -> String.concat "" ["(."; ritem; ")"]) rtree
                                else if rtree = [] then List.map (fun litem -> String.concat "" ["("; litem; ".)"]) ltree
                                        else List.concat (List.map (fun litem -> List.map (fun ritem -> String.concat "" ["("; litem; "."; ritem]) rtree) ltree)


let rec treeEnumerate n = if n = 0 then [] else if n =1 then ["(.)"] else List.concat (List.map (fun x -> let ln = x in
                                                                                let rn = n - x - 1 in
                                                                                let leftTrees = treeEnumerate ln in
                                                                                let rightTrees = treeEnumerate rn in
                                                                                joinTree leftTrees rightTrees) (range 0 (n - 1)))




