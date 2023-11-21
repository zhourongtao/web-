const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootkpk63/",
            name: "springbootkpk63",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootkpk63/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "旅游网站管理系统"
        } 
    }
}
export default base
