function ej1(arr,f1){
    return arr.map(f1);
}

function f(x){
    return x*x + 8*x + 5;
}

a = [-15,-5,0,5,10,15];
console.log("1.-", ej1(a,f) );

const users = [
    {
        id      : 11,
        name    : 'Adam',
        age     : 25,
        group   : 'editor',
    },
    { id: 12, name: 'john', age: 28, group: 'admin'},
    { id: 13, name: 'william', age: 34, group: 'editor'},
    { id: 14, name: 'oliver', age: 28, group: 'admin'},
]

function greater_than(objs){
    return objs.filter(obj => obj.age > 30 ).map(obj => obj.name);
}

console.log('2.-',greater_than(users,10));

function non_admin_mean(objs){
    var non_admin = objs.filter(obj => obj.group != 'admin');
    var non_admin_ages_sum = non_admin.reduce((curr, sum) => curr + sum.age,0);
    var non_admin_length    = non_admin.length;
    return non_admin_ages_sum / non_admin_length;
}

console.log('3.-', non_admin_mean(users));

function diag_sum(size){
    sum = 1;
    diag_elem = 1;
    for(var i = 1; i < size; i++){
        diag_elem += (i*2);
        console.log("elem",diag_elem);
        sum += diag_elem;
    }
    return sum;
}

function inv_diag_sum(size){
    
}

function test(size){
    if (size==0){
        return 0;
    }
    if (size == 1){
        return 1;
    }
    return size*size + (size*size) - (size -1)*2 + test(size-2);
}

console.log('4.-', test(4));
