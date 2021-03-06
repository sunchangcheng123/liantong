const express=require("express");
const pool=require("./pool")
const bodyParser = require('body-parser');
const cors=require("cors")
const session = require('express-session');
const taocandetail=require('./routes/taocanDetail.js');
const users=require('./routes/users.js');
const getnumber=require('./routes/phoneNumberList');
var app=express();
app.use(express.static(__dirname+"/public"))
app.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))
app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    saveUninitialized: true,
  }))
//获取省
app.get("/getaddress",(req,res)=>{
    var obj=[{A:"北京",A1:"安徽",C:"重庆",D:"福建",E:"广东",F:"甘肃",G:"广西",G1:"贵州"},
              {H1:"湖北",H2:"湖南",H3:"河北",H4:"河南",H5:"海南",H6:"黑龙江",J1:"江苏",J2:"吉林",J3:"江西"},
              {L:"辽宁",N1:"内蒙古",N2:"宁夏",N3:"青海",S1:"山东",S2:"上海",S3:"山西",S4:"陕西",S5:"四川"},
              {T:"天津",X:"新疆",X1:"西藏",Y:"云南",Z:"浙江",X2:"香港"}        
            ];
    
    res.send(obj);
})
//获取区
app.get("/getarea",(req,res)=>{
    var id =req.query.id;
    var sql="SELECT area from lt_area";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        
        res.send(result)
})
})
app.get("/getUser",(req,res)=>{
    var uid=req.query.uid;
    var sql="SELECT phone,name,gender,upwd,address FROM lt_user WHERE uid=?"
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })  
})
const qs=require("querystring");
app.post("/updatePwd",(req,res)=>{
    req.on("data",(buf)=>{       
     var str=buf.toString();
     
     var obj=JSON.parse(str);
     console.log(obj)
     var uid=parseInt(obj.uid);
     var newPwd=obj.pwd;
        var sql="update lt_user set upwd=? where uid=?"; 
        pool.query(sql,[newPwd,uid],(err,result)=>{
            if(err) throw err;
            res.send({code:1,msg:"修改成功"})
        })
        })
    
})





//商品详情页
app.get("/detailsImg",(req,res)=>{
    var id = req.query.id;
    
    var sql = "SELECT type_id,sm_pic,md_pic,lg_pic from lt_pic where pid=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

app.get("/detailsName",(req,res)=>{
    var id = req.query.id;
    var sql = "SELECT pname,price,inventory from lt_products where pid=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

app.get("/detailsInfo",(req,res)=>{
    var id = req.query.id;
    var sql = "SELECT card_double,size,cpu,camera,sim,system,resolution,rom from lt_products_details where pid=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//验证登陆信息，并添加话费余额
app.get("/charge",(req,res)=>{
    var phone = req.query.phone;
   
    var mon =parseInt( req.query.mon);
    var sql = " SELECT phone FROM lt_user WHERE phone=? ";
    var r = 0;
    pool.query(sql,[phone],(err,result)=>{
        
        if(err) throw err;
        if(result.length<1){
            res.send("请检查登录信息,重新登录");  
            return ;
        }else{ 
           r+=50;
        }
        if(r==100){
            var sql = "UPDATE lt_phone SET balance=balance+? WHERE phone=?";
            //获取balance的值？？？？？？
            pool.query(sql,[mon,phone],(err,result)=>{
                if(err) throw err;
                 res.send("交费成功");
               
            })
        }

    })
    var sql=" SELECT phone FROM lt_phone WHERE phone=?"
    pool.query(sql,[phone],(err,result)=>{
        if(err) throw err;
        if(result.length<1){
            res.send("请检查登录信息,重新登录"); 
            return ;
        }else{
            r +=50;
        }
        if(r==100){
            var sql = "UPDATE lt_phone SET balance=balance+? WHERE phone=?";
            //获取balance的值？？？？？？
            pool.query(sql,[mon,phone],(err,result)=>{
                if(err) throw err;
                 res.send("交费成功");
               
            })
        }
     })
    
    
})
//查询花费
app.get("/select",(req,res)=>{
    var phone = req.query.phone;
    var sql = "SELECT balance FROM lt_phone WHERE phone=?";
    pool.query(sql,[phone],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send("请仔细检查您的号码");
            return ;
        }else{
            res.send(result);
        }
    })
})

//套餐详情
app.use('/taocandetail',taocandetail);
//登录
app.use("/users",users);
//号码列表页
app.use('/phoneNumberList',getnumber);