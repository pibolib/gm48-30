/// approach(start, ending, difference);
var start, ending, diff;
start = argument0;
ending = argument1;
diff = argument2;
 
var result;
 
if (start < ending){
    result = min(start + diff, ending);
}else{
    result = max(start - diff, ending);
}
 
return result;