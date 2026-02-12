sk93t@DESKTOP-UPIQLKM MINGW64 ~
$ cd "/c/Users/sk93t/OneDrive/デスクトップ/db_lesson_basic"

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic
$ touch db_lesson.sql

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic
$ git init
Initialized empty Git repository in C:/Users/sk93t/OneDrive/デスクトップ/db_lesson_basic/.git/

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        db_lesson.sql

nothing added to commit but untracked files present (use "git add" to track)

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git add.
git: 'add.' is not a git command. See 'git --help'.

The most similar command is
        add

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git add .

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   db_lesson.sql


sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git commit -m 'first commit'
[master (root-commit) 481c0b7] first commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 db_lesson.sql

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git status
On branch master
nothing to commit, working tree clean

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git log
commit 481c0b7b85c59266c3b282853190cb4637a53262 (HEAD -> master)
Author: ren <sk93txnm1582@gmail.com>
Date:   Thu Feb 12 22:21:31 2026 +0900

    first commit

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git remote add origin https://github.com/sk93txnm/db_lesson_basic.git

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git remote -v
origin  https://github.com/sk93txnm/db_lesson_basic.git (fetch)
origin  https://github.com/sk93txnm/db_lesson_basic.git (push)

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git push origin master
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 212 bytes | 70.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/sk93txnm/db_lesson_basic.git
 * [new branch]      master -> master

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ ^[[200~git branch~
bash: $'\E[200~git': command not found

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git branch
* master

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git branch working

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git branch
* master
  working

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
$ git checkout working
Switched to branch 'working'

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (working)
$ git branch
  master
* working

sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (working)
$ mysql -u root -p
Enter password: **********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 19
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_lesson_basic
ERROR 1049 (42000): Unknown database 'db_lesson_basic'
MariaDB [(none)]> USE db_lesson
Database changed
MariaDB [db_lesson]> CREATE TABLE departments;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [db_lesson]> CREATE TABLE departments;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [db_lesson]> CREATE TABLE departments(
    -> CREATE TABLE departments (
    ->     department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ->     name VARCHAR(20) NOT NULL,
    ->     created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    ->     updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ->     PRIMARY KEY (department_id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREATE TABLE departments (
    department_id INT UNSIGNED NOT NULL AUTO_INCRE...' at line 2
MariaDB [db_lesson]> CREATE TABLE departments (
    -> department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    -> PRIMARY KEY (department_id)
    -> );
Query OK, 0 rows affected (0.028 sec)

MariaDB [db_lesson]> SHOW TABLES;
+---------------------+
| Tables_in_db_lesson |
+---------------------+
| departments         |
| people              |
| reports             |
+---------------------+
3 rows in set (0.001 sec)

MariaDB [db_lesson]> DESC departments;
+---------------+------------------+------+-----+---------------------+-------------------------------+
| Field         | Type             | Null | Key | Default             | Extra
        |
+---------------+------------------+------+-----+---------------------+-------------------------------+
| department_id | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)      | NO   |     | NULL                |
        |
| created_at    | timestamp        | YES  |     | current_timestamp() |
        |
| updated_at    | timestamp        | YES  |     | current_timestamp() | on update current_timestamp() |
+---------------+------------------+------+-----+---------------------+-------------------------------+
4 rows in set (0.037 sec)

MariaDB [db_lesson]> DESC people;
+------------+---------------------+------+-----+---------------------+-------------------------------+
| Field      | Type                | Null | Key | Default             | Extra
        |
+------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id  | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name       | varchar(20)         | NO   |     | NULL                |
        |
| email      | varchar(255)        | YES  | UNI | NULL                |
        |
| age        | tinyint(3) unsigned | YES  |     | NULL                |
        |
| gender     | tinyint(4)          | YES  |     | NULL                |
        |
| created_at | timestamp           | NO   |     | current_timestamp() |
        |
| updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+---------------------+------+-----+---------------------+-------------------------------+
7 rows in set (0.053 sec)

MariaDB [db_lesson]> ALTER TABLE people ADD COLUMN department_id INT UNSIGNED NULL AFTER email;
Query OK, 0 rows affected (0.030 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> DESC people;
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| Field         | Type                | Null | Key | Default             | Extra
           |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id     | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)         | NO   |     | NULL                |
           |
| email         | varchar(255)        | YES  | UNI | NULL                |
           |
| department_id | int(10) unsigned    | YES  |     | NULL                |
           |
| age           | tinyint(3) unsigned | YES  |     | NULL                |
           |
| gender        | tinyint(4)          | YES  |     | NULL                |
           |
| created_at    | timestamp           | NO   |     | current_timestamp() |
           |
| updated_at    | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
8 rows in set (0.040 sec)

MariaDB [db_lesson]> INSERT INTO departments(
    -> name)
    -> VALUE
    -> ('営業'), ('開発'), ('経理'), ('人事'), ('情報システム');
Query OK, 5 rows affected (0.019 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> DESC departments;
+---------------+------------------+------+-----+---------------------+-------------------------------+
| Field         | Type             | Null | Key | Default             | Extra
        |
+---------------+------------------+------+-----+---------------------+-------------------------------+
| department_id | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)      | NO   |     | NULL                |
        |
| created_at    | timestamp        | YES  |     | current_timestamp() |
        |
| updated_at    | timestamp        | YES  |     | current_timestamp() | on update current_timestamp() |
+---------------+------------------+------+-----+---------------------+-------------------------------+
4 rows in set (0.041 sec)

MariaDB [db_lesson]> SELECT * FROM departments;
+---------------+--------------+---------------------+---------------------+
| department_id | name         | created_at          | updated_at          |
+---------------+--------------+---------------------+---------------------+
|             1 | 営業         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
|             2 | 開発         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
|             3 | 経理         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
|             4 | 人事         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
|             5 | 情報システム | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
+---------------+--------------+---------------------+---------------------+
5 rows in set (0.013 sec)

MariaDB [db_lesson]> INSERT INTO people(
    -> INSERT INTO people (name, email, age, gender, department_id)
    -> VALUES
    -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    -> ('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
    -> ('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
    -> ('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
    -> ('大野翔', 'sho.ohno@example.com', 33, 1, 5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INSERT INTO people (name, email, age, gender, department_id)
VALUES
('佐藤...' at line 2
MariaDB [db_lesson]> INSERT INTO people (name, email, age, gender, department_id)
    ->     -> VALUES
    ->     -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    ->     -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    ->     -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    ->     -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    ->     -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    ->     -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    ->     -> ('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
    ->     -> ('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
    ->     -> ('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
    ->     -> ('大野翔', 'sho.ohno@example.com', 33, 1, 5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> VALUES
    -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    -> ...' at line 2
MariaDB [db_lesson]>
MariaDB [db_lesson]> INSERT INTO people (name, email, age, gender, department_id)
    -> VALUES
    -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~
    -> $ cd "/c/Users/sk93t/OneDrive/デスクトップ/db_lesson_basic"
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic
    -> $ touch db_lesson.sql
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic
    -> $ git init
    -> Initialized empty Git repository in C:/Users/sk93t/OneDrive/デスクトップ/db_lesson_basic/.git/
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git status
    -> On branch master
    ->
    -> No commits yet
    ->
    -> Untracked files:
    ->   (use "git add <file>..." to include in what will be committed)
    ->         db_lesson.sql
    ->
    -> nothing added to commit but untracked files present (use "git add" to track)
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git add.
    -> git: 'add.' is not a git command. See 'git --help'.
    ->
    -> The most similar command is
    ->         add
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git add .
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git status
    -> On branch master
    ->
    -> No commits yet
    ->
    -> Changes to be committed:
    ->   (use "git rm --cached <file>..." to unstage)
    ->         new file:   db_lesson.sql
    ->
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git commit -m 'first commit'
    -> [master (root-commit) 481c0b7] first commit
    ->  1 file changed, 0 insertions(+), 0 deletions(-)
    ->  create mode 100644 db_lesson.sql
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git status
    -> On branch master
    -> nothing to commit, working tree clean
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git log
    -> commit 481c0b7b85c59266c3b282853190cb4637a53262 (HEAD -> master)
    -> Author: ren <sk93txnm1582@gmail.com>
    -> Date:   Thu Feb 12 22:21:31 2026 +0900
    ->
    ->     first commit
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git remote add origin https://github.com/sk93txnm/db_lesson_basic.git
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git remote -v
    -> origin  https://github.com/sk93txnm/db_lesson_basic.git (fetch)
    -> origin  https://github.com/sk93txnm/db_lesson_basic.git (push)
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git push origin master
    -> Enumerating objects: 3, done.
    -> Counting objects: 100% (3/3), done.
    -> Writing objects: 100% (3/3), 212 bytes | 70.00 KiB/s, done.
    -> Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
    -> To https://github.com/sk93txnm/db_lesson_basic.git
    ->  * [new branch]      master -> master
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ ^[[200~git branch~
    -> bash: $'\E[200~git': command not found
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git branch
    -> * master
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git branch working
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git branch
    -> * master
    ->   working
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (master)
    -> $ git checkout working
    -> Switched to branch 'working'
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (working)
    -> $ git branch
    ->   master
    -> * working
    ->
    -> sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (working)
    -> $ mysql -u root -p
    -> Enter password: **********
    -> Welcome to the MariaDB monitor.  Commands end with ; or \g.
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sk93t@DESKTOP-UPIQLKM MINGW64 ~
$ cd "/c/Users/sk93t/OneDrive/デスクトッ...' at line 10
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'or' at line 1
    -> Your MariaDB connection id is 19
    -> Server version: 10.4.32-MariaDB mariadb.org binary distribution
    ->
    -> Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
    ->
    -> Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    ->
    -> MariaDB [(none)]> USE db_lesson_basic
    -> ERROR 1049 (42000): Unknown database 'db_lesson_basic'
    -> MariaDB [(none)]> USE db_lesson
    -> Database changed
    -> MariaDB [db_lesson]> CREATE TABLE departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.
Your MariaDB connection id is 19
Server version: 10.4.32-MariaDB mariadb.or...' at line 1
MariaDB [db_lesson]> ERROR 1113 (42000): A table must have at least 1 column
    -> MariaDB [db_lesson]> CREATE TABLE departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1113 (42000): A table must have at least 1 column
MariaDB [db_lesson]> ...' at line 1
MariaDB [db_lesson]> ERROR 1113 (42000): A table must have at least 1 column
    -> MariaDB [db_lesson]> CREATE TABLE departments(
    ->     -> CREATE TABLE departments (
    ->     ->     department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ->     ->     name VARCHAR(20) NOT NULL,
    ->     ->     created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    ->     ->     updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ->     ->     PRIMARY KEY (department_id)
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1113 (42000): A table must have at least 1 column
MariaDB [db_lesson]> ...' at line 1
MariaDB [db_lesson]> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREATE TABLE departments (
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    '>     department_id INT UNSIGNED NOT NULL AUTO_INCRE...' at line 2
    -> MariaDB [db_lesson]> CREATE TABLE departments (
    ->     -> department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ->     -> name VARCHAR(20) NOT NULL,
    ->     -> created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    ->     -> updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    ->     -> PRIMARY KEY (department_id)
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'the manual that corresponds to your MariaDB server version for the right synt...' at line 1
MariaDB [db_lesson]> Query OK, 0 rows affected (0.028 sec)
    ->
    -> MariaDB [db_lesson]> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 0 rows affected (0.028 sec)

MariaDB [db_lesson]> SHOW TABLES' at line 1
MariaDB [db_lesson]> +---------------------+
    -> | Tables_in_db_lesson |
    -> +---------------------+
    -> | departments         |
    -> | people              |
    -> | reports             |
    -> +---------------------+
    -> 3 rows in set (0.001 sec)
    ->
    -> MariaDB [db_lesson]> DESC departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+---------------------+
| Tables_in_db_lesson |
+---------------------+
| dep...' at line 1
MariaDB [db_lesson]> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> | Field         | Type             | Null | Key | Default             | Extra
    ->         |
    -> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> | department_id | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
    -> | name          | varchar(20)      | NO   |     | NULL                |
    ->         |
    -> | created_at    | timestamp        | YES  |     | current_timestamp() |
    ->         |
    -> | updated_at    | timestamp        | YES  |     | current_timestamp() | on update current_timestamp() |
    -> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> 4 rows in set (0.037 sec)
    ->
    -> MariaDB [db_lesson]> DESC people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+---------------+------------------+------+-----+---------------------+------...' at line 1
MariaDB [db_lesson]> +------------+---------------------+------+-----+---------------------+-------------------------------+
    -> | Field      | Type                | Null | Key | Default             | Extra
    ->         |
    -> +------------+---------------------+------+-----+---------------------+-------------------------------+
    -> | person_id  | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
    -> | name       | varchar(20)         | NO   |     | NULL                |
    ->         |
    -> | email      | varchar(255)        | YES  | UNI | NULL                |
    ->         |
    -> | age        | tinyint(3) unsigned | YES  |     | NULL                |
    ->         |
    -> | gender     | tinyint(4)          | YES  |     | NULL                |
    ->         |
    -> | created_at | timestamp           | NO   |     | current_timestamp() |
    ->         |
    -> | updated_at | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
    -> +------------+---------------------+------+-----+---------------------+-------------------------------+
    -> 7 rows in set (0.053 sec)
    ->
    -> MariaDB [db_lesson]> ALTER TABLE people ADD COLUMN department_id INT UNSIGNED NULL AFTER email;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+------------+---------------------+------+-----+---------------------+------...' at line 1
MariaDB [db_lesson]> Query OK, 0 rows affected (0.030 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> MariaDB [db_lesson]> DESC people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 0 rows affected (0.030 sec)
Records: 0  Duplicates: 0  Warnings: 0
...' at line 1
MariaDB [db_lesson]> +---------------+---------------------+------+-----+---------------------+-------------------------------+
    -> | Field         | Type                | Null | Key | Default             | Extra
    ->            |
    -> +---------------+---------------------+------+-----+---------------------+-------------------------------+
    -> | person_id     | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
    -> | name          | varchar(20)         | NO   |     | NULL                |
    ->            |
    -> | email         | varchar(255)        | YES  | UNI | NULL                |
    ->            |
    -> | department_id | int(10) unsigned    | YES  |     | NULL                |
    ->            |
    -> | age           | tinyint(3) unsigned | YES  |     | NULL                |
    ->            |
    -> | gender        | tinyint(4)          | YES  |     | NULL                |
    ->            |
    -> | created_at    | timestamp           | NO   |     | current_timestamp() |
    ->            |
    -> | updated_at    | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
    -> +---------------+---------------------+------+-----+---------------------+-------------------------------+
    -> 8 rows in set (0.040 sec)
    ->
    -> MariaDB [db_lesson]> INSERT INTO departments(
    ->     -> name)
    ->     -> VALUE
    ->     -> ('営業'), ('開発'), ('経理'), ('人事'), ('情報システム');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+---------------+---------------------+------+-----+---------------------+---...' at line 1
MariaDB [db_lesson]> Query OK, 5 rows affected (0.019 sec)
    -> Records: 5  Duplicates: 0  Warnings: 0
    ->
    -> MariaDB [db_lesson]> DESC departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Query OK, 5 rows affected (0.019 sec)
Records: 5  Duplicates: 0  Warnings: 0
...' at line 1
MariaDB [db_lesson]> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> | Field         | Type             | Null | Key | Default             | Extra
    ->         |
    -> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> | department_id | int(10) unsigned | NO   | PRI | NULL                | auto_increment                |
    -> | name          | varchar(20)      | NO   |     | NULL                |
    ->         |
    -> | created_at    | timestamp        | YES  |     | current_timestamp() |
    ->         |
    -> | updated_at    | timestamp        | YES  |     | current_timestamp() | on update current_timestamp() |
    -> +---------------+------------------+------+-----+---------------------+-------------------------------+
    -> 4 rows in set (0.041 sec)
    ->
    -> MariaDB [db_lesson]> SELECT * FROM departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+---------------+------------------+------+-----+---------------------+------...' at line 1
MariaDB [db_lesson]> +---------------+--------------+---------------------+---------------------+
    -> | department_id | name         | created_at          | updated_at          |
    -> +---------------+--------------+---------------------+---------------------+
    -> |             1 | 営業         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
    -> |             2 | 開発         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
    -> |             3 | 経理         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
    -> |             4 | 人事         | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
    -> |             5 | 情報システム | 2026-02-12 23:01:12 | 2026-02-12 23:01:12 |
    -> +---------------+--------------+---------------------+---------------------+
    -> 5 rows in set (0.013 sec)
    ->
    -> MariaDB [db_lesson]> INSERT INTO people(
    ->     -> INSERT INTO people (name, email, age, gender, department_id)
    ->     -> VALUES
    ->     -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    ->     -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    ->     -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    ->     -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    ->     -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    ->     -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    ->     -> ('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
    ->     -> ('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
    ->     -> ('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
    ->     -> ('大野翔', 'sho.ohno@example.com', 33, 1, 5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '+---------------+--------------+---------------------+---------------------+
...' at line 1
MariaDB [db_lesson]> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INSERT INTO people (name, email, age, gender, department_id)
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    '> VALUES
    '> ('佐藤...' at line 2
    '> MariaDB [db_lesson]> INSERT INTO people (name, email, age, gender, department_id)
    '>     ->     -> VALUES
    '>     ->     -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    '>     ->     -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    '>     ->     -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    '>     ->     -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    '>     ->     -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    '>     ->     -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    '>     ->     -> ('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
    '>     ->     -> ('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
    '>     ->     -> ('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
    '>     ->     -> ('大野翔', 'sho.ohno@example.com', 33, 1, 5);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> VALUES
    ->     -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    ->     -> ...' at line 2
    '> MariaDB [db_lesson]>
    '> MariaDB [db_lesson]> INSERT INTO people (name, email, age, gender, department_id)
    '>     -> VALUES
    '>     -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    '>     -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    '>     -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    '>     -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    '>     -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    '>     -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    '>     ->
    '> \c
    '> c\
    '> \c
    '> \c
    '>
    '> Bye
Ctrl-C -- exit!


sk93t@DESKTOP-UPIQLKM MINGW64 ~/OneDrive/デスクトップ/db_lesson_basic (working)
$ mysql -u root -p
Enter password: **********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 20
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE db_lesson
Database changed
MariaDB [db_lesson]> INSERT INTO people (name, email, age, gender, department_id)
    -> VALUES
    -> ('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
    -> ('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
    -> ('田中健', 'ken.tanaka@example.com', 25, 1, 1),
    -> ('山田優', 'yu.yamada@example.com', 30, 1, 2),
    -> ('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
    -> ('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
    -> ('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
    -> ('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
    -> ('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
    -> ('大野翔', 'sho.ohno@example.com', 33, 1, 5);
Query OK, 10 rows affected (0.004 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> DESC people;
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| Field         | Type                | Null | Key | Default             | Extra
           |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
| person_id     | int(10) unsigned    | NO   | PRI | NULL                | auto_increment                |
| name          | varchar(20)         | NO   |     | NULL                |
           |
| email         | varchar(255)        | YES  | UNI | NULL                |
           |
| department_id | int(10) unsigned    | YES  |     | NULL                |
           |
| age           | tinyint(3) unsigned | YES  |     | NULL                |
           |
| gender        | tinyint(4)          | YES  |     | NULL                |
           |
| created_at    | timestamp           | NO   |     | current_timestamp() |
           |
| updated_at    | timestamp           | NO   |     | current_timestamp() | on update current_timestamp() |
+---------------+---------------------+------+-----+---------------------+-------------------------------+
8 rows in set (0.024 sec)

MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                        | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@gizumo.jp             |          NULL |   20 |      1 | 2026-02-12 14:36:49 | 2026-02-12 14:36:49 |
|         2 | 田中ゆうこ     | tanaka@gizumo.jp             |          NULL |   25 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         3 | 福田だいすけ   | fukuda@gizumo.jp             |          NULL |   42 |      1 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         4 | 豊島はなこ     | toyoshima@gizumo.jp          |          NULL |   34 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         6 | 不思議沢みちこ | NULL                         |          NULL | NULL |   NULL | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|        10 | NoReportUser   | NULL                         |          NULL | NULL |   NULL | 2026-02-12 16:37:41 | 2026-02-12 16:37:41 |
|        11 | 佐藤太郎       | taro.sato@example.com        |             1 |   28 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        12 | 鈴木花子       | hanako.suzuki@example.com    |             1 |   32 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        13 | 田中健         | ken.tanaka@example.com       |             1 |   25 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        14 | 山田優         | yu.yamada@example.com        |             2 |   30 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        15 | 高橋美咲       | misaki.takahashi@example.com |             2 |   27 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        16 | 中村亮         | ryo.nakamura@example.com     |             2 |   35 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        17 | 小林愛         | ai.kobayashi@example.com     |             2 |   29 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        18 | 加藤誠         | makoto.kato@example.com      |             3 |   41 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        19 | 斎藤真由       | mayu.saito@example.com       |             4 |   26 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        20 | 大野翔         | sho.ohno@example.com         |             5 |   33 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
16 rows in set (0.003 sec)

MariaDB [db_lesson]> INSERT INTO reports(person_id, content)
    -> VALUES
    -> (1, '今日は営業活動を中心に行いました。'),
    -> (2, '顧客との打ち合わせで新しい要望を確認しました。'),
    -> (3, '営業資料の改善点をまとめました。'),
    -> (4, '新機能の開発を順調に進めています。'),
    -> (5, 'コードレビューを実施し品質向上に努めました。'),
    -> (6, 'バグ修正を行い動作確認まで完了しました。'),
    -> (7, '開発チームで仕様調整のミーティングを行いました。'),
    -> (8, '経理処理を行い月次報告書を作成しました。'),
    -> (9, '採用候補者との面談を担当しました。'),
    -> (10, '社内システムの改善点を調査し提案書を作成しました。');
Query OK, 10 rows affected (0.009 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                        | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@gizumo.jp             |          NULL |   20 |      1 | 2026-02-12 14:36:49 | 2026-02-12 14:36:49 |
|         2 | 田中ゆうこ     | tanaka@gizumo.jp             |          NULL |   25 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         3 | 福田だいすけ   | fukuda@gizumo.jp             |          NULL |   42 |      1 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         4 | 豊島はなこ     | toyoshima@gizumo.jp          |          NULL |   34 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         6 | 不思議沢みちこ | NULL                         |          NULL | NULL |   NULL | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|        10 | NoReportUser   | NULL                         |          NULL | NULL |   NULL | 2026-02-12 16:37:41 | 2026-02-12 16:37:41 |
|        11 | 佐藤太郎       | taro.sato@example.com        |             1 |   28 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        12 | 鈴木花子       | hanako.suzuki@example.com    |             1 |   32 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        13 | 田中健         | ken.tanaka@example.com       |             1 |   25 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        14 | 山田優         | yu.yamada@example.com        |             2 |   30 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        15 | 高橋美咲       | misaki.takahashi@example.com |             2 |   27 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        16 | 中村亮         | ryo.nakamura@example.com     |             2 |   35 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        17 | 小林愛         | ai.kobayashi@example.com     |             2 |   29 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        18 | 加藤誠         | makoto.kato@example.com      |             3 |   41 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        19 | 斎藤真由       | mayu.saito@example.com       |             4 |   26 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        20 | 大野翔         | sho.ohno@example.com         |             5 |   33 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
16 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM reports;
+-----------+-----------+----------------------------------------------------+---------------------+---------------------+
| report_id | person_id | content                                            | created_at          | updated_at          |
+-----------+-----------+----------------------------------------------------+---------------------+---------------------+
|         1 |         1 | Report 1                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         2 |         1 | Report 2                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         3 |         2 | Report 3                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         4 |         2 | Report 4                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         5 |         3 | Report 5                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         6 |         3 | Report 6                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         7 |         4 | Report 7                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         8 |         4 | Report 8                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|         9 |         5 | Report 9                                           | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|        10 |         5 | Report 10                                          | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|        11 |         6 | Report 11                                          | 2026-02-12 16:26:52 | 2026-02-12 16:26:52 |
|        12 |         1 | Report 1                                           | 2026-02-12 16:30:17 | 2026-02-12 16:30:17 |
|        13 |         2 | Report 2                                           | 2026-02-12 16:30:17 | 2026-02-12 16:30:17 |
|        14 |         3 | Report 3                                           | 2026-02-12 16:30:17 | 2026-02-12 16:30:17 |
|        15 |       999 | This is a report by a non-existing person          | 2026-02-12 16:38:57 | 2026-02-12 16:38:57 |
|        16 |       999 | This is a report by a non-existing person          | 2026-02-12 16:39:01 | 2026-02-12 16:39:01 |
|        17 |       999 | This is a report by a non-existing person          | 2026-02-12 16:39:05 | 2026-02-12 16:39:05 |
|        18 |         1 | 今日は営業活動を中心に行いました。                 | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        19 |         2 | 顧客との打ち合わせで新しい要望を確認しました。     | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        20 |         3 | 営業資料の改善点をまとめました。                   | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        21 |         4 | 新機能の開発を順調に進めています。                 | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        22 |         5 | コードレビューを実施し品質向上に努めました。       | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        23 |         6 | バグ修正を行い動作確認まで完了しました。           | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        24 |         7 | 開発チームで仕様調整のミーティングを行いました。   | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        25 |         8 | 経理処理を行い月次報告書を作成しました。           | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        26 |         9 | 採用候補者との面談を担当しました。                 | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
|        27 |        10 | 社内システムの改善点を調査し提案書を作成しました。 | 2026-02-12 23:31:36 | 2026-02-12 23:31:36 |
+-----------+-----------+----------------------------------------------------+---------------------+---------------------+
27 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                        | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@gizumo.jp             |          NULL |   20 |      1 | 2026-02-12 14:36:49 | 2026-02-12 14:36:49 |
|         2 | 田中ゆうこ     | tanaka@gizumo.jp             |          NULL |   25 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         3 | 福田だいすけ   | fukuda@gizumo.jp             |          NULL |   42 |      1 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         4 | 豊島はなこ     | toyoshima@gizumo.jp          |          NULL |   34 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         6 | 不思議沢みちこ | NULL                         |          NULL | NULL |   NULL | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|        10 | NoReportUser   | NULL                         |          NULL | NULL |   NULL | 2026-02-12 16:37:41 | 2026-02-12 16:37:41 |
|        11 | 佐藤太郎       | taro.sato@example.com        |             1 |   28 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        12 | 鈴木花子       | hanako.suzuki@example.com    |             1 |   32 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        13 | 田中健         | ken.tanaka@example.com       |             1 |   25 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        14 | 山田優         | yu.yamada@example.com        |             2 |   30 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        15 | 高橋美咲       | misaki.takahashi@example.com |             2 |   27 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        16 | 中村亮         | ryo.nakamura@example.com     |             2 |   35 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        17 | 小林愛         | ai.kobayashi@example.com     |             2 |   29 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        18 | 加藤誠         | makoto.kato@example.com      |             3 |   41 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        19 | 斎藤真由       | mayu.saito@example.com       |             4 |   26 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        20 | 大野翔         | sho.ohno@example.com         |             5 |   33 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
16 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE department_id = NULL;
Empty set (0.014 sec)

MariaDB [db_lesson]> SELECT * FROM people WHERE department_id IS NULL;
+-----------+----------------+---------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email               | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+---------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@gizumo.jp    |          NULL |   20 |      1 | 2026-02-12 14:36:49 | 2026-02-12 14:36:49 |
|         2 | 田中ゆうこ     | tanaka@gizumo.jp    |          NULL |   25 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         3 | 福田だいすけ   | fukuda@gizumo.jp    |          NULL |   42 |      1 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         4 | 豊島はなこ     | toyoshima@gizumo.jp |          NULL |   34 |      2 | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|         6 | 不思議沢みちこ | NULL                |          NULL | NULL |   NULL | 2026-02-12 14:41:45 | 2026-02-12 14:41:45 |
|        10 | NoReportUser   | NULL                |          NULL | NULL |   NULL | 2026-02-12 16:37:41 | 2026-02-12 16:37:41 |
+-----------+----------------+---------------------+---------------+------+--------+---------------------+---------------------+
6 rows in set (0.012 sec)

MariaDB [db_lesson]> UPDATE people
    -> SET department_id = 1
    -> WHERE department_id IS NULL;
Query OK, 6 rows affected (0.015 sec)
Rows matched: 6  Changed: 6  Warnings: 0

MariaDB [db_lesson]>
MariaDB [db_lesson]>
MariaDB [db_lesson]> SELECT * FROM people;
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
| person_id | name           | email                        | department_id | age  | gender | created_at          | updated_at          |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
|         1 | 鈴木たかし     | suzuki@gizumo.jp             |             1 |   20 |      1 | 2026-02-12 14:36:49 | 2026-02-12 23:45:56 |
|         2 | 田中ゆうこ     | tanaka@gizumo.jp             |             1 |   25 |      2 | 2026-02-12 14:41:45 | 2026-02-12 23:45:56 |
|         3 | 福田だいすけ   | fukuda@gizumo.jp             |             1 |   42 |      1 | 2026-02-12 14:41:45 | 2026-02-12 23:45:56 |
|         4 | 豊島はなこ     | toyoshima@gizumo.jp          |             1 |   34 |      2 | 2026-02-12 14:41:45 | 2026-02-12 23:45:56 |
|         6 | 不思議沢みちこ | NULL                         |             1 | NULL |   NULL | 2026-02-12 14:41:45 | 2026-02-12 23:45:56 |
|        10 | NoReportUser   | NULL                         |             1 | NULL |   NULL | 2026-02-12 16:37:41 | 2026-02-12 23:45:56 |
|        11 | 佐藤太郎       | taro.sato@example.com        |             1 |   28 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        12 | 鈴木花子       | hanako.suzuki@example.com    |             1 |   32 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        13 | 田中健         | ken.tanaka@example.com       |             1 |   25 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        14 | 山田優         | yu.yamada@example.com        |             2 |   30 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        15 | 高橋美咲       | misaki.takahashi@example.com |             2 |   27 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        16 | 中村亮         | ryo.nakamura@example.com     |             2 |   35 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        17 | 小林愛         | ai.kobayashi@example.com     |             2 |   29 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        18 | 加藤誠         | makoto.kato@example.com      |             3 |   41 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        19 | 斎藤真由       | mayu.saito@example.com       |             4 |   26 |      2 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
|        20 | 大野翔         | sho.ohno@example.com         |             5 |   33 |      1 | 2026-02-12 23:20:17 | 2026-02-12 23:20:17 |
+-----------+----------------+------------------------------+---------------+------+--------+---------------------+---------------------+
16 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;
+--------------+------+
| name         | age  |
+--------------+------+
| 福田だいすけ |   42 |
| 加藤誠       |   41 |
| 中村亮       |   35 |
| 大野翔       |   33 |
| 山田優       |   30 |
| 佐藤太郎     |   28 |
| 田中健       |   25 |
| 鈴木たかし   |   20 |
+--------------+------+
8 rows in set (0.012 sec)

MariaDB [db_lesson]> peopeleという名前のテーブルからdepartment_idカラムの値から➀レコードを取り出し、name,email,ageののカラムをっ表示する。またそれぞれのカラムは昇順で表示する
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'peopeleという名前のテーブルからdepartment_idカラムの値から...' at line 1
MariaDB [db_lesson]> SELECT name
    -> FROM people
    -> WHERE (gender = 2 AND age BETWEEN 20 AND 29)
    -> OR (gender = 1 AND age BETWEEN 40 AND 49);
+--------------+
| name         |
+--------------+
| 田中ゆうこ   |
| 福田だいすけ |
| 高橋美咲     |
| 小林愛       |
| 加藤誠       |
| 斎藤真由     |
+--------------+
6 rows in set (0.012 sec)

MariaDB [db_lesson]> SELECT name
    -> FROM people
    -> WHERE (gender = 2 AND age BETWEEN 20 AND 29)
    -> OR (gender = 1 AND age BETWEEN 40 AND 49);
+--------------+
| name         |
+--------------+
| 田中ゆうこ   |
| 福田だいすけ |
| 高橋美咲     |
| 小林愛       |
| 加藤誠       |
| 斎藤真由     |
+--------------+
6 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT name
    -> FROM people
    ->  WHERE (gender = 2 AND age BETWEEN 20 AND 29)
    ->  OR (gender = 1 AND age BETWEEN 40 AND 49);
+--------------+
| name         |
+--------------+
| 田中ゆうこ   |
| 福田だいすけ |
| 高橋美咲     |
| 小林愛       |
| 加藤誠       |
| 斎藤真由     |
+--------------+
6 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT name, age
    -> FROM people
    -> WHERE department_id = 1
    -> ORDER BY age ASC;
+----------------+------+
| name           | age  |
+----------------+------+
| 不思議沢みちこ | NULL |
| NoReportUser   | NULL |
| 鈴木たかし     |   20 |
| 田中ゆうこ     |   25 |
| 田中健         |   25 |
| 佐藤太郎       |   28 |
| 鈴木花子       |   32 |
| 豊島はなこ     |   34 |
| 福田だいすけ   |   42 |
+----------------+------+
9 rows in set (0.001 sec)

MariaDB [db_lesson]> SELECT AVG(age) AS average_age
    -> FROM people
    -> WHERE department_id = 2
    ->   AND gender = 2;
+-------------+
| average_age |
+-------------+
|     28.0000 |
+-------------+
1 row in set (0.007 sec)

MariaDB [db_lesson]> SELECT AVG(age) AS aberage_age
    -> FROM people
    -> WHERE department_id = 2
    -> AND gender = 2;
+-------------+
| aberage_age |
+-------------+
|     28.0000 |
+-------------+
1 row in set (0.001 sec)

MariaDB [db_lesson]> SELECT
    ->     p.name AS person_name,
    ->     d.name AS department_name,
    ->     r.content AS report_content
    -> FROM people AS p
    -> INNER JOIN departments AS d
    ->     ON p.department_id = d.department_id
    -> INNER JOIN reports AS r
    ->     ON p.person_id = r.person_id;
+----------------+-----------------+----------------------------------------------------+
| person_name    | department_name | report_content                                     |
+----------------+-----------------+----------------------------------------------------+
| 鈴木たかし     | 営業            | Report 1                                           |
| 鈴木たかし     | 営業            | Report 2                                           |
| 田中ゆうこ     | 営業            | Report 3                                           |
| 田中ゆうこ     | 営業            | Report 4                                           |
| 福田だいすけ   | 営業            | Report 5                                           |
| 福田だいすけ   | 営業            | Report 6                                           |
| 豊島はなこ     | 営業            | Report 7                                           |
| 豊島はなこ     | 営業            | Report 8                                           |
| 不思議沢みちこ | 営業            | Report 11                                          |
| 鈴木たかし     | 営業            | Report 1                                           |
| 田中ゆうこ     | 営業            | Report 2                                           |
| 福田だいすけ   | 営業            | Report 3                                           |
| 鈴木たかし     | 営業            | 今日は営業活動を中心に行いました。                 |
| 田中ゆうこ     | 営業            | 顧客との打ち合わせで新しい要望を確認しました。     |
| 福田だいすけ   | 営業            | 営業資料の改善点をまとめました。                   |
| 豊島はなこ     | 営業            | 新機能の開発を順調に進めています。                 |
| 不思議沢みちこ | 営業            | バグ修正を行い動作確認まで完了しました。           |
| NoReportUser   | 営業            | 社内システムの改善点を調査し提案書を作成しました。 |
+----------------+-----------------+----------------------------------------------------+
18 rows in set (0.014 sec)

MariaDB [db_lesson]> SELECT p.name
    -> FROM people AS p
    -> LEFT JOIN reports AS r
    ->   ON p.person_id = r.person_id
    -> WHERE r.person_id IS NULL;
+----------+
| name     |
+----------+
| 佐藤太郎 |
| 鈴木花子 |
| 田中健   |
| 山田優   |
| 高橋美咲 |
| 中村亮   |
| 小林愛   |
| 加藤誠   |
| 斎藤真由 |
| 大野翔   |
+----------+
10 rows in set (0.001 sec)

MariaDB [db_lesson]>