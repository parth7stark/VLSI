'''
final code working
'''
import re
import itertools

def printTheArray(arr, n): 
    ofile.write("\n #5") 
    for i in range(0, n):  
        print(arr[i], end = " ")  
        ofile.write(" {}={}; ".format(input_list[i],arr[i]))
      
    print() 

def var_in_input(sent):
	commas = 0
	#count no of commas .. count = no of commas +1
	for i in range(0,len(sent),1):
		if(sent[i]==','):
			commas = commas+ 1

	count = commas +1
	return count

def in_list(sen):
	#remove input keyword
	sen =sen.replace("reg",'')
	#split at commas to get input_list
	sen = sen.split(',')
	return sen

def create_ilist(sen):		#sen is input sentence
	#take a input sentence ie sen
	#find size
	if(sen.find("[")==-1):
		size = 1
	else:
		#extract string between bracket
		index = []
		index = sen[sen.find("[")+1:sen.find("]")]
		index = index.split(":")		#working ---tested in simulation.py
		#printf("\n size")
		size = int(index[0]) + int(index[1] )+ 1

	#find variables
	var_list = []
	if(sen.find("[")==-1):	#input sentence doesnt have vector
		sen = sen.replace("input",'')
		var_list = sen.split(",")
	else:
		sen = sen[sen.find("]")+1:]	#string slice
		var_list = sen.split(",")

	#combine [variable,size]
	pair = []
	input_variables_list=[]
	for i in range(0,len(var_list),1):
		pair = []
		pair.append(var_list[i])
		pair.append(size)
		input_variables_list.append(pair)
	

	return input_variables_list

def create_olist(sen):		#sen is input sentence
	#take a input sentence ie sen
	#find size
	if(sen.find("[")==-1):
		size = 1
	else:
		#extract string between bracket
		index = []
		index = sen[sen.find("[")+1:sen.find("]")]
		index = index.split(":")		#working ---tested in simulation.py
		#printf("\n size")
		size = int(index[0]) + int(index[1] )+ 1

	#find variables
	var_list = []
	if(sen.find("[")==-1):	#input sentence doesnt have vector
		sen = sen.replace("output",'')
		var_list = sen.split(",")
	else:
		sen = sen[sen.find("]")+1:]	#string slice
		var_list = sen.split(",")

	#combine [variable,size]
	pair = []
	output_variables_list=[]
	for i in range(0,len(var_list),1):
		pair = []
		pair.append(var_list[i])
		pair.append(size)
		output_variables_list.append(pair)
	

	return output_variables_list



def group(input_list):

    list1 = []
    count = 0
    group_input_list =[]
    for i in range(0,len(input_list),1):
	    if input_list[i][1]==1:
		    list1.append(input_list[i][0])
		    count= count+1

		    if count==10:
			    list1.append(count)
			    group_input_list.append(list1)
			    count =0
			    list1=[]

	    # else:
		#     group_input_list.append(input_list[i])


    #if last group doesnt have 10 elements
    list1.append(count)
    group_input_list.append(list1)

    #printing group list
    for i in range(0,len(group_input_list),1):          #working till here
        print(" {} ".format(group_input_list[i]))

    #step2: generate values of input
    val_list = []
    l = []

    for i in range(0,len(group_input_list),1):
        n = group_input_list[i][len(group_input_list[i])-1]       #last value in list
        l=[]
        for j in range(0,2**n,1):
			#print("j= {}".format(j))
            l.append(j)
			#print("l= {}".format(l))

        val_list.append(l)
		#print("val_list= {}".format(val_list))

	#printing values list
    print("printing values list: ")

    for i in range(0,len(val_list),1):
        print("{}".format(val_list[i]))     #working

    '''
	for i in itertools.product(*val_list):          put * if list of lists
		print(i) 

	'''
    '''
	create a new updated value list that contains values in range and take cartesian product of updated values
	eg range of a =0 to 255 if user wants a between 12 and 13, remove other values from val list

	'''
    up_val_list=[]
    for i in range(0,len(group_input_list),1):
        n = group_input_list[i][len(group_input_list[i])-1]  
        print("\n For input variable {}, possible values are from {} to {} ".format(input_list[i][0],0,2**n-1))
        start=int(input("\n Enter starting value: "))
        end = int(input("\n Enter ending value: "))

		#now traverse value list of that input variable and remove elements from start till end
        l =[]
        for j in range(0,len(val_list[i]),1):
            if val_list[i][j]>=start and val_list[i][j]<=end:		#remove values if not in range
                l.append(val_list[i][j])		#if value lies in range add to list
			# else:
				# print(" pop={} ".format(val_list[i][j]))
				# val_list.remove(val_list[i][j])
				# up_val_list.append(l)
			
        up_val_list.append(l)
				
				
			
    print("\n update value list: ")
    for i in range(0,len(up_val_list),1):
        print("{}".format(up_val_list[i]))





    finish_time=int(input("\n Enter no of combinations you want: "))


    cart_prod = list(itertools.islice(itertools.product(*up_val_list),finish_time))
    print("\n cartesian product: \n")
    for i in range(0,len(cart_prod),1):
        print(cart_prod[i])
		#print("")

    s=""
    s1=""
    print("\n cartesian product in binary: \n")
    for i in range(0,len(cart_prod),1):
        for j in range(0,len(cart_prod[i]),1):
            s = bin(cart_prod[i][j])
            s1 = s[2:]
            print("{} ".format(s1))


	#seeing can i print one set from cart_product           
	#print(cart_prod[0])     #working

	#seeing can i print one element of set from cart_product
	#print(cart_prod[0][1])      #working

    #assign A,B,C to cartesian product

    #converting cartesian product tuples to binary
    s = ""
    s1 =""
    new_cart_prod=[]
    for i in range(0,len(cart_prod),1):
        list1=[]
        for j in range(0,len(cart_prod[i]),1):
            s = bin(cart_prod[i][j])
            s1 = s[2:]
            s1 = s1 + "0000000000" 
            list1.append(s1)
        
        new_cart_prod.append(list1)

    
    print("\n cartesian product in binary: \n")
    for i in range(0,len(new_cart_prod),1):
        print(new_cart_prod[i])

            

    #assign A,B,C to cartesian product
    for i in range(0,len(new_cart_prod),1):
        ofile.write("\n #5")
        # s = new_cart_prod[i]
        for j in range(0,len(group_input_list),1):
            for k in range(0,len(group_input_list[j])-1,1):
                ofile.write(" {}={}; ".format(group_input_list[j][k],new_cart_prod[i][j][k])) 


    ofile.write("\n end")
    return finish_time






	

