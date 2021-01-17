require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

# memo_type = gets.to_s
type = gets.to_i

if type == 1
    puts "＜ファイル名を入れてね(拡張子を除く)＞"
    name = gets.to_s
    puts "＜内容を記入してね＞"
    CSV.open("#{name}.csv","w") do |csv|
        csv << [gets]
    end
else
    puts "＜編集したいメモファイル名を入力してね＞"
    edit = gets.to_s
    contents = CSV.read("#{edit}.csv")
    puts contents
    CSV.open("#{edit}.csv","a") do |csv|
        puts "＜追加したい内容を記入してね＞"
        csv << [gets]
    end    
    
end