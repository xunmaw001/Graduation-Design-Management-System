const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生列表","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师列表","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"文件模板列表","menuJump":"列表","tableName":"wenjianmoban"}],"menu":"文件模板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论文查重列表","menuJump":"列表","tableName":"lunwenchazhong"}],"menu":"论文查重管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"luntanguanli"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯列表","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"在线选题列表","menuJump":"列表","tableName":"zaixianxuanti"}],"menu":"在线选题管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"开题报告列表","menuJump":"列表","tableName":"kaitibaogao"}],"menu":"开题报告管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"中期报告列表","menuJump":"列表","tableName":"zhongqibaogao"}],"menu":"中期报告管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"毕业论文列表","menuJump":"列表","tableName":"biyelunwen"}],"menu":"毕业论文管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"学生提题列表","menuJump":"列表","tableName":"xueshengtiti"}],"menu":"学生提题管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文进度列表","menuJump":"列表","tableName":"lunwenjindu"}],"menu":"论文进度管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"在线选题列表","menuJump":"列表","tableName":"zaixianxuanti"}],"menu":"在线选题模块"},{"child":[{"buttons":["查看"],"menu":"文件模板列表","menuJump":"列表","tableName":"wenjianmoban"}],"menu":"文件模板模块"},{"child":[{"buttons":["查看"],"menu":"论文查重列表","menuJump":"列表","tableName":"lunwenchazhong"}],"menu":"论文查重模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生提问列表","menuJump":"列表","tableName":"xueshengtiwen"}],"menu":"学生提问管理"},{"child":[{"buttons":["查看","删除"],"menu":"老师答疑列表","menuJump":"列表","tableName":"laoshidayi"}],"menu":"老师答疑管理"},{"child":[{"buttons":["查看","修改","删除","中期报告","论文进度"],"menu":"开题报告列表","menuJump":"列表","tableName":"kaitibaogao"}],"menu":"开题报告管理"},{"child":[{"buttons":["查看","修改","删除","毕业论文"],"menu":"中期报告列表","menuJump":"列表","tableName":"zhongqibaogao"}],"menu":"中期报告管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"毕业论文列表","menuJump":"列表","tableName":"biyelunwen"}],"menu":"毕业论文管理"},{"child":[{"buttons":["新增","查看","修改","删除","开题报告"],"menu":"学生提题列表","menuJump":"列表","tableName":"xueshengtiti"}],"menu":"学生提题管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论文进度列表","menuJump":"列表","tableName":"lunwenjindu"}],"menu":"论文进度管理"},{"child":[{"buttons":["查看","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"在线选题列表","menuJump":"列表","tableName":"zaixianxuanti"}],"menu":"在线选题模块"},{"child":[{"buttons":["查看"],"menu":"文件模板列表","menuJump":"列表","tableName":"wenjianmoban"}],"menu":"文件模板模块"},{"child":[{"buttons":["查看"],"menu":"论文查重列表","menuJump":"列表","tableName":"lunwenchazhong"}],"menu":"论文查重模块"}],"roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"文件模板列表","menuJump":"列表","tableName":"wenjianmoban"}],"menu":"文件模板管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"在线选题列表","menuJump":"列表","tableName":"zaixianxuanti"}],"menu":"在线选题管理"},{"child":[{"buttons":["查看","删除","答疑"],"menu":"学生提问列表","menuJump":"列表","tableName":"xueshengtiwen"}],"menu":"学生提问管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"老师答疑列表","menuJump":"列表","tableName":"laoshidayi"}],"menu":"老师答疑管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"开题报告列表","menuJump":"列表","tableName":"kaitibaogao"}],"menu":"开题报告管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"中期报告列表","menuJump":"列表","tableName":"zhongqibaogao"}],"menu":"中期报告管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"毕业论文列表","menuJump":"列表","tableName":"biyelunwen"}],"menu":"毕业论文管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"学生提题列表","menuJump":"列表","tableName":"xueshengtiti"}],"menu":"学生提题管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"论文进度列表","menuJump":"列表","tableName":"lunwenjindu"}],"menu":"论文进度管理"}],"frontMenu":[{"child":[{"buttons":["查看","选题"],"menu":"在线选题列表","menuJump":"列表","tableName":"zaixianxuanti"}],"menu":"在线选题模块"},{"child":[{"buttons":["查看"],"menu":"文件模板列表","menuJump":"列表","tableName":"wenjianmoban"}],"menu":"文件模板模块"},{"child":[{"buttons":["查看"],"menu":"论文查重列表","menuJump":"列表","tableName":"lunwenchazhong"}],"menu":"论文查重模块"}],"roleName":"教师","tableName":"jiaoshi"}]
    }
}
export default menu;
