def can_construct(ransom_note, magazine)
# make two separate hash sets. see if magazine has the key that ransom note needs
#if its values are equal or more than magazines for that key, return true, else false

ransom_note_hash = Hash.new(0)
magazine_hash = Hash.new(0)

    ransom_note.split("").map do |char|
        ransom_note_hash[char] += 1
    end
    magazine.split("").map do |char|
        magazine_hash[char] += 1
    end

    ransom_note_hash.keys.each do |char|
        if magazine_hash.has_key?(char)
            if magazine_hash[char] < ransom_note_hash[char]
                return false
            end
        else
            return false
        end
    end
    return true
end