'''  
# Function to generate all binary strings  
def generateAllBinaryStrings(n, arr, i):  
  
    if i == n: 
        printTheArray(arr, n)  
        return
      
    # First assign "0" at ith position  
    # and try for all other permutations  
    # for remaining positions  
    arr[i] = 0
    generateAllBinaryStrings(n, arr, i + 1)  
  
    # And then assign "1" at ith position  
    # and try for all other permutations  
    # for remaining positions  
    arr[i] = 1
    generateAllBinaryStrings(n, arr, i + 1)  '''

#main

finish_time = 0
ip_file = input("Enter input file name: ")
op_file = input("Enter output file name: ")

ifile = open(ip_file,"r")		#input file descriptor/pointer
ofile = open(op_file,"w")

t = ifile.read()	#read all contents of input file in t
print(t)

#adding include "inputFile Name.v " on top in testbench
ofile.write("`include \"" + ip_file +"\"")

#adding module top
ofile.write("\n module top; \n\n")

#removing all comments
'''
traverse the program(string in stored in t) and find comments ('//') from that index find \n (end of line).
replace whole string by space(ie remove it). start index = find("//).. end index = find("\n") 

'''
# for i in range(0,len(t),1):
# while t.find("//")!=-1:
# 	start = t.find("//")
# 	end = t.find("\n",start)
# 	strin = t[start:end]
# 	t = t.replace(strin,'')

# p2 = re.compile(r'\\[w\s]*\n')
# # str13 = p2.findall(str11)
# str13 = p2.sub('',t)
# print(str13)

t = re.sub('//.*',"",t)

print("\nt is:{}".format(t))


#find positions of all input keywords and extract that subtring

t = t.replace("\n",'')
t = t.replace("\t",'')
sent = t.split(";")

print("sentence 1: {}".format(sent[1]))

#input output block
#count_input=0  #no of input variables you can get from len(input_variabls_list)
input_list = []
output_list = []

for i in range(0,len(sent),1):
	if(sent[i].find("input")!= -1):

		#function to create input_variables_list
		input_list.extend(create_ilist(sent[i]))
		sent[i]=sent[i].replace("input","reg")
		#count_input += var_in_input(sent[i])				#function call to count variables in input
		#input_list.extend(in_list(sent[i]))
		ofile.write(sent[i])
		ofile.write(";\n")
	
	elif(sent[i].find("output") != -1):
		output_list.extend(create_olist(sent[i]))
		sent[i]=sent[i].replace("output","wire")
		ofile.write(sent[i])
		ofile.write(";\n")

#adding calling module (module instantiation)

for i in range(0,len(sent),1):
	if(sent[i].find("module") != -1):
		module = sent[i]
		break					#to get first occurrence and not endmodule

module = module[module.find("module"):]
print("module: {}".format(module))
#module = module.replace(' ','')
#module name is between  e and (
module_name = module[module.find('e')+1:module.find('(')]		#module name starts with space and ends with (

#extract input/output variable in module (A,B,Cin,output..)
var = module[module.find('('):module.find(')')+1]

