CREATE TABLE departments (
department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);





ALTER TABLE people ADD COLUMN department_id INT UNSIGNED NULL AFTER email;





INSERT INTO departments(name)
VALUE
('営業'), ('開発'), ('経理'), ('人事'), ('情報システム');






INSERT INTO people (name, email, age, gender, department_id)
VALUES
('佐藤太郎', 'taro.sato@example.com', 28, 1, 1),
('鈴木花子', 'hanako.suzuki@example.com', 32, 2, 1),
('田中健', 'ken.tanaka@example.com', 25, 1, 1),
('山田優', 'yu.yamada@example.com', 30, 1, 2),
('高橋美咲', 'misaki.takahashi@example.com', 27, 2, 2),
('中村亮', 'ryo.nakamura@example.com', 35, 1, 2),
('小林愛', 'ai.kobayashi@example.com', 29, 2, 2),
('加藤誠', 'makoto.kato@example.com', 41, 1, 3),
('斎藤真由', 'mayu.saito@example.com', 26, 2, 4),
('大野翔', 'sho.ohno@example.com', 33, 1, 5);





MariaDB [db_lesson]> INSERT INTO reports(person_id,content)
VALUES
(1,  'Daily report for user 1'),
(2,  'Progress update from user 2'),
(3,  'Tasks completed by user 3'),
(4,  'Summary of work by user 4'),
(6,  'Detailed report from user 6'),
(21, 'User 21 completed assignments'),
(22, 'User 22 handled client tasks'),
(23, 'User 23 reviewed documents'),
(24, 'User 24 attended meetings'),
(25, 'User 25 prepared materials');






UPDATE people
SET department_id = 1
WHERE department_id IS NULL;





SELECT name,age
FROM people
WHERE gender = 1
ORDER BY age DESC;




peopleテーブルから、department_idカラムが１のレコードを取得し、
name、email、ageカラムの値を取得する。
また、取得したdepartment_id=1の順序をcreated_at（レコードが作られた日時）昇順に並べ替えて表示する。 




