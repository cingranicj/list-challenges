def threed(list, number)
    count = 0
    list.each do |n|
       if list[n] == list[n-1] && n == 3
            return false
       end
        if n == number
            count += 1
        end
    end
    if count == 3
        return true
    else
        return false
    end
end

# puts threed([3, 1, 4, 1, 3, 1, 3], 3) # true
# puts threed([3, 3, 3, 3], 3) # false
# puts threed([1, 2, 3, 3, 2, 3], 3) # false




def  same_first_last(list)
   if list[0] == list[list.size - 1] && list.size >= 1
        return true
    end
    return false
end

# puts same_first_last([1, 2, 3, 1]) # true
# puts same_first_last([1]) # true
# puts same_first_last([1, 2, 3, 4]) # false
# puts same_first_last([]) # false

def get_sandwich(sandwich)
    count = 0
    (sandwich.size - 4).times do |i|
        slice = sandwich[i..(i + 4)]
        puts slice
        if sandwich[i, (i + 4)] == "bread"
            count += 1
        end
        if slice == "bread"
            puts slice
        end
    end
    return count
end

# puts("breadcheesemeatbread")

def shift_left(array)
    new_array = []
    x1 = 0
    x2 = array[0]
    slice = array[1]
    x = array[1]
    (array.size - 5).times do |i|
            slice1 = array[i + 2..(array.size - 1)]
            x1= slice1
    end
    new_array.push(x)
    new_array.push(x1)
    new_array.push(x2)
    return new_array
end

# print shift_left([1, 2, 3, 4, 5, 6]) # 2, 3, 4, 5, 6, 1

def g_happy(str)
    (str.size 1).times do |x|
        slice = str[x + 1..(str.size + 1)]
        if slice == "gg"
            return true
        end
    end
end

# puts g_happy("ffffffffffffggg")
# puts g_happy("fuuf")
# puts g_happy("ggg")

def merge(list1, list2)
    new_list = list1 + list2
    new_list.sort
end
list1 = [1, 2, 3]
list2 = [4, 2, 3]
# print merge(list1, list2)

def middle_way(list1, list2)
    sorted_list1 = list1.sort
    sorted_list2 = list2.sort
    middle1 = sorted_list1[sorted_list1.size / 2]
    middle2 = sorted_list2[sorted_list2.size / 2]
    new_list =[]
    new_list.push(middle1)
    new_list.push(middle2)
    new_list.sort
    return new_list
end

# print middle_way(list1, list2)

def either_2_4(list)
    list.size.times do |n|
        slice = list[n..(list.size + 1)]
            if slice == "22" || slice == "44"
                return true
            elsif slice == "22" && slice == "44"
                return false
        end
    end
    return true
end

# puts either_2_4([1, 2, 2, 3, 4, 5]) # true
# puts either_2_4([2, 2, 4, 4]) # false