#count is HA_1, HA_2...
count = "mod1"
ofile.write("\n" + module_name + " "+ count + var + ";" )

#simulation

#assing a,b to 0 initially to remove x at 0th time     example:  0  N1=x, N2=x, N3=x,      N6=x, N7=x,  N22=x, N23=x,
'''
refer dhayal sir mail
initial
begin
a=0;
b=0;
end

'''
ofile.write("\n\ninitial")
ofile.write("\nbegin \n")
for i in range(0,len(input_list),1):
	ofile.write(" {}={}; ".format(input_list[i][0],0))

ofile.write("\n end\n")

#finding no of input ports
ofile.write("\n initial \n begin")
'''
n = count_input
arr = [None] * n  
  
# Print all binary strings  
# generateAllBinaryStrings(n, arr, 0)'''

length = len(input_list)

if length>10:
	finish_time=group(input_list)
else:

	#print("\nsize: {}".format(length))        #working

	print("printing input list: ")

	for i in range(0,len(input_list),1):
		print("{}".format(input_list[i][0]))

	#step2: generate values of input
	val_list = []
	l = []

	for i in range(0,length,1):
		n = input_list[i][1]
		l=[]
		for j in range(0,2**n,1):
			#print("j= {}".format(j))
			l.append(j)
			#print("l= {}".format(l))

		val_list.append(l)
		#print("val_list= {}".format(val_list))

	#printing values list
	print("printing values list: ")

	for i in range(0,len(val_list),1):
		print("{}".format(val_list[i]))

	'''
	for i in itertools.product(*val_list):          put * if list of lists
		print(i) 

	'''
	'''
	create a new updated value list that contains values in range and take cartesian product of updated values
	eg range of a =0 to 255 if user wants a between 12 and 13, remove other values from val list

	'''
	up_val_list=[]
	for i in range(0,length,1):
		n = input_list[i][1]
		print("\n For input variable {}, possible values are from {} to {} ".format(input_list[i][0],0,2**n-1))
		start=int(input("\n Enter starting value: "))
		end = int(input("\n Enter ending value: "))

		#now traverse value list of that input variable and remove elements from start till end
		l =[]
		for j in range(0,len(val_list[i]),1):
			if val_list[i][j]>=start and val_list[i][j]<=end:		#remove values if not in range
				l.append(val_list[i][j])		#if value lies in range add to list
			# else:
				# print(" pop={} ".format(val_list[i][j]))
				# val_list.remove(val_list[i][j])
				# up_val_list.append(l)
			
		up_val_list.append(l)
				
				
			
	print("\n update value list: ")
	for i in range(0,len(up_val_list),1):
		print("{}".format(up_val_list[i]))

		

	finish_time = int(input("\n Enter no of combinations you want: "))

	cart_prod = list(itertools.islice(itertools.product(*up_val_list),finish_time))
	print("\n cartesian product: \n")
	for i in range(0,len(cart_prod),1):
		print(cart_prod[i])
		#print("")

	#seeing can i print one set from cart_product           
	#print(cart_prod[0])     #working

	#seeing can i print one element of set from cart_product
	#print(cart_prod[0][1])      #working





	#assign A,B,C to cartesian product
	for i in range(0,len(cart_prod),1):
		ofile.write("\n #5")
		for j in range(0,len(input_list),1):
			ofile.write(" {}={}; ".format(input_list[j][0],cart_prod[i][j]))

	# print(cart_prod[i])


	ofile.write("\n end")

#input variables list
# print("Input list: {}".format(input_list))

#display block
ofile.write("\n\ninitial \n begin")

#monitor

output_string = " "
for i in range(0,len(input_list),1):     #take a input variable and attach =%d, 
	output_string+=("{}=%d, ".format(input_list[i][0]))

for i in range(0,len(output_list),1):     #take a output variable and attach =%d, 
	output_string+=("{}=%d, ".format(output_list[i][0]))



ofile.write("\n $monitor($time,\"{}\",".format(output_string)) 

#variables list
output_string =  ""
for i in range(0,len(input_list),1):     #take a input variable and write to file or add to string 
	output_string+=("{},".format(input_list[i][0]))

for i in range(0,len(output_list),1):     #take a output variable and attach =%d, 
	output_string+=("{},".format(output_list[i][0]))

#pop extra comma at last in output string
output_string = output_string.rstrip(",")

ofile.write("{}); ".format(output_string))



vcd_file = op_file.replace("v","vcd")
ofile.write("\n $dumpfile(\"{}\");".format(vcd_file))
ofile.write("\n $dumpvars;")

#add finish  #100 $finish;

ofile.write("\n #{} $finish;".format(finish_time*5))		#200 combination * 5(delay for 1 combination)

ofile.write("\n end \n endmodule")




		

ifile.close()
ofile.close()




