const express = require('express');
const mysql = require('mysql');
const common = require('../libs/common');
const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'tenji'
});
module.exports = () => {
    const route = express.Router();
    const getHomeStr = `SELECT product_id,product_name,product_price,product_img_url,product_uprice FROM product`;
    const getCateNames = `SELECT * FROM category ORDER BY category_id desc`;
    //get homePage datas
    route.get('/home', (req, res) => {
        getHomeDatas(getHomeStr, res);
    });

    function getHomeDatas(getHomeStr, res) {
        db.query(getHomeStr, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(200).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    }

    function checkEmployee(editedItem,res, callback) {
        var employee_id = editedItem.employeeId
        var name = editedItem.name
        var frigana = editedItem.frigana
        var entering_date = editedItem.enteringDate
        var certification_name = editedItem.certificationName
        var get_date = editedItem.getDate
        var encourage_date = editedItem.encourageDate ? editedItem.encourageDate : editedItem.getDate
        
        const getEmployee = `SELECT e.employee_id from employee e where e.employee_id = '${employee_id}'`;
        db.query(getEmployee, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
                callback(false)
            } else {
                if (data.length == 0) {
                    const insEmployee = `INSERT INTO employee(employee_id,name,frigana,entering_date) VALUES('${employee_id}','${name}','${frigana}','${entering_date}')`
                    db.query(insEmployee, (err) => {
                        if (err) {
                            console.log(err);
                            res.status(500).send('database err').end();
                        } else {
                            const insEmployee_certification = `INSERT INTO employee_certification(employee_id,certification_name,get_date,encourage_date) VALUES('${employee_id}','${certification_name}','${get_date}','${encourage_date}')`
                            delReg(insEmployee_certification, res)
                        }
                    })
                    callback(false)
                } else {
                    callback(true)
                }
            }
        })
    };

    route.get('/category', (req, res) => {
        getCateNamesDatas(getCateNames, res);
    });

    function getCateNamesDatas(getCateNames, res) {
        db.query(getCateNames, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    };
    route.get('/categorygoods', (req, res) => {
        let mId = req.query.mId;
        const sql = `select * from product,category where product.category_id=category.category_id and category.category_id='${mId}'`;
        getCateGoods(sql, res);
    });

    function getCateGoods(sql, res) {
        db.query(sql, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    }
    route.get('/detail', (req, res) => {
        let produId = req.query.mId;
        const imagesStr = `select image_url from product_image where product_id='${produId}'`;
        const productStr = `select * from product where product_id='${produId}'`;
        let detailDatas = [];
        db.query(imagesStr, (err, imgDatas) => {
            if (err) {
                console.error(err);
                res.status(500).send('database err').end();
            } else {
                detailDatas.push(imgDatas);
                db.query(productStr, (err, data) => {
                    if (err) {
                        console.error(err);
                        res.status(500).send('database err').end();
                    } else {
                        detailDatas.push(data);
                        res.send(detailDatas);
                    }
                });
            }
        });

    });
    route.get('/cart', (req, res) => {
        const cartStr = "SELECT cart_id,user.user_id,product.product_id,product_name,product_uprice,product_img_url,goods_num,product_num,shop_name FROM product,user,goods_cart,shop where product.product_id=goods_cart.product_id and user.user_id=goods_cart.user_id and shop.shop_id = product.shop_id";
        db.query(cartStr, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    })

    route.get('/search', (req, res) => {
        let keyWord = req.query.kw;
        let hot = req.query.hot;
        let priceUp = req.query.priceUp;
        let priceDown = req.query.priceDown;
        const keywordStr = `select  *  from product,shop where product.shop_id=shop.shop_id and product.product_name like '%${keyWord}%'`;
        const hotStr = `select  *  from product,shop where product.shop_id=shop.shop_id and product.product_name like '%${keyWord}%' order by product_comment_num desc`;
        const priceUpStr = `select  *  from product,shop where product.shop_id=shop.shop_id and product.product_name like '%${keyWord}%' order by product_uprice asc`;
        const priceDownStr = `select  *  from product,shop where product.shop_id=shop.shop_id and product.product_name like '%${keyWord}%' order by product_uprice desc`;
        if (keyWord != '') {
            if (hot != '') {
                getSearchDatas(hotStr, res);
            } else if (priceUp != '') {
                getSearchDatas(priceUpStr, res);
            } else if (priceDown != '') {
                getSearchDatas(priceDownStr, res);
            } else {
                getSearchDatas(keywordStr, res);
            }
        }

    });
    /**
        get search datas
    */
    function getSearchDatas(keywordStr, res) {
        db.query(keywordStr, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    }
    /*
     *user reg func
     */
    route.post('/reg', (req, res) => {

        let mObj = {};
        for (let obj in req.body) {
            mObj = JSON.parse(obj);
        }
        let regName = mObj.regName;
        let regPasswd = mObj.regPasswd;
        regPasswd = common.md5(regPasswd + common.MD5_SUFFXIE);
        const insUserInfo = `INSERT INTO user(user_name,login_password,user_number) VALUES('${regName}','${regPasswd}','${regName}')`;
        delReg(insUserInfo, res);
    });
    /*
     *deal user register
     */
    function delReg(insUserInfo, res) {
        db.query(insUserInfo, (err) => {
            if (err) {
                console.error(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();
            } else {
                res.send({ 'msg': '注册成功', 'status': 1 }).end();
            }
        })
    };
    route.post('/login', (req, res) => {

        let mObj = {};
        for (let obj in req.body) {
            mObj = JSON.parse(obj);
            console.log(mObj);
        }
        let username = mObj.loginName;
        let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);;
        // console.log(username, mObj.passwd);
        const selectUser = `SELECT * FROM user where user_name='${username}'`;
        db.query(selectUser, (err, data) => {
            if (err) {
                console.log(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();
            } else {
                if (data.length == 0) {
                    res.send({ 'msg': '该用户不存在', 'status': -1 }).end();
                } else {
                    let dataw = data[0];
                    //login sucess
                    if (dataw.login_password === password) {
                        //save the session 
                        req.session['user_id'] = dataw.user_id;
                        dataw.msg = "登录成功";
                        dataw.status = 1;
                        res.send(dataw).end();
                    } else {
                        res.send({ 'msg': '密码不正确', 'status': -2 }).end();
                    }
                }
            }
        });

    });
    route.get('/userinfo', (req, res) => {
        let uId = req.query.uId;
        const getU = `SELECT user_name,user_number FROM user where user_id='${uId}'`;
        db.query(getU, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    res.send(data[0]);
                }
            }
        });
    });
    route.get('/employeeinfo', (req, res) => {
        const getEmployee = "SELECT employee_id as '社員番号',name,name as '名前',frigana as 'フリガナ',DATE_FORMAT( entering_date , '%Y-%m-%d' ) '入社年月日' from employee ";
        db.query(getEmployee, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(200).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    });
    route.get('/employees', (req, res) => {
        const getEmployee = "SELECT employee_id ,name,frigana ,DATE_FORMAT( entering_date , '%Y-%m-%d' ) entering_date from employee ";
        db.query(getEmployee, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(200).send('no datas').end();
                } else {
                    res.send(data);
                }
            }
        });
    });
    route.get('/employeeCertifications', (req, res) => {
        const getEmployee = "SELECT e.employee_id ,name,frigana ,DATE_FORMAT( entering_date , '%Y-%m-%d' ) entering_date,"
        + " certification_name, certification_id, DATE_FORMAT( get_date , '%Y-%m-%d' ) get_date,  if(encourage_date=DATE_FORMAT( '0000-00-00' , '%Y-%m-%d' ),'',DATE_FORMAT( encourage_date , '%Y-%m-%d' )) encourage_date"
        + " from employee e,employee_certification c where e.employee_id = c.employee_id order BY employee_id";
        db.query(getEmployee, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(200).send('no datas').end();
                } else {
                    for (let index = 0; index < data.length; index++) {
                        const element = data[index];
                        element.row_num = index + 1
                        element.encourage_date = element.encourage_date == element.get_date ? '' : element.encourage_date
                    }
                    res.send(data);
                }
            }
        });
    });
    route.post('/updateEmployee', (req, res) => {
        let mObj = {}
        for (let obj in req.body) {
          mObj = JSON.parse(obj)
        }
        let editedItem = mObj
        var employee_id = editedItem.employeeId
        var name = editedItem.name
        var frigana = editedItem.frigana
        var entering_date = editedItem.enteringDate

        // 社員IDを存在するかチェック 存在していない場合、社員挿入する
        checkEmployee(editedItem, res, (existEmployee) => {
            if (existEmployee) {
                // 存在する場合、社員を更新
                const upEmployee = `update employee set name = '${name}', frigana = '${frigana}', entering_date = '${entering_date}' `
                + `where employee_id = '${employee_id}' `
                
                delReg(upEmployee, res)
            }
        })
      })
      route.post('/updateEmployeeCertification', async (req, res) => {
        let mObj = {}
        for (let obj in req.body) {
          mObj = JSON.parse(obj)
        }
        let editedItem = mObj
        var employee_id = editedItem.employeeId
        var certification_name = editedItem.certificationName
        var certification_id = editedItem.certificationId
        var get_date = editedItem.getDate
        var encourage_date = editedItem.encourageDate ? editedItem.encourageDate : editedItem.getDate

        // 社員IDを存在するかチェック 存在していない場合、社員挿入する
        checkEmployee(editedItem, res, (existEmployee) => {
            // 社員ID存在、資格ID存在、更新
            if (existEmployee) {
                if( certification_id) {
                    const upEmployee_certification = `update employee_certification set certification_name = '${certification_name}',get_date = '${get_date}', encourage_date = '${encourage_date}' `
                    + `where employee_id = '${employee_id}' and certification_id = '${certification_id}'`
                    delReg(upEmployee_certification, res)
                } else {
                    const insEmployee_certification = `INSERT INTO employee_certification(employee_id,certification_name,get_date,encourage_date) VALUES('${employee_id}','${certification_name}','${get_date}','${encourage_date}')`
                    delReg(insEmployee_certification, res)
                }
            }
        })
    })
      route.post('/deleteEmployeeCertification', (req, res) => {
        let mObj = {}
        for (let obj in req.body) {
          mObj = JSON.parse(obj)
        }
        var editedItem = mObj
        var employee_id = editedItem.employee_id
        var certification_name = editedItem.certification_name
    
        const insEmployee_certification = `delete from  employee_certification where employee_id = '${employee_id}' and certification_name = '${certification_name}'`
		delReg(insEmployee_certification, res)
      })
    return route;
}
