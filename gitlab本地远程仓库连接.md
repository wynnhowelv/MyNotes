命令行指令

Git 全局设置
git config --global user.name <user name>
git config --global user.email <user email>

创建新版本库
git clone <git repository url>
cd <your repository>
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

已存在的文件夹
cd existing_folder
git init
git remote add origin <git repository url>
git add .
git commit -m "Initial commit"
git push -u origin master

已存在的 Git 版本库
cd existing_repo
git remote rename origin old-origin
git remote add origin <git repository url>
git push -u origin --all
git push -u origin --tags
