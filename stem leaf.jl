









function stem_leaf2(list)
    sort_list = sort(list) # sort the list
    max_num = floor(sort_list[end]/10)
    data = [] # create a empty list to store data
    stem_list = []
    leaf_list = []
    for num in sort_list # add stem and leaf to 2 new lists
        num = floor(num) 
        stem = div(num, 10)
        leaf = num%10
        push!(stem_list, stem)
        push!(leaf_list, leaf)
    end
    current = 0
    outputs = "0 | "
    while current < max_num 
        if stem_list[1]<= current
            outputs *= "$(leaf_list[1])"
            outputs *= " "
            deleteat!(stem_list,1)
            deleteat!(leaf_list,1)
        else
            current += 1
            outputs *= "\n"
            outputs *= "$(current) | "
            
        end
    end
    for leaf in leaf_list
        outputs *= "$(leaf) "
    end
    print(outputs) 
end
        

stem_leaf2(array)








