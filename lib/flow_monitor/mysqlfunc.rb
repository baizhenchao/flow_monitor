#! ruby
require 'mysql'
def getsqldata
begin
		db=Mysql.init
		db=Mysql.real_connect("127.0.0.1","xiaobai","123","xiaobai",3336)
		rslt=db.query("select itemk,time,svalue,sumvalue,value from linear_data")
		res=Array.new
		while row=rslt.fetch_row do
				res.push(row)
		end
		return res
rescue Mysql::Error=>e
		puts "Error code: #{e.errno}"
		puts "Error message: #{e.error}"
		puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
		db.close if db
end
end
def insertdata(itemk,time,svalue,sumvalue,value)
begin
		db=Mysql.init
		db=Mysql.real_connect("127.0.0.1","xiaobai","123","xiaobai",3336)
		db.query("insert into linear_data(itemk,time,svalue,sumvalue,value) value('#{itemk}','#{time}','#{svalue}','#{sumvalue}','#{value}')")
		result=db.affected_rows
rescue Mysql::Error=>e
		puts "Error code: #{e.errno}"
		puts "Error message: #{e.error}"
		puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
		db.close if db
end
return result
end
def checktime(time)
begin
		db=Mysql.init
		db=Mysql.real_connect("127.0.0.1","xiaobai","123","xiaobai",3336)
		rslt=db.query("select itemk,time,svalue,sumvalue,value from linear_data where time='#{time}'")
		res=""
		while row=rslt.fetch_row do
				res=row[0]
		end
		if res.length==0
				return true
		else
				return false
		end
rescue Mysql::Error=>e
		puts "Error code: #{e.errno}"
		puts "Error message: #{e.error}"
		puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
		db.close if db
end
end
def changedata(time,svalue,sumvalue)
begin
		db=Mysql.init
		db=Mysql.real_connect("127.0.0.1","xiaobai","123","xiaobai",3336)
		db.query("update linear_data set svalue='#{svalue}',sumvalue='#{sumvalue}' where time='#{time}'")
		result=db.affected_rows
rescue Mysql::Error=>e
		puts "Error code: #{e.errno}"
		puts "Error message: #{e.error}"
		puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
		db.close if db
end
return result
end
#changedata("16:48:27",0,99)
#checktime("14:45:42")
#res=getsqldata
#res.each do |data|
		#		puts data[4]
		#end
#res=insertdata("thisisatest3","20140815103160","0.001","0.5","0")
#puts res
#result=sqlfunc
#puts result
