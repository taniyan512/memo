require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.chomp
 
#(ifで条件分岐)
if memo_type == "1"
  
  puts"拡張子を除いたファイルを入力してください"
  
  memo_file = gets.chomp

  puts "メモしたい内容を記入してください"
  puts "終了後、Ctrl + D を押します"
  
  input = $stdin.readlines
  
  CSV.open("#{memo_file}.csv","w") do |csv| 
   csv << ["#{input}"]
  end

elsif memo_type == "2"
  
  puts "編集するファイル名を拡張子を除いて入力してください"
  
  memo_file = gets.chomp
    
  puts "編集内容を入力してください。"
  puts "終了後、Ctrl + D　を推します。"
  
  input = $stdin.readlines
  
  CSV.open("#{memo_file}.csv","a") do |csv|
    csv << ["#{input}"] 
end


end
