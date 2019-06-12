function convert(array){
    return array.map(x=> (x*9/5) +32);
}

const celsius = [-15,-5,0,10,16,20,24,32];

console.log("1.-",convert(celsius));
function select_i_name(users){
    return users.filter(x => x.name.indexOf('i') != -1 ).map(x=> x.name); 
}
const users = [
    {id:11, name:'Adam', age:23, group:'editor'},
    {id:47, name:'John', age:28, group:'admin'},
    {id:85, name:'William', age:34, group:'editor'},
    {id:97, name:'Oliver', age:28, group:'admin'},
]
console.log("2.-",select_i_name(users));

function select_admin(users){
    return users.map(x=>x.group =='admin');
}

console.log("3.-",select_admin(users));
function frecuency_groups(users){
    return users.reduce(function(acc, curr){
        if (!acc[curr.group]){
            acc[curr.group] = 1;
        }
        else{
            acc[curr.group]++;
        }
        return acc;
    },{});
}

console.log("4.-",frecuency_groups(users));


arr = [
    {name:'luna', sex:'f', age:7, species:'dog'},
    {name:'jimmy', sex:'m', age:122, species:'human'},
    {name:'snoop', sex:'m', age:60, species:'human'},
    {name:'jennifer', sex:'f', age:250, species:'human'},
    {name:'yeller', sex:'20', age:20, species:'dog'},
]

function average_dogs(arr){
    return arr.filter(x=>x.species == 'dog').reduce( (acc,curr,idx,self) => acc + curr.age/self.length, 0);
}


console.log("5.-",average_dogs(arr));
