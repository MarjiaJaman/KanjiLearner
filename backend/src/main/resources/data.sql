-- display_order sets the order kanji are listed in. main_reading, when set, is the reading shown first
-- (the counting numbers いち, に, さん… rather than ひとつ, ふたつ, みっつ…).
INSERT INTO kanji (kanji_character, onyomi, kunyomi, english_meaning, jlpt_level, stroke_count, display_order, main_reading) VALUES
('日', 'ニチ, ジツ', 'ひ, か', 'day, sun', 'N5', 4, 1, NULL),
('月', 'ゲツ, ガツ', 'つき', 'month, moon', 'N5', 4, 2, NULL),
('火', 'カ', 'ひ', 'fire', 'N5', 4, 3, NULL),
('水', 'スイ', 'みず', 'water', 'N5', 4, 4, NULL),
('木', 'モク, ボク', 'き', 'tree, wood', 'N5', 4, 5, NULL),
('金', 'キン, コン', 'かね', 'gold, money', 'N5', 8, 6, NULL),
('土', 'ド, ト', 'つち', 'earth, soil', 'N5', 3, 7, NULL),
('山', 'サン', 'やま', 'mountain', 'N5', 3, 8, NULL),
('川', 'セン', 'かわ', 'river', 'N5', 3, 9, NULL),
('田', 'デン', 'た', 'rice field', 'N5', 5, 10, NULL),
('一', 'イチ', 'ひとつ', 'one', 'N5', 1, 11, 'いち'),
('二', 'ニ', 'ふたつ', 'two', 'N5', 2, 12, 'に'),
('三', 'サン', 'みっつ', 'three', 'N5', 3, 13, 'さん'),
('四', 'シ', 'よっつ, よん', 'four', 'N5', 5, 14, 'よん'),
('五', 'ゴ', 'いつつ', 'five', 'N5', 4, 15, 'ご'),
('六', 'ロク', 'むっつ', 'six', 'N5', 4, 16, 'ろく'),
('七', 'シチ', 'ななつ, なな', 'seven', 'N5', 2, 17, 'なな'),
('八', 'ハチ', 'やっつ', 'eight', 'N5', 2, 18, 'はち'),
('九', 'キュウ, ク', 'ここのつ', 'nine', 'N5', 2, 19, 'きゅう'),
('十', 'ジュウ', 'とお', 'ten', 'N5', 2, 20, 'じゅう'),
('百', 'ヒャク', '', 'hundred', 'N5', 6, 21, NULL),
('千', 'セン', 'ち', 'thousand', 'N5', 3, 22, 'せん'),
('万', 'マン, バン', '', 'ten thousand', 'N5', 3, 23, NULL),
('円', 'エン', 'まるい', 'yen, circle', 'N5', 4, 24, 'えん'),
('学', 'ガク', 'まなぶ', 'study, learning', 'N5', 8, 25, 'がく'),
('生', 'セイ, ショウ', 'いきる, うまれる, なま', 'life, birth, raw', 'N5', 5, 26, 'せい'),
('先', 'セン', 'さき', 'ahead, previous', 'N5', 6, 27, 'せん'),
('会', 'カイ', 'あう', 'meet, meeting', 'N5', 6, 28, 'かい'),
('社', 'シャ', 'やしろ', 'company, shrine', 'N5', 7, 29, 'しゃ'),
('員', 'イン', '', 'member', 'N5', 10, 30, NULL),
('医', 'イ', '', 'medicine, doctor', 'N5', 7, 31, NULL),
('本', 'ホン', 'もと', 'book, true', 'N5', 5, 32, 'ほん'),
('中', 'チュウ', 'なか', 'inside, middle', 'N5', 4, 33, NULL),
('国', 'コク', 'くに', 'country', 'N5', 8, 34, NULL),
('人', 'ジン, ニン', 'ひと', 'person', 'N5', 2, 35, NULL),
('者', 'シャ', 'もの', 'person (doer)', 'N5', 8, 36, 'しゃ'),
('今', 'コン', 'いま', 'now', 'N5', 4, 37, NULL),
('朝', 'チョウ', 'あさ', 'morning', 'N5', 12, 38, NULL),
('昼', 'チュウ', 'ひる', 'noon, daytime', 'N5', 9, 39, NULL),
('晩', 'バン', '', 'evening, night', 'N5', 12, 40, NULL),
('時', 'ジ', 'とき', 'time, hour', 'N5', 10, 41, 'じ'),
('分', 'フン, ブン', 'わかる, わける', 'minute, part, understand', 'N5', 4, 42, 'ふん'),
('半', 'ハン', '', 'half', 'N5', 5, 43, NULL),
('前', 'ゼン', 'まえ', 'before, front', 'N5', 9, 44, 'ぜん'),
('後', 'ゴ, コウ', 'あと, うしろ', 'after, behind', 'N5', 9, 45, 'ご'),
('午', 'ゴ', '', 'noon', 'N5', 4, 46, NULL),
('休', 'キュウ', 'やすむ', 'rest', 'N5', 6, 47, NULL),
('毎', 'マイ', '', 'every', 'N5', 6, 48, NULL),
('何', '', 'なに, なん', 'what', 'N5', 7, 49, NULL),
('行', 'コウ, ギョウ', 'いく, おこなう', 'go, conduct', 'N5', 6, 50, 'いく'),
('来', 'ライ', 'くる', 'come, next', 'N5', 7, 51, NULL),
('校', 'コウ', '', 'school', 'N5', 10, 52, NULL),
('週', 'シュウ', '', 'week', 'N5', 11, 53, NULL),
('去', 'キョ, コ', 'さる', 'past, leave', 'N5', 5, 54, 'きょ'),
('年', 'ネン', 'とし', 'year, age', 'N5', 6, 55, 'ねん'),
('駅', 'エキ', '', 'station', 'N5', 14, 56, NULL),
('電', 'デン', '', 'electricity', 'N5', 13, 57, NULL),
('車', 'シャ', 'くるま', 'car, vehicle', 'N5', 7, 58, NULL),
('自', 'ジ, シ', '', 'self', 'N5', 6, 59, NULL),
('転', 'テン', 'ころぶ', 'turn, fall down', 'N5', 11, 60, 'てん'),
('動', 'ドウ', 'うごく', 'move', 'N5', 11, 61, 'どう'),
('高', 'コウ', 'たかい', 'tall, expensive', 'N5', 10, 62, NULL),
('安', 'アン', 'やすい', 'cheap, safe', 'N5', 6, 63, NULL),
('大', 'ダイ, タイ', 'おおきい', 'big', 'N5', 3, 64, NULL),
('小', 'ショウ', 'こ, お, ちいさい', 'small', 'N5', 3, 65, 'ちいさい'),
('新', 'シン', 'あたらしい', 'new', 'N5', 13, 66, NULL),
('古', 'コ', 'ふるい', 'old', 'N5', 5, 67, NULL),
('青', 'セイ', 'あおい', 'blue', 'N5', 8, 68, NULL),
('白', 'ハク', 'しろい', 'white', 'N5', 5, 69, NULL),
('赤', 'セキ', 'あかい', 'red', 'N5', 7, 70, NULL),
('黒', 'コク', 'くろい', 'black', 'N5', 11, 71, NULL),
('上', 'ジョウ', 'うえ, あがる', 'up, above', 'N5', 3, 72, 'うえ'),
('下', 'カ, ゲ', 'した, さがる', 'down, below', 'N5', 3, 73, 'した'),
('父', 'フ', 'ちち', 'father', 'N5', 4, 74, NULL),
('母', 'ボ', 'はは', 'mother', 'N5', 5, 75, NULL),
('子', 'シ', 'こ', 'child', 'N5', 3, 76, NULL),
('手', 'シュ', 'て', 'hand', 'N5', 4, 77, NULL),
('好', 'コウ', 'すき', 'like', 'N5', 6, 78, NULL),
('主', 'シュ', 'ぬし, おも', 'main, master', 'N5', 5, 79, 'しゅ'),
('肉', 'ニク', '', 'meat', 'N5', 6, 80, NULL),
('魚', 'ギョ', 'さかな', 'fish', 'N5', 11, 81, NULL),
('食', 'ショク', 'たべる', 'eat, food', 'N5', 9, 82, NULL),
('飲', 'イン', 'のむ', 'drink', 'N5', 12, 83, NULL),
('物', 'ブツ, モツ', 'もの', 'thing', 'N5', 8, 84, NULL),
('近', 'キン', 'ちかい', 'near', 'N5', 7, 85, NULL),
('間', 'カン, ケン', 'あいだ, ま', 'between, time span', 'N5', 12, 86, 'かん'),
('右', 'ウ, ユウ', 'みぎ', 'right', 'N5', 5, 87, NULL),
('左', 'サ', 'ひだり', 'left', 'N5', 5, 88, NULL),
('外', 'ガイ', 'そと', 'outside', 'N5', 5, 89, NULL),
('男', 'ダン', 'おとこ', 'man', 'N5', 7, 90, NULL),
('女', 'ジョ', 'おんな', 'woman', 'N5', 3, 91, NULL),
('犬', 'ケン', 'いぬ', 'dog', 'N5', 4, 92, NULL),
('書', 'ショ', 'かく', 'write', 'N5', 10, 93, NULL),
('聞', 'ブン', 'きく', 'hear, ask', 'N5', 14, 94, NULL),
('読', 'ドク', 'よむ', 'read', 'N5', 14, 95, NULL),
('見', 'ケン', 'みる', 'see, look', 'N5', 7, 96, NULL),
('話', 'ワ', 'はなす, はなし', 'speak, story', 'N5', 13, 97, 'はなす'),
('買', 'バイ', 'かう', 'buy', 'N5', 12, 98, NULL),
('起', 'キ', 'おきる', 'get up', 'N5', 10, 99, NULL),
('帰', 'キ', 'かえる', 'return', 'N5', 10, 100, NULL),
('友', 'ユウ', 'とも', 'friend', 'N5', 4, 101, NULL),
('達', 'タツ', 'たち', 'plural (people), achieve', 'N5', 12, 102, NULL),
('茶', 'チャ, サ', '', 'tea', 'N5', 9, 103, NULL),
('酒', 'シュ', 'さけ', 'alcohol, sake', 'N5', 10, 104, NULL),
('写', 'シャ', 'うつす', 'copy, photograph', 'N5', 5, 105, 'しゃ'),
('真', 'シン', 'ま', 'true, pure', 'N5', 10, 106, 'しん'),
('紙', 'シ', 'かみ', 'paper', 'N5', 10, 107, NULL),
('映', 'エイ', 'うつる', 'reflect, film', 'N5', 9, 108, 'えい'),
('画', 'ガ, カク', '', 'picture, stroke', 'N5', 8, 109, NULL),
('店', 'テン', 'みせ', 'store, shop', 'N5', 8, 110, NULL),
('英', 'エイ', '', 'English, Britain', 'N5', 8, 111, NULL),
('語', 'ゴ', 'かたる', 'language, word', 'N5', 14, 112, 'ご')
AS new
ON DUPLICATE KEY UPDATE kunyomi = new.kunyomi, stroke_count = new.stroke_count, display_order = new.display_order,
    main_reading = new.main_reading;

-- One row per meaning, each with an example sentence that uses the kanji in that sense.
INSERT INTO kanji_meaning (kanji_id, sort_order, meaning, sentence, sentence_reading, sentence_translation)
SELECT k.id, v.sort_order, v.meaning, v.sentence, v.sentence_reading, v.sentence_translation
FROM (
    SELECT '日' AS kanji_character, 1 AS sort_order, 'day' AS meaning, '日曜日に友達と会います。' AS sentence, 'にちようびにともだちとあいます。' AS sentence_reading, 'I meet my friend on Sunday.' AS sentence_translation
    UNION ALL SELECT '日', 2, 'sun', '日が出ました。', 'ひがでました。', 'The sun came out.'
    UNION ALL SELECT '月', 1, 'month', '来月、日本へ行きます。', 'らいげつ、にほんへいきます。', 'I am going to Japan next month.'
    UNION ALL SELECT '月', 2, 'moon', '今夜は月がきれいです。', 'こんやはつきがきれいです。', 'The moon is beautiful tonight.'
    UNION ALL SELECT '火', 1, 'fire', '火を消してください。', 'ひをけしてください。', 'Please put out the fire.'
    UNION ALL SELECT '水', 1, 'water', '水を一杯ください。', 'みずをいっぱいください。', 'A glass of water, please.'
    UNION ALL SELECT '木', 1, 'tree', '公園に大きい木があります。', 'こうえんにおおきいきがあります。', 'There is a big tree in the park.'
    UNION ALL SELECT '木', 2, 'wood', 'この机は木でできています。', 'このつくえはきでできています。', 'This desk is made of wood.'
    UNION ALL SELECT '金', 1, 'gold', '金のネックレスを買いました。', 'きんのネックレスをかいました。', 'I bought a gold necklace.'
    UNION ALL SELECT '金', 2, 'money', 'お金がありません。', 'おかねがありません。', 'I have no money.'
    UNION ALL SELECT '土', 1, 'earth', '雨で土がぬれています。', 'あめでつちがぬれています。', 'The ground is wet from the rain.'
    UNION ALL SELECT '土', 2, 'soil', '花を植えるために土を買いました。', 'はなをうえるためにつちをかいました。', 'I bought soil to plant flowers.'
    UNION ALL SELECT '一', 1, 'one', 'りんごを一つ食べました。', 'りんごをひとつたべました。', 'I ate one apple.'
    UNION ALL SELECT '二', 1, 'two', '犬が二匹います。', 'いぬがにひきいます。', 'There are two dogs.'
    UNION ALL SELECT '三', 1, 'three', '三時に駅で会いましょう。', 'さんじにえきであいましょう。', 'Let''s meet at the station at three o''clock.'
    UNION ALL SELECT '山', 1, 'mountain', '週末に山へ行きます。', 'しゅうまつにやまへいきます。', 'I go to the mountains on weekends.'
    UNION ALL SELECT '川', 1, 'river', '川で魚を釣りました。', 'かわでさかなをつりました。', 'I caught a fish in the river.'
    UNION ALL SELECT '田', 1, 'rice field', 'この村には田が多いです。', 'このむらにはたがおおいです。', 'This village has many rice fields.'
    UNION ALL SELECT '四', 1, 'four', '猫が四匹います。', 'ねこがよんひきいます。', 'There are four cats.'
    UNION ALL SELECT '五', 1, 'five', '五時に家に帰ります。', 'ごじにいえにかえります。', 'I go home at five o''clock.'
    UNION ALL SELECT '六', 1, 'six', '毎朝六時に起きます。', 'まいあさろくじにおきます。', 'I get up at six every morning.'
    UNION ALL SELECT '七', 1, 'seven', '七時に晩ご飯を食べます。', 'しちじにばんごはんをたべます。', 'I eat dinner at seven o''clock.'
    UNION ALL SELECT '八', 1, 'eight', 'クラスに学生が八人います。', 'クラスにがくせいがはちにんいます。', 'There are eight students in the class.'
    UNION ALL SELECT '九', 1, 'nine', '授業は九時からです。', 'じゅぎょうはくじからです。', 'Class starts at nine o''clock.'
    UNION ALL SELECT '十', 1, 'ten', '十人でパーティーをしました。', 'じゅうにんでパーティーをしました。', 'Ten of us had a party.'
    UNION ALL SELECT '百', 1, 'hundred', 'この本は百ページあります。', 'このほんはひゃくページあります。', 'This book has a hundred pages.'
    UNION ALL SELECT '千', 1, 'thousand', 'チケットは千円です。', 'チケットはせんえんです。', 'The ticket is 1,000 yen.'
    UNION ALL SELECT '万', 1, 'ten thousand', 'このかばんは一万円です。', 'このかばんはいちまんえんです。', 'This bag is 10,000 yen.'
    UNION ALL SELECT '円', 1, 'yen', 'このペンは百円です。', 'このペンはひゃくえんです。', 'This pen is 100 yen.'
    UNION ALL SELECT '円', 2, 'circle', '紙に円をかいてください。', 'かみにえんをかいてください。', 'Please draw a circle on the paper.'
    UNION ALL SELECT '学', 1, 'study', '大学で日本語を学んでいます。', 'だいがくでにほんごをまなんでいます。', 'I am studying Japanese at university.'
    UNION ALL SELECT '学', 2, 'learning', '祖父は学のある人です。', 'そふはがくのあるひとです。', 'My grandfather is a man of learning.'
    UNION ALL SELECT '生', 1, 'life', '東京の生活は楽しいです。', 'とうきょうのせいかつはたのしいです。', 'Life in Tokyo is fun.'
    UNION ALL SELECT '生', 2, 'birth', '私は大阪で生まれました。', 'わたしはおおさかでうまれました。', 'I was born in Osaka.'
    UNION ALL SELECT '生', 3, 'raw', '生の魚を食べますか。', 'なまのさかなをたべますか。', 'Do you eat raw fish?'
    UNION ALL SELECT '先', 1, 'ahead', '先に行ってください。', 'さきにいってください。', 'Please go ahead.'
    UNION ALL SELECT '先', 2, 'previous', '先週、京都へ行きました。', 'せんしゅう、きょうとへいきました。', 'I went to Kyoto last week.'
    UNION ALL SELECT '会', 1, 'meet', '駅で友達に会います。', 'えきでともだちにあいます。', 'I am meeting my friend at the station.'
    UNION ALL SELECT '会', 2, 'meeting', '午後に会議があります。', 'ごごにかいぎがあります。', 'There is a meeting in the afternoon.'
    UNION ALL SELECT '社', 1, 'company', 'この会社は大きいです。', 'このかいしゃはおおきいです。', 'This company is big.'
    UNION ALL SELECT '社', 2, 'shrine', '山の上に小さい社があります。', 'やまのうえにちいさいやしろがあります。', 'There is a small shrine on top of the mountain.'
    UNION ALL SELECT '員', 1, 'member', '店員に道を聞きました。', 'てんいんにみちをききました。', 'I asked a store clerk for directions.'
    UNION ALL SELECT '医', 1, 'medicine', '姉は大学で医学を勉強しています。', 'あねはだいがくでいがくをべんきょうしています。', 'My older sister studies medicine at university.'
    UNION ALL SELECT '医', 2, 'doctor', '医者になりたいです。', 'いしゃになりたいです。', 'I want to become a doctor.'
    UNION ALL SELECT '本', 1, 'book', '図書館で本を借りました。', 'としょかんでほんをかりました。', 'I borrowed a book from the library.'
    UNION ALL SELECT '本', 2, 'true', '本当ですか。', 'ほんとうですか。', 'Is that true?'
    UNION ALL SELECT '中', 1, 'inside', 'かばんの中に本があります。', 'かばんのなかにほんがあります。', 'There is a book in the bag.'
    UNION ALL SELECT '中', 2, 'middle', '部屋の真ん中にテーブルがあります。', 'へやのまんなかにテーブルがあります。', 'There is a table in the middle of the room.'
    UNION ALL SELECT '国', 1, 'country', 'あなたの国はどこですか。', 'あなたのくにはどこですか。', 'Which country are you from?'
    UNION ALL SELECT '人', 1, 'person', 'あの人は先生です。', 'あのひとはせんせいです。', 'That person is a teacher.'
    UNION ALL SELECT '者', 1, 'person (doer)', '兄は医者です。', 'あにはいしゃです。', 'My older brother is a doctor.'
    UNION ALL SELECT '今', 1, 'now', '今、何時ですか。', 'いま、なんじですか。', 'What time is it now?'
    UNION ALL SELECT '朝', 1, 'morning', '朝は寒いです。', 'あさはさむいです。', 'It is cold in the morning.'
    UNION ALL SELECT '昼', 1, 'noon', '昼に駅で会いましょう。', 'ひるにえきであいましょう。', 'Let''s meet at the station at noon.'
    UNION ALL SELECT '昼', 2, 'daytime', '昼は暑いですが、夜は涼しいです。', 'ひるはあついですが、よるはすずしいです。', 'It is hot in the daytime but cool at night.'
    UNION ALL SELECT '晩', 1, 'evening', '晩ご飯は何ですか。', 'ばんごはんはなんですか。', 'What is for dinner?'
    UNION ALL SELECT '晩', 2, 'night', '今晩は早く寝ます。', 'こんばんははやくねます。', 'I will go to bed early tonight.'
    UNION ALL SELECT '時', 1, 'time', '子どもの時、北海道に住んでいました。', 'こどものとき、ほっかいどうにすんでいました。', 'I lived in Hokkaido when I was a child.'
    UNION ALL SELECT '時', 2, 'hour', '一日は二十四時間です。', 'いちにちはにじゅうよじかんです。', 'A day has twenty-four hours.'
    UNION ALL SELECT '分', 1, 'minute', '毎朝、二十分歩きます。', 'まいあさ、にじゅっぷんあるきます。', 'I walk for twenty minutes every morning.'
    UNION ALL SELECT '分', 2, 'part', 'ケーキを半分食べました。', 'ケーキをはんぶんたべました。', 'I ate half of the cake.'
    UNION ALL SELECT '分', 3, 'understand', '日本語が少し分かります。', 'にほんごがすこしわかります。', 'I understand a little Japanese.'
    UNION ALL SELECT '半', 1, 'half', '三時半に会いましょう。', 'さんじはんにあいましょう。', 'Let''s meet at half past three.'
    UNION ALL SELECT '前', 1, 'before', '寝る前に歯をみがきます。', 'ねるまえにはをみがきます。', 'I brush my teeth before going to bed.'
    UNION ALL SELECT '前', 2, 'front', '駅の前で待っています。', 'えきのまえでまっています。', 'I am waiting in front of the station.'
    UNION ALL SELECT '後', 1, 'after', '授業の後で図書館へ行きます。', 'じゅぎょうのあとでとしょかんへいきます。', 'I go to the library after class.'
    UNION ALL SELECT '後', 2, 'behind', '私の後ろに猫がいます。', 'わたしのうしろにねこがいます。', 'There is a cat behind me.'
    UNION ALL SELECT '午', 1, 'noon', '正午に会議が始まります。', 'しょうごにかいぎがはじまります。', 'The meeting starts at noon.'
    UNION ALL SELECT '休', 1, 'rest', '少し休みましょう。', 'すこしやすみましょう。', 'Let''s rest for a bit.'
    UNION ALL SELECT '毎', 1, 'every', '毎日日本語を勉強します。', 'まいにちにほんごをべんきょうします。', 'I study Japanese every day.'
    UNION ALL SELECT '何', 1, 'what', 'これは何ですか。', 'これはなんですか。', 'What is this?'
    UNION ALL SELECT '行', 1, 'go', '毎朝、会社へ行きます。', 'まいあさ、かいしゃへいきます。', 'I go to the office every morning.'
    UNION ALL SELECT '行', 2, 'conduct', '学校で試験を行います。', 'がっこうでしけんをおこないます。', 'The school is holding an exam.'
    UNION ALL SELECT '来', 1, 'come', '友達が家に来ました。', 'ともだちがいえにきました。', 'My friend came to my house.'
    UNION ALL SELECT '来', 2, 'next', '来年、日本へ行きます。', 'らいねん、にほんへいきます。', 'I am going to Japan next year.'
    UNION ALL SELECT '校', 1, 'school', '学校は八時に始まります。', 'がっこうははちじにはじまります。', 'School starts at eight o''clock.'
    UNION ALL SELECT '週', 1, 'week', '一週間に三回走ります。', 'いっしゅうかんにさんかいはしります。', 'I run three times a week.'
    UNION ALL SELECT '去', 1, 'past', '去年、結婚しました。', 'きょねん、けっこんしました。', 'I got married last year.'
    UNION ALL SELECT '去', 2, 'leave', '彼は町を去りました。', 'かれはまちをさりました。', 'He left the town.'
    UNION ALL SELECT '年', 1, 'year', '日本に三年住んでいます。', 'にほんにさんねんすんでいます。', 'I have lived in Japan for three years.'
    UNION ALL SELECT '年', 2, 'age', '年はいくつですか。', 'としはいくつですか。', 'How old are you?'
    UNION ALL SELECT '駅', 1, 'station', '駅はどこですか。', 'えきはどこですか。', 'Where is the station?'
    UNION ALL SELECT '電', 1, 'electricity', '電気をつけてください。', 'でんきをつけてください。', 'Please turn on the light.'
    UNION ALL SELECT '車', 1, 'car', '父は新しい車を買いました。', 'ちちはあたらしいくるまをかいました。', 'My father bought a new car.'
    UNION ALL SELECT '車', 2, 'vehicle', '電車で会社へ行きます。', 'でんしゃでかいしゃへいきます。', 'I go to work by train.'
    UNION ALL SELECT '自', 1, 'self', '自分の部屋を掃除します。', 'じぶんのへやをそうじします。', 'I clean my own room.'
    UNION ALL SELECT '転', 1, 'turn', '兄は運転が上手です。', 'あにはうんてんがじょうずです。', 'My older brother is good at driving.'
    UNION ALL SELECT '転', 2, 'fall down', '道で転びました。', 'みちでころびました。', 'I fell down on the street.'
    UNION ALL SELECT '動', 1, 'move', '車が動きません。', 'くるまがうごきません。', 'The car won''t move.'
    UNION ALL SELECT '高', 1, 'tall', 'あのビルは高いです。', 'あのビルはたかいです。', 'That building is tall.'
    UNION ALL SELECT '高', 2, 'expensive', 'このかばんは高いです。', 'このかばんはたかいです。', 'This bag is expensive.'
    UNION ALL SELECT '安', 1, 'cheap', 'この店の野菜は安いです。', 'このみせのやさいはやすいです。', 'The vegetables at this store are cheap.'
    UNION ALL SELECT '安', 2, 'safe', 'この町は安全です。', 'このまちはあんぜんです。', 'This town is safe.'
    UNION ALL SELECT '大', 1, 'big', 'この犬は大きいです。', 'このいぬはおおきいです。', 'This dog is big.'
    UNION ALL SELECT '小', 1, 'small', '小さい猫が好きです。', 'ちいさいねこがすきです。', 'I like small cats.'
    UNION ALL SELECT '新', 1, 'new', '新しいパソコンがほしいです。', 'あたらしいパソコンがほしいです。', 'I want a new computer.'
    UNION ALL SELECT '古', 1, 'old', 'この町には古いお寺があります。', 'このまちにはふるいおてらがあります。', 'There is an old temple in this town.'
    UNION ALL SELECT '青', 1, 'blue', '今日は空が青いです。', 'きょうはそらがあおいです。', 'The sky is blue today.'
    UNION ALL SELECT '白', 1, 'white', '白い猫を飼っています。', 'しろいねこをかっています。', 'I have a white cat.'
    UNION ALL SELECT '赤', 1, 'red', '赤いりんごを買いました。', 'あかいりんごをかいました。', 'I bought red apples.'
    UNION ALL SELECT '黒', 1, 'black', '黒いかばんを持っています。', 'くろいかばんをもっています。', 'I have a black bag.'
    UNION ALL SELECT '上', 1, 'up', '階段を上がってください。', 'かいだんをあがってください。', 'Please go up the stairs.'
    UNION ALL SELECT '上', 2, 'above', '机の上に本があります。', 'つくえのうえにほんがあります。', 'There is a book on the desk.'
    UNION ALL SELECT '下', 1, 'down', '熱が下がりました。', 'ねつがさがりました。', 'My fever went down.'
    UNION ALL SELECT '下', 2, 'below', '机の下に猫がいます。', 'つくえのしたにねこがいます。', 'There is a cat under the desk.'
    UNION ALL SELECT '父', 1, 'father', '父は銀行で働いています。', 'ちちはぎんこうではたらいています。', 'My father works at a bank.'
    UNION ALL SELECT '母', 1, 'mother', '母は先生です。', 'はははせんせいです。', 'My mother is a teacher.'
    UNION ALL SELECT '子', 1, 'child', '子どもたちが公園で遊んでいます。', 'こどもたちがこうえんであそんでいます。', 'The children are playing in the park.'
    UNION ALL SELECT '手', 1, 'hand', '手を洗ってください。', 'てをあらってください。', 'Please wash your hands.'
    UNION ALL SELECT '好', 1, 'like', '私は猫が好きです。', 'わたしはねこがすきです。', 'I like cats.'
    UNION ALL SELECT '主', 1, 'main', '主な仕事は何ですか。', 'おもなしごとはなんですか。', 'What is your main job?'
    UNION ALL SELECT '主', 2, 'master', '主人は今、出かけています。', 'しゅじんはいま、でかけています。', 'My husband is out right now.'
    UNION ALL SELECT '肉', 1, 'meat', '肉と野菜を買いました。', 'にくとやさいをかいました。', 'I bought meat and vegetables.'
    UNION ALL SELECT '魚', 1, 'fish', '毎週、魚を食べます。', 'まいしゅう、さかなをたべます。', 'I eat fish every week.'
    UNION ALL SELECT '食', 1, 'eat', '朝ご飯を食べましたか。', 'あさごはんをたべましたか。', 'Did you eat breakfast?'
    UNION ALL SELECT '食', 2, 'food', '日本の食べ物が好きです。', 'にほんのたべものがすきです。', 'I like Japanese food.'
    UNION ALL SELECT '飲', 1, 'drink', '毎朝、牛乳を飲みます。', 'まいあさ、ぎゅうにゅうをのみます。', 'I drink milk every morning.'
    UNION ALL SELECT '物', 1, 'thing', '机の上に物を置かないでください。', 'つくえのうえにものをおかないでください。', 'Please don''t put things on the desk.'
    UNION ALL SELECT '近', 1, 'near', '駅は家から近いです。', 'えきはいえからちかいです。', 'The station is close to my house.'
    UNION ALL SELECT '間', 1, 'between', '銀行と郵便局の間に本屋があります。', 'ぎんこうとゆうびんきょくのあいだにほんやがあります。', 'There is a bookstore between the bank and the post office.'
    UNION ALL SELECT '間', 2, 'time span', '二時間待ちました。', 'にじかんまちました。', 'I waited for two hours.'
    UNION ALL SELECT '右', 1, 'right', '右に曲がってください。', 'みぎにまがってください。', 'Please turn right.'
    UNION ALL SELECT '左', 1, 'left', '銀行は左にあります。', 'ぎんこうはひだりにあります。', 'The bank is on the left.'
    UNION ALL SELECT '外', 1, 'outside', '外は寒いです。', 'そとはさむいです。', 'It is cold outside.'
    UNION ALL SELECT '男', 1, 'man', '男の人が三人います。', 'おとこのひとがさんにんいます。', 'There are three men.'
    UNION ALL SELECT '女', 1, 'woman', 'あの女の人は私の母です。', 'あのおんなのひとはわたしのははです。', 'That woman is my mother.'
    UNION ALL SELECT '犬', 1, 'dog', '犬と散歩します。', 'いぬとさんぽします。', 'I go for walks with my dog.'
    UNION ALL SELECT '書', 1, 'write', '名前を書いてください。', 'なまえをかいてください。', 'Please write your name.'
    UNION ALL SELECT '聞', 1, 'hear', '毎晩、音楽を聞きます。', 'まいばん、おんがくをききます。', 'I listen to music every night.'
    UNION ALL SELECT '聞', 2, 'ask', '駅員に時間を聞きました。', 'えきいんにじかんをききました。', 'I asked the station staff for the time.'
    UNION ALL SELECT '読', 1, 'read', '寝る前に本を読みます。', 'ねるまえにほんをよみます。', 'I read a book before bed.'
    UNION ALL SELECT '見', 1, 'see', '毎晩テレビを見ます。', 'まいばんテレビをみます。', 'I watch TV every night.'
    UNION ALL SELECT '見', 2, 'look', 'こちらを見てください。', 'こちらをみてください。', 'Please look this way.'
    UNION ALL SELECT '話', 1, 'speak', '日本語を話せますか。', 'にほんごをはなせますか。', 'Can you speak Japanese?'
    UNION ALL SELECT '話', 2, 'story', '祖母の話はいつも面白いです。', 'そぼのはなしはいつもおもしろいです。', 'My grandmother''s stories are always interesting.'
    UNION ALL SELECT '買', 1, 'buy', 'スーパーで牛乳を買いました。', 'スーパーでぎゅうにゅうをかいました。', 'I bought milk at the supermarket.'
    UNION ALL SELECT '起', 1, 'get up', '明日は早く起きます。', 'あしたははやくおきます。', 'I will get up early tomorrow.'
    UNION ALL SELECT '帰', 1, 'return', '何時に家に帰りますか。', 'なんじにいえにかえりますか。', 'What time do you go home?'
    UNION ALL SELECT '友', 1, 'friend', '友達と映画を見ました。', 'ともだちとえいがをみました。', 'I watched a movie with my friend.'
    UNION ALL SELECT '達', 1, 'plural (people)', '私達は学生です。', 'わたしたちはがくせいです。', 'We are students.'
    UNION ALL SELECT '達', 2, 'achieve', '目標を達成しました。', 'もくひょうをたっせいしました。', 'I achieved my goal.'
    UNION ALL SELECT '茶', 1, 'tea', 'お茶を飲みませんか。', 'おちゃをのみませんか。', 'Would you like some tea?'
    UNION ALL SELECT '酒', 1, 'alcohol', '私はお酒を飲みません。', 'わたしはおさけをのみません。', 'I don''t drink alcohol.'
    UNION ALL SELECT '酒', 2, 'sake', 'この酒は新潟で作られました。', 'このさけはにいがたでつくられました。', 'This sake was made in Niigata.'
    UNION ALL SELECT '写', 1, 'copy', '黒板の字をノートに写しました。', 'こくばんのじをノートにうつしました。', 'I copied the words on the blackboard into my notebook.'
    UNION ALL SELECT '写', 2, 'photograph', '写真を撮りましょう。', 'しゃしんをとりましょう。', 'Let''s take a picture.'
    UNION ALL SELECT '真', 1, 'true', '彼は真実を話しました。', 'かれはしんじつをはなしました。', 'He told the truth.'
    UNION ALL SELECT '真', 2, 'pure', '雪で庭が真っ白です。', 'ゆきでにわがまっしろです。', 'The garden is pure white with snow.'
    UNION ALL SELECT '紙', 1, 'paper', '紙とペンをください。', 'かみとペンをください。', 'Paper and a pen, please.'
    UNION ALL SELECT '映', 1, 'reflect', '湖に山が映っています。', 'みずうみにやまがうつっています。', 'The mountain is reflected in the lake.'
    UNION ALL SELECT '映', 2, 'film', '週末に映画を見ました。', 'しゅうまつにえいがをみました。', 'I watched a movie on the weekend.'
    UNION ALL SELECT '画', 1, 'picture', '漫画を読むのが好きです。', 'まんがをよむのがすきです。', 'I like reading manga.'
    UNION ALL SELECT '画', 2, 'stroke', 'この漢字は何画ですか。', 'このかんじはなんかくですか。', 'How many strokes does this kanji have?'
    UNION ALL SELECT '店', 1, 'store', 'この店は九時に開きます。', 'このみせはくじにあきます。', 'This store opens at nine.'
    UNION ALL SELECT '英', 1, 'English', '英語を話せますか。', 'えいごをはなせますか。', 'Can you speak English?'
    UNION ALL SELECT '英', 2, 'Britain', '姉は英国に住んでいます。', 'あねはえいこくにすんでいます。', 'My older sister lives in the U.K.'
    UNION ALL SELECT '語', 1, 'language', '何語を話しますか。', 'なにごをはなしますか。', 'What language do you speak?'
    UNION ALL SELECT '語', 2, 'word', 'この単語の意味が分かりません。', 'このたんごのいみがわかりません。', 'I don''t know the meaning of this word.'
) AS v
JOIN kanji k ON k.kanji_character = v.kanji_character
ON DUPLICATE KEY UPDATE
    meaning = v.meaning,
    sentence = v.sentence,
    sentence_reading = v.sentence_reading,
    sentence_translation = v.sentence_translation;

-- One row per reading (kun'yomi first, then on'yomi, all in hiragana), each with a word and an example sentence that use it.
INSERT INTO kanji_reading (kanji_id, sort_order, reading, word, word_reading, word_meaning, sentence, sentence_reading, sentence_translation)
SELECT k.id, v.sort_order, v.reading, v.word, v.word_reading, v.word_meaning, v.sentence, v.sentence_reading, v.sentence_translation
FROM (
    SELECT '日' AS kanji_character, 1 AS sort_order, 'ひ' AS reading, '母の日' AS word, 'ははのひ' AS word_reading, 'Mother''s Day' AS word_meaning, '母の日にプレゼントをあげました。' AS sentence, 'ははのひにプレゼントをあげました。' AS sentence_reading, 'I gave a present on Mother''s Day.' AS sentence_translation
    UNION ALL SELECT '日', 2, 'か', '三日', 'みっか', 'the 3rd (of the month)', '五月三日に海へ行きます。', 'ごがつみっかにうみへいきます。', 'I am going to the sea on May 3rd.'
    UNION ALL SELECT '日', 3, 'にち', '毎日', 'まいにち', 'every day', '毎日コーヒーを飲みます。', 'まいにちコーヒーをのみます。', 'I drink coffee every day.'
    UNION ALL SELECT '日', 4, 'じつ', '本日', 'ほんじつ', 'today (formal)', '本日は休みです。', 'ほんじつはやすみです。', 'We are closed today.'
    UNION ALL SELECT '月', 1, 'つき', '月', 'つき', 'moon', '窓から月が見えます。', 'まどからつきがみえます。', 'I can see the moon from the window.'
    UNION ALL SELECT '月', 2, 'げつ', '月曜日', 'げつようび', 'Monday', '月曜日に病院へ行きます。', 'げつようびにびょういんへいきます。', 'I am going to the hospital on Monday.'
    UNION ALL SELECT '月', 3, 'がつ', '一月', 'いちがつ', 'January', '一月はとても寒いです。', 'いちがつはとてもさむいです。', 'January is very cold.'
    UNION ALL SELECT '火', 1, 'ひ', '火', 'ひ', 'fire', '火に気をつけてください。', 'ひにきをつけてください。', 'Please be careful with fire.'
    UNION ALL SELECT '火', 2, 'か', '火曜日', 'かようび', 'Tuesday', '火曜日に友達と映画を見ます。', 'かようびにともだちとえいがをみます。', 'I am watching a movie with my friend on Tuesday.'
    UNION ALL SELECT '水', 1, 'みず', '水', 'みず', 'water', '毎朝、水を飲みます。', 'まいあさ、みずをのみます。', 'I drink water every morning.'
    UNION ALL SELECT '水', 2, 'すい', '水曜日', 'すいようび', 'Wednesday', '水曜日は忙しいです。', 'すいようびはいそがしいです。', 'I am busy on Wednesday.'
    UNION ALL SELECT '木', 1, 'き', '木', 'き', 'tree', '庭に木を植えました。', 'にわにきをうえました。', 'I planted a tree in the garden.'
    UNION ALL SELECT '木', 2, 'もく', '木曜日', 'もくようび', 'Thursday', '木曜日にテストがあります。', 'もくようびにテストがあります。', 'There is a test on Thursday.'
    UNION ALL SELECT '木', 3, 'ぼく', '大木', 'たいぼく', 'huge tree', '山に大木があります。', 'やまにたいぼくがあります。', 'There is a huge tree on the mountain.'
    UNION ALL SELECT '金', 1, 'かね', 'お金', 'おかね', 'money', '銀行でお金をおろしました。', 'ぎんこうでおかねをおろしました。', 'I withdrew money at the bank.'
    UNION ALL SELECT '金', 2, 'きん', '金曜日', 'きんようび', 'Friday', '金曜日の夜は外で食べます。', 'きんようびのよるはそとでたべます。', 'I eat out on Friday nights.'
    UNION ALL SELECT '金', 3, 'こん', '金堂', 'こんどう', 'main hall of a temple', 'このお寺の金堂は古いです。', 'このおてらのこんどうはふるいです。', 'The main hall of this temple is old.'
    UNION ALL SELECT '土', 1, 'つち', '土', 'つち', 'soil, dirt', '子どもが土で遊んでいます。', 'こどもがつちであそんでいます。', 'The child is playing in the dirt.'
    UNION ALL SELECT '土', 2, 'ど', '土曜日', 'どようび', 'Saturday', '土曜日は家で休みます。', 'どようびはいえでやすみます。', 'I rest at home on Saturdays.'
    UNION ALL SELECT '土', 3, 'と', '土地', 'とち', 'land', 'この土地はとても広いです。', 'このとちはとてもひろいです。', 'This land is very large.'
    UNION ALL SELECT '一', 2, 'ひとつ', '一つ', 'ひとつ', 'one (thing)', 'ケーキを一つください。', 'ケーキをひとつください。', 'One piece of cake, please.'
    UNION ALL SELECT '一', 1, 'いち', '一番', 'いちばん', 'number one, the most', '夏が一番好きです。', 'なつがいちばんすきです。', 'I like summer the best.'
    UNION ALL SELECT '二', 2, 'ふたつ', '二つ', 'ふたつ', 'two (things)', '卵を二つ買いました。', 'たまごをふたつかいました。', 'I bought two eggs.'
    UNION ALL SELECT '二', 1, 'に', '二階', 'にかい', 'second floor', '私の部屋は二階です。', 'わたしのへやはにかいです。', 'My room is on the second floor.'
    UNION ALL SELECT '三', 2, 'みっつ', '三つ', 'みっつ', 'three (things)', '質問が三つあります。', 'しつもんがみっつあります。', 'I have three questions.'
    UNION ALL SELECT '三', 1, 'さん', '三人', 'さんにん', 'three people', '兄弟は三人です。', 'きょうだいはさんにんです。', 'There are three of us siblings.'
    UNION ALL SELECT '山', 1, 'やま', '山', 'やま', 'mountain', 'あの山はとても高いです。', 'あのやまはとてもたかいです。', 'That mountain is very tall.'
    UNION ALL SELECT '山', 2, 'さん', '富士山', 'ふじさん', 'Mt. Fuji', '富士山に登りたいです。', 'ふじさんにのぼりたいです。', 'I want to climb Mt. Fuji.'
    UNION ALL SELECT '川', 1, 'かわ', '川', 'かわ', 'river', 'この川はきれいです。', 'このかわはきれいです。', 'This river is clean.'
    UNION ALL SELECT '川', 2, 'せん', '川柳', 'せんりゅう', 'senryu (a short comic poem)', '祖母は川柳を書きます。', 'そぼはせんりゅうをかきます。', 'My grandmother writes senryu poems.'
    UNION ALL SELECT '田', 1, 'た', '田んぼ', 'たんぼ', 'rice paddy', '夏の田んぼはとてもきれいです。', 'なつのたんぼはとてもきれいです。', 'Rice paddies are beautiful in summer.'
    UNION ALL SELECT '田', 2, 'でん', '水田', 'すいでん', 'paddy field', '水田に鳥がいます。', 'すいでんにとりがいます。', 'There are birds in the paddy field.'
    UNION ALL SELECT '四', 2, 'よっつ', '四つ', 'よっつ', 'four (things)', 'りんごを四つ買いました。', 'りんごをよっつかいました。', 'I bought four apples.'
    UNION ALL SELECT '四', 1, 'よん', '四', 'よん', 'four', '四ページを開いてください。', 'よんページをひらいてください。', 'Please open to page four.'
    UNION ALL SELECT '四', 3, 'し', '四月', 'しがつ', 'April', '四月に学校が始まります。', 'しがつにがっこうがはじまります。', 'School starts in April.'
    UNION ALL SELECT '五', 2, 'いつつ', '五つ', 'いつつ', 'five (things)', '箱が五つあります。', 'はこがいつつあります。', 'There are five boxes.'
    UNION ALL SELECT '五', 1, 'ご', '五月', 'ごがつ', 'May', '五月は暖かいです。', 'ごがつはあたたかいです。', 'May is warm.'
    UNION ALL SELECT '六', 2, 'むっつ', '六つ', 'むっつ', 'six (things)', '卵を六つ使います。', 'たまごをむっつつかいます。', 'I use six eggs.'
    UNION ALL SELECT '六', 1, 'ろく', '六月', 'ろくがつ', 'June', '六月は雨が多いです。', 'ろくがつはあめがおおいです。', 'It rains a lot in June.'
    UNION ALL SELECT '七', 2, 'ななつ', '七つ', 'ななつ', 'seven (things)', '虹には色が七つあります。', 'にじにはいろがななつあります。', 'A rainbow has seven colors.'
    UNION ALL SELECT '七', 1, 'なな', '七十', 'ななじゅう', 'seventy', '祖父は七十歳です。', 'そふはななじゅっさいです。', 'My grandfather is seventy years old.'
    UNION ALL SELECT '七', 3, 'しち', '七月', 'しちがつ', 'July', '七月に夏休みが始まります。', 'しちがつになつやすみがはじまります。', 'Summer vacation starts in July.'
    UNION ALL SELECT '八', 2, 'やっつ', '八つ', 'やっつ', 'eight (things)', 'みかんを八つもらいました。', 'みかんをやっつもらいました。', 'I got eight mandarin oranges.'
    UNION ALL SELECT '八', 1, 'はち', '八月', 'はちがつ', 'August', '八月はとても暑いです。', 'はちがつはとてもあついです。', 'August is very hot.'
    UNION ALL SELECT '九', 2, 'ここのつ', '九つ', 'ここのつ', 'nine (things)', 'お皿が九つあります。', 'おさらがここのつあります。', 'There are nine plates.'
    UNION ALL SELECT '九', 1, 'きゅう', '九番', 'きゅうばん', 'number nine', '九番のバスに乗ります。', 'きゅうばんのバスにのります。', 'I take bus number nine.'
    UNION ALL SELECT '九', 3, 'く', '九月', 'くがつ', 'September', '九月に旅行します。', 'くがつにりょこうします。', 'I am traveling in September.'
    UNION ALL SELECT '十', 2, 'とお', '十日', 'とおか', 'the 10th (of the month)', '十日に給料をもらいます。', 'とおかにきゅうりょうをもらいます。', 'I get paid on the 10th.'
    UNION ALL SELECT '十', 1, 'じゅう', '十月', 'じゅうがつ', 'October', '十月は涼しいです。', 'じゅうがつはすずしいです。', 'October is cool.'
    UNION ALL SELECT '百', 1, 'ひゃく', '百円', 'ひゃくえん', '100 yen', '百円ショップで買いました。', 'ひゃくえんショップでかいました。', 'I bought it at a 100-yen shop.'
    UNION ALL SELECT '千', 1, 'せん', '千人', 'せんにん', 'a thousand people', 'コンサートに千人来ました。', 'コンサートにせんにんきました。', 'A thousand people came to the concert.'
    UNION ALL SELECT '千', 2, 'ち', '千葉', 'ちば', 'Chiba (a prefecture)', '千葉に住んでいます。', 'ちばにすんでいます。', 'I live in Chiba.'
    UNION ALL SELECT '万', 1, 'まん', '一万人', 'いちまんにん', 'ten thousand people', 'この町には一万人が住んでいます。', 'このまちにはいちまんにんがすんでいます。', 'Ten thousand people live in this town.'
    UNION ALL SELECT '万', 2, 'ばん', '万歳', 'ばんざい', 'hurray, banzai', 'みんなで万歳をしました。', 'みんなでばんざいをしました。', 'Everyone cheered "banzai!"'
    UNION ALL SELECT '円', 1, 'えん', '千円', 'せんえん', '1,000 yen', '財布に千円あります。', 'さいふにせんえんあります。', 'I have 1,000 yen in my wallet.'
    UNION ALL SELECT '円', 2, 'まるい', '円い', 'まるい', 'round', '円いテーブルを買いました。', 'まるいテーブルをかいました。', 'I bought a round table.'
    UNION ALL SELECT '学', 1, 'がく', '学生', 'がくせい', 'student', '私は学生です。', 'わたしはがくせいです。', 'I am a student.'
    UNION ALL SELECT '学', 2, 'まなぶ', '学ぶ', 'まなぶ', 'to learn', '毎日、新しい言葉を学びます。', 'まいにち、あたらしいことばをまなびます。', 'I learn new words every day.'
    UNION ALL SELECT '生', 1, 'せい', '先生', 'せんせい', 'teacher', 'あの人は私の先生です。', 'あのひとはわたしのせんせいです。', 'That person is my teacher.'
    UNION ALL SELECT '生', 2, 'いきる', '生きる', 'いきる', 'to live', '魚は水の中で生きています。', 'さかなはみずのなかでいきています。', 'Fish live in water.'
    UNION ALL SELECT '生', 3, 'うまれる', '生まれる', 'うまれる', 'to be born', '赤ちゃんが生まれました。', 'あかちゃんがうまれました。', 'A baby was born.'
    UNION ALL SELECT '生', 4, 'なま', '生ビール', 'なまビール', 'draft beer', '生ビールを一つください。', 'なまビールをひとつください。', 'One draft beer, please.'
    UNION ALL SELECT '生', 5, 'しょう', '一生', 'いっしょう', 'whole life', '一生忘れません。', 'いっしょうわすれません。', 'I will never forget it as long as I live.'
    UNION ALL SELECT '先', 1, 'せん', '先生', 'せんせい', 'teacher', '先生に質問しました。', 'せんせいにしつもんしました。', 'I asked the teacher a question.'
    UNION ALL SELECT '先', 2, 'さき', '先', 'さき', 'ahead', '駅はこの先です。', 'えきはこのさきです。', 'The station is just ahead.'
    UNION ALL SELECT '会', 2, 'あう', '会う', 'あう', 'to meet', 'また会いましょう。', 'またあいましょう。', 'Let''s meet again.'
    UNION ALL SELECT '会', 1, 'かい', '会社', 'かいしゃ', 'company', '父は会社で働いています。', 'ちちはかいしゃではたらいています。', 'My father works at a company.'
    UNION ALL SELECT '社', 1, 'しゃ', '社長', 'しゃちょう', 'company president', '社長は今、会議中です。', 'しゃちょうはいま、かいぎちゅうです。', 'The company president is in a meeting now.'
    UNION ALL SELECT '社', 2, 'やしろ', '社', 'やしろ', 'shrine', '森の中に古い社があります。', 'もりのなかにふるいやしろがあります。', 'There is an old shrine in the forest.'
    UNION ALL SELECT '員', 1, 'いん', '会社員', 'かいしゃいん', 'office worker', '兄は会社員です。', 'あにはかいしゃいんです。', 'My older brother is an office worker.'
    UNION ALL SELECT '医', 1, 'い', '歯医者', 'はいしゃ', 'dentist', '明日、歯医者に行きます。', 'あした、はいしゃにいきます。', 'I am going to the dentist tomorrow.'
    UNION ALL SELECT '本', 1, 'ほん', '日本', 'にほん', 'Japan', '日本に住んでいます。', 'にほんにすんでいます。', 'I live in Japan.'
    UNION ALL SELECT '本', 2, 'もと', '山本', 'やまもと', 'Yamamoto (a surname)', '山本さんは医者です。', 'やまもとさんはいしゃです。', 'Mr. Yamamoto is a doctor.'
    UNION ALL SELECT '中', 1, 'なか', '中', 'なか', 'inside', '家の中は暖かいです。', 'いえのなかはあたたかいです。', 'It is warm inside the house.'
    UNION ALL SELECT '中', 2, 'ちゅう', '中国', 'ちゅうごく', 'China', '中国へ旅行します。', 'ちゅうごくへりょこうします。', 'I am traveling to China.'
    UNION ALL SELECT '国', 1, 'くに', '国', 'くに', 'country, home country', '国の家族に電話しました。', 'くにのかぞくにでんわしました。', 'I called my family back home.'
    UNION ALL SELECT '国', 2, 'こく', '外国', 'がいこく', 'foreign country', '外国に行ったことがありますか。', 'がいこくにいったことがありますか。', 'Have you ever been abroad?'
    UNION ALL SELECT '人', 1, 'ひと', '人', 'ひと', 'person, people', '駅に人がたくさんいます。', 'えきにひとがたくさんいます。', 'There are many people at the station.'
    UNION ALL SELECT '人', 2, 'じん', 'アメリカ人', 'アメリカじん', 'an American', '彼はアメリカ人です。', 'かれはアメリカじんです。', 'He is American.'
    UNION ALL SELECT '人', 3, 'にん', '何人', 'なんにん', 'how many people', '家族は何人ですか。', 'かぞくはなんにんですか。', 'How many people are in your family?'
    UNION ALL SELECT '者', 1, 'しゃ', '記者', 'きしゃ', 'reporter', '姉は新聞の記者です。', 'あねはしんぶんのきしゃです。', 'My older sister is a newspaper reporter.'
    UNION ALL SELECT '者', 2, 'もの', '若者', 'わかもの', 'young people', 'この町には若者が多いです。', 'このまちにはわかものがおおいです。', 'There are many young people in this town.'
    UNION ALL SELECT '今', 1, 'いま', '今', 'いま', 'now', '今から出かけます。', 'いまからでかけます。', 'I am going out now.'
    UNION ALL SELECT '今', 2, 'こん', '今週', 'こんしゅう', 'this week', '今週は忙しいです。', 'こんしゅうはいそがしいです。', 'I am busy this week.'
    UNION ALL SELECT '朝', 1, 'あさ', '朝ご飯', 'あさごはん', 'breakfast', '朝ご飯にパンを食べます。', 'あさごはんにパンをたべます。', 'I eat bread for breakfast.'
    UNION ALL SELECT '朝', 2, 'ちょう', '朝食', 'ちょうしょく', 'breakfast (formal)', '朝食は七時からです。', 'ちょうしょくはしちじからです。', 'Breakfast is served from seven o''clock.'
    UNION ALL SELECT '昼', 1, 'ひる', '昼ご飯', 'ひるごはん', 'lunch', '昼ご飯を一緒に食べませんか。', 'ひるごはんをいっしょにたべませんか。', 'Would you like to have lunch together?'
    UNION ALL SELECT '昼', 2, 'ちゅう', '昼食', 'ちゅうしょく', 'lunch (formal)', '昼食は会社で食べます。', 'ちゅうしょくはかいしゃでたべます。', 'I eat lunch at the office.'
    UNION ALL SELECT '晩', 1, 'ばん', '毎晩', 'まいばん', 'every night', '毎晩、日記を書きます。', 'まいばん、にっきをかきます。', 'I write in my diary every night.'
    UNION ALL SELECT '時', 1, 'じ', '三時', 'さんじ', 'three o''clock', '三時におやつを食べます。', 'さんじにおやつをたべます。', 'I have a snack at three o''clock.'
    UNION ALL SELECT '時', 2, 'とき', '時', 'とき', 'time, when', '暇な時、音楽を聞きます。', 'ひまなとき、おんがくをききます。', 'I listen to music when I have free time.'
    UNION ALL SELECT '分', 1, 'ふん', '五分', 'ごふん', 'five minutes', '五分待ってください。', 'ごふんまってください。', 'Please wait five minutes.'
    UNION ALL SELECT '分', 2, 'わかる', '分かる', 'わかる', 'to understand', '意味が分かりません。', 'いみがわかりません。', 'I don''t understand the meaning.'
    UNION ALL SELECT '分', 3, 'わける', '分ける', 'わける', 'to divide', 'ピザを三つに分けました。', 'ピザをみっつにわけました。', 'I divided the pizza into three.'
    UNION ALL SELECT '分', 4, 'ぶん', '自分', 'じぶん', 'oneself', '自分で料理を作ります。', 'じぶんでりょうりをつくります。', 'I cook for myself.'
    UNION ALL SELECT '半', 1, 'はん', '半分', 'はんぶん', 'half', 'りんごを半分あげます。', 'りんごをはんぶんあげます。', 'I''ll give you half of the apple.'
    UNION ALL SELECT '前', 2, 'まえ', '名前', 'なまえ', 'name', 'お名前は何ですか。', 'おなまえはなんですか。', 'What is your name?'
    UNION ALL SELECT '前', 1, 'ぜん', '午前', 'ごぜん', 'morning, a.m.', '午前中は家にいます。', 'ごぜんちゅうはいえにいます。', 'I am at home in the morning.'
    UNION ALL SELECT '後', 2, 'あと', '後で', 'あとで', 'later', '後で電話します。', 'あとででんわします。', 'I will call you later.'
    UNION ALL SELECT '後', 3, 'うしろ', '後ろ', 'うしろ', 'behind, back', '後ろを見てください。', 'うしろをみてください。', 'Please look behind you.'
    UNION ALL SELECT '後', 1, 'ご', '午後', 'ごご', 'afternoon, p.m.', '午後は雨が降ります。', 'ごごはあめがふります。', 'It will rain in the afternoon.'
    UNION ALL SELECT '後', 4, 'こう', '後半', 'こうはん', 'second half', '試合の後半はとても面白かったです。', 'しあいのこうはんはとてもおもしろかったです。', 'The second half of the game was very exciting.'
    UNION ALL SELECT '午', 1, 'ご', '午前', 'ごぜん', 'morning, a.m.', '午前九時に会社へ行きます。', 'ごぜんくじにかいしゃへいきます。', 'I go to the office at 9 a.m.'
    UNION ALL SELECT '休', 1, 'やすむ', '休む', 'やすむ', 'to rest, to take time off', '明日は会社を休みます。', 'あしたはかいしゃをやすみます。', 'I am taking tomorrow off work.'
    UNION ALL SELECT '休', 2, 'きゅう', '休日', 'きゅうじつ', 'day off, holiday', '休日は家で本を読みます。', 'きゅうじつはいえでほんをよみます。', 'I read books at home on my days off.'
    UNION ALL SELECT '毎', 1, 'まい', '毎週', 'まいしゅう', 'every week', '毎週プールで泳ぎます。', 'まいしゅうプールでおよぎます。', 'I swim in the pool every week.'
    UNION ALL SELECT '何', 1, 'なに', '何', 'なに', 'what', '何を食べたいですか。', 'なにをたべたいですか。', 'What do you want to eat?'
    UNION ALL SELECT '何', 2, 'なん', '何曜日', 'なんようび', 'what day of the week', '今日は何曜日ですか。', 'きょうはなんようびですか。', 'What day of the week is it today?'
    UNION ALL SELECT '行', 1, 'いく', '行く', 'いく', 'to go', '一緒に行きませんか。', 'いっしょにいきませんか。', 'Would you like to go together?'
    UNION ALL SELECT '行', 2, 'おこなう', '行う', 'おこなう', 'to hold, to carry out', '来週、会議を行います。', 'らいしゅう、かいぎをおこないます。', 'We will hold a meeting next week.'
    UNION ALL SELECT '行', 3, 'こう', '銀行', 'ぎんこう', 'bank', '銀行は三時までです。', 'ぎんこうはさんじまでです。', 'The bank is open until three.'
    UNION ALL SELECT '行', 4, 'ぎょう', '一行目', 'いちぎょうめ', 'the first line (of text)', '一行目を読んでください。', 'いちぎょうめをよんでください。', 'Please read the first line.'
    UNION ALL SELECT '来', 1, 'くる', '来る', 'くる', 'to come', 'バスが来ました。', 'バスがきました。', 'The bus has come.'
    UNION ALL SELECT '来', 2, 'らい', '来週', 'らいしゅう', 'next week', '来週は休みです。', 'らいしゅうはやすみです。', 'I am off next week.'
    UNION ALL SELECT '校', 1, 'こう', '高校', 'こうこう', 'high school', '姉は高校の先生です。', 'あねはこうこうのせんせいです。', 'My older sister is a high school teacher.'
    UNION ALL SELECT '週', 1, 'しゅう', '週末', 'しゅうまつ', 'weekend', '週末は何をしますか。', 'しゅうまつはなにをしますか。', 'What are you doing this weekend?'
    UNION ALL SELECT '去', 1, 'きょ', '去年', 'きょねん', 'last year', '去年の夏は暑かったです。', 'きょねんのなつはあつかったです。', 'Last summer was hot.'
    UNION ALL SELECT '去', 2, 'さる', '去る', 'さる', 'to leave, to pass', '冬が去って、春が来ました。', 'ふゆがさって、はるがきました。', 'Winter has gone and spring has come.'
    UNION ALL SELECT '去', 3, 'こ', '過去', 'かこ', 'the past', '過去のことは忘れましょう。', 'かこのことはわすれましょう。', 'Let''s forget the past.'
    UNION ALL SELECT '年', 1, 'ねん', '一年生', 'いちねんせい', 'first-year student', '弟は一年生です。', 'おとうとはいちねんせいです。', 'My younger brother is a first-year student.'
    UNION ALL SELECT '年', 2, 'とし', '年上', 'としうえ', 'older', '兄は私より三つ年上です。', 'あにはわたしよりみっつとしうえです。', 'My older brother is three years older than me.'
    UNION ALL SELECT '駅', 1, 'えき', '駅前', 'えきまえ', 'in front of the station', '駅前に本屋があります。', 'えきまえにほんやがあります。', 'There is a bookstore in front of the station.'
    UNION ALL SELECT '電', 1, 'でん', '電話', 'でんわ', 'telephone', '母に電話をかけます。', 'ははにでんわをかけます。', 'I am calling my mother.'
    UNION ALL SELECT '車', 1, 'くるま', '車', 'くるま', 'car', '車を運転します。', 'くるまをうんてんします。', 'I drive a car.'
    UNION ALL SELECT '車', 2, 'しゃ', '自転車', 'じてんしゃ', 'bicycle', '自転車で学校に行きます。', 'じてんしゃでがっこうにいきます。', 'I go to school by bicycle.'
    UNION ALL SELECT '自', 1, 'じ', '自転車', 'じてんしゃ', 'bicycle', '自転車に乗れますか。', 'じてんしゃにのれますか。', 'Can you ride a bicycle?'
    UNION ALL SELECT '自', 2, 'し', '自然', 'しぜん', 'nature', '自然が好きです。', 'しぜんがすきです。', 'I like nature.'
    UNION ALL SELECT '転', 1, 'てん', '運転手', 'うんてんしゅ', 'driver', 'タクシーの運転手に住所を言いました。', 'タクシーのうんてんしゅにじゅうしょをいいました。', 'I told the taxi driver the address.'
    UNION ALL SELECT '転', 2, 'ころぶ', '転ぶ', 'ころぶ', 'to fall down', '雪の日は転びやすいです。', 'ゆきのひはころびやすいです。', 'It is easy to fall on snowy days.'
    UNION ALL SELECT '動', 1, 'どう', '動物', 'どうぶつ', 'animal', '動物が好きです。', 'どうぶつがすきです。', 'I like animals.'
    UNION ALL SELECT '動', 2, 'うごく', '動く', 'うごく', 'to move', '動かないでください。', 'うごかないでください。', 'Please don''t move.'
    UNION ALL SELECT '高', 1, 'たかい', '高い', 'たかい', 'high, tall, expensive', '富士山は高い山です。', 'ふじさんはたかいやまです。', 'Mt. Fuji is a high mountain.'
    UNION ALL SELECT '高', 2, 'こう', '最高', 'さいこう', 'the best', 'この映画は最高です。', 'このえいがはさいこうです。', 'This movie is the best.'
    UNION ALL SELECT '安', 1, 'やすい', '安い', 'やすい', 'cheap', '安い靴を買いました。', 'やすいくつをかいました。', 'I bought cheap shoes.'
    UNION ALL SELECT '安', 2, 'あん', '安心', 'あんしん', 'relief', '声を聞いて安心しました。', 'こえをきいてあんしんしました。', 'I was relieved to hear your voice.'
    UNION ALL SELECT '大', 1, 'おおきい', '大きい', 'おおきい', 'big', '大きい家に住んでいます。', 'おおきいいえにすんでいます。', 'I live in a big house.'
    UNION ALL SELECT '大', 2, 'だい', '大学', 'だいがく', 'university', '兄は大学生です。', 'あにはだいがくせいです。', 'My older brother is a university student.'
    UNION ALL SELECT '大', 3, 'たい', '大切', 'たいせつ', 'important, precious', '家族は大切です。', 'かぞくはたいせつです。', 'Family is important.'
    UNION ALL SELECT '小', 1, 'ちいさい', '小さい', 'ちいさい', 'small', 'この靴は小さいです。', 'このくつはちいさいです。', 'These shoes are small.'
    UNION ALL SELECT '小', 2, 'こ', '小鳥', 'ことり', 'little bird', '小鳥が鳴いています。', 'ことりがないています。', 'A little bird is singing.'
    UNION ALL SELECT '小', 3, 'お', '小川', 'おがわ', 'stream, brook', '村に小川が流れています。', 'むらにおがわがながれています。', 'A stream flows through the village.'
    UNION ALL SELECT '小', 4, 'しょう', '小学校', 'しょうがっこう', 'elementary school', '弟は小学校に通っています。', 'おとうとはしょうがっこうにかよっています。', 'My younger brother goes to elementary school.'
    UNION ALL SELECT '新', 1, 'あたらしい', '新しい', 'あたらしい', 'new', 'この服は新しいです。', 'このふくはあたらしいです。', 'These clothes are new.'
    UNION ALL SELECT '新', 2, 'しん', '新聞', 'しんぶん', 'newspaper', '毎朝、新聞を読みます。', 'まいあさ、しんぶんをよみます。', 'I read the newspaper every morning.'
    UNION ALL SELECT '古', 1, 'ふるい', '古い', 'ふるい', 'old', '私の車は古いです。', 'わたしのくるまはふるいです。', 'My car is old.'
    UNION ALL SELECT '古', 2, 'こ', '中古', 'ちゅうこ', 'used, second-hand', '中古の自転車を買いました。', 'ちゅうこのじてんしゃをかいました。', 'I bought a used bicycle.'
    UNION ALL SELECT '青', 1, 'あおい', '青い', 'あおい', 'blue', '青いシャツを着ています。', 'あおいシャツをきています。', 'I am wearing a blue shirt.'
    UNION ALL SELECT '青', 2, 'せい', '青年', 'せいねん', 'young man', 'あの青年は親切です。', 'あのせいねんはしんせつです。', 'That young man is kind.'
    UNION ALL SELECT '白', 1, 'しろい', '白い', 'しろい', 'white', '雪は白いです。', 'ゆきはしろいです。', 'Snow is white.'
    UNION ALL SELECT '白', 2, 'はく', '白鳥', 'はくちょう', 'swan', '池に白鳥がいます。', 'いけにはくちょうがいます。', 'There is a swan on the pond.'
    UNION ALL SELECT '赤', 1, 'あかい', '赤い', 'あかい', 'red', '赤い車が好きです。', 'あかいくるまがすきです。', 'I like red cars.'
    UNION ALL SELECT '赤', 2, 'せき', '赤道', 'せきどう', 'the equator', 'シンガポールは赤道の近くにあります。', 'シンガポールはせきどうのちかくにあります。', 'Singapore is near the equator.'
    UNION ALL SELECT '黒', 1, 'くろい', '黒い', 'くろい', 'black', '彼の髪は黒いです。', 'かれのかみはくろいです。', 'His hair is black.'
    UNION ALL SELECT '黒', 2, 'こく', '黒板', 'こくばん', 'blackboard', '先生が黒板に字を書きました。', 'せんせいがこくばんにじをかきました。', 'The teacher wrote on the blackboard.'
    UNION ALL SELECT '上', 1, 'うえ', '上', 'うえ', 'top, above', '山の上は寒いです。', 'やまのうえはさむいです。', 'It is cold at the top of the mountain.'
    UNION ALL SELECT '上', 2, 'あがる', '上がる', 'あがる', 'to go up, to come in', 'どうぞ上がってください。', 'どうぞあがってください。', 'Please come in.'
    UNION ALL SELECT '上', 3, 'じょう', '上手', 'じょうず', 'good at', '妹は歌が上手です。', 'いもうとはうたがじょうずです。', 'My younger sister is good at singing.'
    UNION ALL SELECT '下', 1, 'した', '下', 'した', 'under, below', '木の下で休みました。', 'きのしたでやすみました。', 'I rested under a tree.'
    UNION ALL SELECT '下', 2, 'さがる', '下がる', 'さがる', 'to go down', '値段が下がりました。', 'ねだんがさがりました。', 'The price went down.'
    UNION ALL SELECT '下', 3, 'か', '地下鉄', 'ちかてつ', 'subway', '地下鉄で行きましょう。', 'ちかてつでいきましょう。', 'Let''s go by subway.'
    UNION ALL SELECT '下', 4, 'げ', '下車', 'げしゃ', 'getting off (a train or bus)', '次の駅で下車します。', 'つぎのえきでげしゃします。', 'I get off at the next station.'
    UNION ALL SELECT '父', 1, 'ちち', '父', 'ちち', '(my) father', '父は料理が上手です。', 'ちちはりょうりがじょうずです。', 'My father is good at cooking.'
    UNION ALL SELECT '父', 2, 'ふ', '祖父', 'そふ', 'grandfather', '祖父は八十歳です。', 'そふははちじゅっさいです。', 'My grandfather is eighty years old.'
    UNION ALL SELECT '母', 1, 'はは', '母', 'はは', '(my) mother', '母に手紙を書きました。', 'ははにてがみをかきました。', 'I wrote a letter to my mother.'
    UNION ALL SELECT '母', 2, 'ぼ', '祖母', 'そぼ', 'grandmother', '祖母は京都に住んでいます。', 'そぼはきょうとにすんでいます。', 'My grandmother lives in Kyoto.'
    UNION ALL SELECT '子', 1, 'こ', '子ども', 'こども', 'child', '子どもが好きです。', 'こどもがすきです。', 'I like children.'
    UNION ALL SELECT '子', 2, 'し', '帽子', 'ぼうし', 'hat', '新しい帽子を買いました。', 'あたらしいぼうしをかいました。', 'I bought a new hat.'
    UNION ALL SELECT '手', 1, 'て', '手紙', 'てがみ', 'letter', '友達に手紙を送りました。', 'ともだちにてがみをおくりました。', 'I sent a letter to my friend.'
    UNION ALL SELECT '手', 2, 'しゅ', '歌手', 'かしゅ', 'singer', '将来、歌手になりたいです。', 'しょうらい、かしゅになりたいです。', 'I want to be a singer in the future.'
    UNION ALL SELECT '好', 1, 'すき', '好き', 'すき', 'liked, favorite', 'どんな音楽が好きですか。', 'どんなおんがくがすきですか。', 'What kind of music do you like?'
    UNION ALL SELECT '好', 2, 'こう', '好物', 'こうぶつ', 'favorite food', 'すしは私の好物です。', 'すしはわたしのこうぶつです。', 'Sushi is my favorite food.'
    UNION ALL SELECT '主', 1, 'しゅ', '主婦', 'しゅふ', 'homemaker', '母は主婦です。', 'はははしゅふです。', 'My mother is a homemaker.'
    UNION ALL SELECT '主', 2, 'ぬし', '持ち主', 'もちぬし', 'owner', 'このかさの持ち主はだれですか。', 'このかさのもちぬしはだれですか。', 'Who is the owner of this umbrella?'
    UNION ALL SELECT '主', 3, 'おも', '主に', 'おもに', 'mainly', '主に週末に料理をします。', 'おもにしゅうまつにりょうりをします。', 'I mainly cook on weekends.'
    UNION ALL SELECT '肉', 1, 'にく', '牛肉', 'ぎゅうにく', 'beef', '牛肉は高いです。', 'ぎゅうにくはたかいです。', 'Beef is expensive.'
    UNION ALL SELECT '魚', 1, 'さかな', '魚屋', 'さかなや', 'fish shop', '駅の近くに魚屋があります。', 'えきのちかくにさかなやがあります。', 'There is a fish shop near the station.'
    UNION ALL SELECT '魚', 2, 'ぎょ', '金魚', 'きんぎょ', 'goldfish', '金魚を三匹飼っています。', 'きんぎょをさんびきかっています。', 'I keep three goldfish.'
    UNION ALL SELECT '食', 1, 'たべる', '食べる', 'たべる', 'to eat', '一緒に食べましょう。', 'いっしょにたべましょう。', 'Let''s eat together.'
    UNION ALL SELECT '食', 2, 'しょく', '食堂', 'しょくどう', 'cafeteria', '会社の食堂で昼ご飯を食べます。', 'かいしゃのしょくどうでひるごはんをたべます。', 'I eat lunch at the company cafeteria.'
    UNION ALL SELECT '飲', 1, 'のむ', '飲む', 'のむ', 'to drink', '薬を飲んでください。', 'くすりをのんでください。', 'Please take your medicine.'
    UNION ALL SELECT '飲', 2, 'いん', '飲食店', 'いんしょくてん', 'restaurant, eatery', 'この通りには飲食店が多いです。', 'このとおりにはいんしょくてんがおおいです。', 'There are many restaurants on this street.'
    UNION ALL SELECT '物', 1, 'もの', '買い物', 'かいもの', 'shopping', 'デパートで買い物をしました。', 'デパートでかいものをしました。', 'I went shopping at the department store.'
    UNION ALL SELECT '物', 2, 'ぶつ', '生物', 'せいぶつ', 'living thing', '海には多くの生物がいます。', 'うみにはおおくのせいぶつがいます。', 'Many living things live in the sea.'
    UNION ALL SELECT '物', 3, 'もつ', '荷物', 'にもつ', 'luggage', '荷物が重いです。', 'にもつがおもいです。', 'My luggage is heavy.'
    UNION ALL SELECT '近', 1, 'ちかい', '近く', 'ちかく', 'nearby', '近くにコンビニがあります。', 'ちかくにコンビニがあります。', 'There is a convenience store nearby.'
    UNION ALL SELECT '近', 2, 'きん', '近所', 'きんじょ', 'neighborhood', '近所の人はみんな親切です。', 'きんじょのひとはみんなしんせつです。', 'My neighbors are all kind.'
    UNION ALL SELECT '間', 1, 'かん', '時間', 'じかん', 'time', '時間がありません。', 'じかんがありません。', 'I don''t have time.'
    UNION ALL SELECT '間', 2, 'あいだ', '間', 'あいだ', 'between, during', '夏休みの間、国に帰ります。', 'なつやすみのあいだ、くににかえります。', 'I go back to my country during summer vacation.'
    UNION ALL SELECT '間', 3, 'ま', '間に合う', 'まにあう', 'to be in time', '急げば間に合います。', 'いそげばまにあいます。', 'If we hurry, we''ll make it.'
    UNION ALL SELECT '間', 4, 'けん', '人間', 'にんげん', 'human being', '人間は考える動物です。', 'にんげんはかんがえるどうぶつです。', 'Humans are thinking animals.'
    UNION ALL SELECT '右', 1, 'みぎ', '右手', 'みぎて', 'right hand', '右手でペンを持ちます。', 'みぎてでペンをもちます。', 'I hold the pen in my right hand.'
    UNION ALL SELECT '右', 2, 'う', '右折', 'うせつ', 'right turn', '次の角を右折してください。', 'つぎのかどをうせつしてください。', 'Please turn right at the next corner.'
    UNION ALL SELECT '右', 3, 'ゆう', '左右', 'さゆう', 'left and right', '道を渡る前に左右を見てください。', 'みちをわたるまえにさゆうをみてください。', 'Look left and right before crossing the street.'
    UNION ALL SELECT '左', 1, 'ひだり', '左手', 'ひだりて', 'left hand', '姉は左手で字を書きます。', 'あねはひだりてでじをかきます。', 'My older sister writes with her left hand.'
    UNION ALL SELECT '左', 2, 'さ', '左折', 'させつ', 'left turn', 'ここで左折してください。', 'ここでさせつしてください。', 'Please turn left here.'
    UNION ALL SELECT '外', 1, 'そと', '外', 'そと', 'outside', '外で遊びましょう。', 'そとであそびましょう。', 'Let''s play outside.'
    UNION ALL SELECT '外', 2, 'がい', '外国人', 'がいこくじん', 'foreigner', 'この町には外国人が多いです。', 'このまちにはがいこくじんがおおいです。', 'There are many foreigners in this town.'
    UNION ALL SELECT '男', 1, 'おとこ', '男の子', 'おとこのこ', 'boy', '男の子がサッカーをしています。', 'おとこのこがサッカーをしています。', 'A boy is playing soccer.'
    UNION ALL SELECT '男', 2, 'だん', '男性', 'だんせい', 'man (polite)', '男性のトイレはあちらです。', 'だんせいのトイレはあちらです。', 'The men''s restroom is over there.'
    UNION ALL SELECT '女', 1, 'おんな', '女の子', 'おんなのこ', 'girl', '女の子が歌っています。', 'おんなのこがうたっています。', 'A girl is singing.'
    UNION ALL SELECT '女', 2, 'じょ', '女性', 'じょせい', 'woman (polite)', 'あの女性は医者です。', 'あのじょせいはいしゃです。', 'That woman is a doctor.'
    UNION ALL SELECT '犬', 1, 'いぬ', '子犬', 'こいぬ', 'puppy', '子犬が生まれました。', 'こいぬがうまれました。', 'A puppy was born.'
    UNION ALL SELECT '犬', 2, 'けん', '番犬', 'ばんけん', 'watchdog', 'うちの犬は番犬です。', 'うちのいぬはばんけんです。', 'Our dog is a watchdog.'
    UNION ALL SELECT '書', 1, 'かく', '書く', 'かく', 'to write', 'ひらがなで書いてもいいですか。', 'ひらがなでかいてもいいですか。', 'May I write it in hiragana?'
    UNION ALL SELECT '書', 2, 'しょ', '辞書', 'じしょ', 'dictionary', '辞書で意味を調べます。', 'じしょでいみをしらべます。', 'I look up the meaning in a dictionary.'
    UNION ALL SELECT '聞', 1, 'きく', '聞く', 'きく', 'to listen, to ask', '私の話を聞いてください。', 'わたしのはなしをきいてください。', 'Please listen to me.'
    UNION ALL SELECT '聞', 2, 'ぶん', '新聞', 'しんぶん', 'newspaper', '新聞を買いに行きます。', 'しんぶんをかいにいきます。', 'I am going to buy a newspaper.'
    UNION ALL SELECT '読', 1, 'よむ', '読む', 'よむ', 'to read', 'この漢字は何と読みますか。', 'このかんじはなんとよみますか。', 'How do you read this kanji?'
    UNION ALL SELECT '読', 2, 'どく', '読書', 'どくしょ', 'reading (books)', '趣味は読書です。', 'しゅみはどくしょです。', 'My hobby is reading.'
    UNION ALL SELECT '見', 1, 'みる', '見る', 'みる', 'to see, to watch', '映画を見に行きませんか。', 'えいがをみにいきませんか。', 'Would you like to go see a movie?'
    UNION ALL SELECT '見', 2, 'けん', '見物', 'けんぶつ', 'sightseeing', '京都で寺を見物しました。', 'きょうとでてらをけんぶつしました。', 'I went sightseeing at temples in Kyoto.'
    UNION ALL SELECT '話', 1, 'はなす', '話す', 'はなす', 'to speak', 'もう少しゆっくり話してください。', 'もうすこしゆっくりはなしてください。', 'Please speak a little more slowly.'
    UNION ALL SELECT '話', 2, 'はなし', '話', 'はなし', 'story, talk', '面白い話を聞きました。', 'おもしろいはなしをききました。', 'I heard an interesting story.'
    UNION ALL SELECT '話', 3, 'わ', '会話', 'かいわ', 'conversation', '毎日、英語で会話をします。', 'まいにち、えいごでかいわをします。', 'I have conversations in English every day.'
    UNION ALL SELECT '買', 1, 'かう', '買う', 'かう', 'to buy', '何を買いたいですか。', 'なにをかいたいですか。', 'What do you want to buy?'
    UNION ALL SELECT '買', 2, 'ばい', '売買', 'ばいばい', 'buying and selling', 'この店は古い本の売買をしています。', 'このみせはふるいほんのばいばいをしています。', 'This store buys and sells old books.'
    UNION ALL SELECT '起', 1, 'おきる', '起きる', 'おきる', 'to get up, to wake up', '日曜日は遅く起きます。', 'にちようびはおそくおきます。', 'I get up late on Sundays.'
    UNION ALL SELECT '起', 2, 'き', '起立', 'きりつ', 'stand up (as a command)', '「起立」と先生が言いました。', '「きりつ」とせんせいがいいました。', 'The teacher said, "Stand up."'
    UNION ALL SELECT '帰', 1, 'かえる', '帰る', 'かえる', 'to go home, to return', '早く帰りたいです。', 'はやくかえりたいです。', 'I want to go home early.'
    UNION ALL SELECT '帰', 2, 'き', '帰国', 'きこく', 'returning to one''s country', '来月、帰国します。', 'らいげつ、きこくします。', 'I am returning to my country next month.'
    UNION ALL SELECT '友', 1, 'とも', '友達', 'ともだち', 'friend', '友達がたくさんいます。', 'ともだちがたくさんいます。', 'I have many friends.'
    UNION ALL SELECT '友', 2, 'ゆう', '友人', 'ゆうじん', 'friend (formal)', '友人を家に招待しました。', 'ゆうじんをいえにしょうたいしました。', 'I invited a friend to my house.'
    UNION ALL SELECT '達', 1, 'たち', '子ども達', 'こどもたち', 'children', '子ども達が歌っています。', 'こどもたちがうたっています。', 'The children are singing.'
    UNION ALL SELECT '達', 2, 'たつ', '上達', 'じょうたつ', 'improvement', '日本語が上達しました。', 'にほんごがじょうたつしました。', 'My Japanese has improved.'
    UNION ALL SELECT '茶', 1, 'ちゃ', '茶色', 'ちゃいろ', 'brown', '茶色の靴を買いました。', 'ちゃいろのくつをかいました。', 'I bought brown shoes.'
    UNION ALL SELECT '茶', 2, 'さ', '喫茶店', 'きっさてん', 'café', '駅の前の喫茶店で会いましょう。', 'えきのまえのきっさてんであいましょう。', 'Let''s meet at the café in front of the station.'
    UNION ALL SELECT '酒', 1, 'さけ', 'お酒', 'おさけ', 'alcohol, sake', '父はお酒が好きです。', 'ちちはおさけがすきです。', 'My father likes to drink.'
    UNION ALL SELECT '酒', 2, 'しゅ', '日本酒', 'にほんしゅ', 'Japanese sake', '日本酒を飲んだことがありますか。', 'にほんしゅをのんだことがありますか。', 'Have you ever had Japanese sake?'
    UNION ALL SELECT '写', 1, 'しゃ', '写真', 'しゃしん', 'photo', '家族の写真を見せてください。', 'かぞくのしゃしんをみせてください。', 'Please show me a photo of your family.'
    UNION ALL SELECT '写', 2, 'うつす', '写す', 'うつす', 'to copy', '友達の宿題を写さないでください。', 'ともだちのしゅくだいをうつさないでください。', 'Don''t copy your friend''s homework.'
    UNION ALL SELECT '真', 1, 'しん', '写真', 'しゃしん', 'photo', '写真を撮ってもいいですか。', 'しゃしんをとってもいいですか。', 'May I take a photo?'
    UNION ALL SELECT '真', 2, 'ま', '真ん中', 'まんなか', 'middle, center', 'テーブルの真ん中に花があります。', 'テーブルのまんなかにはながあります。', 'There are flowers in the middle of the table.'
    UNION ALL SELECT '紙', 1, 'かみ', '紙', 'かみ', 'paper', 'この紙に名前を書いてください。', 'このかみになまえをかいてください。', 'Please write your name on this paper.'
    UNION ALL SELECT '紙', 2, 'し', '和紙', 'わし', 'Japanese paper', '和紙でカードを作りました。', 'わしでカードをつくりました。', 'I made a card out of Japanese paper.'
    UNION ALL SELECT '映', 1, 'えい', '映画館', 'えいがかん', 'movie theater', '映画館は駅の近くです。', 'えいがかんはえきのちかくです。', 'The movie theater is near the station.'
    UNION ALL SELECT '映', 2, 'うつる', '映る', 'うつる', 'to be reflected', '鏡に顔が映っています。', 'かがみにかおがうつっています。', 'My face is reflected in the mirror.'
    UNION ALL SELECT '画', 1, 'が', '映画', 'えいが', 'movie', 'この映画はとても面白かったです。', 'このえいがはとてもおもしろかったです。', 'This movie was very interesting.'
    UNION ALL SELECT '画', 2, 'かく', '画数', 'かくすう', 'number of strokes', '「駅」の画数は十四です。', '「えき」のかくすうはじゅうよんです。', 'The kanji 駅 has fourteen strokes.'
    UNION ALL SELECT '店', 1, 'みせ', '店', 'みせ', 'store', '店の前で待っています。', 'みせのまえでまっています。', 'I am waiting in front of the store.'
    UNION ALL SELECT '店', 2, 'てん', '書店', 'しょてん', 'bookstore', '駅の中に書店があります。', 'えきのなかにしょてんがあります。', 'There is a bookstore inside the station.'
    UNION ALL SELECT '英', 1, 'えい', '英会話', 'えいかいわ', 'English conversation', '毎週、英会話のクラスに行きます。', 'まいしゅう、えいかいわのクラスにいきます。', 'I go to an English conversation class every week.'
    UNION ALL SELECT '語', 1, 'ご', '日本語', 'にほんご', 'Japanese (language)', '日本語の勉強は楽しいです。', 'にほんごのべんきょうはたのしいです。', 'Studying Japanese is fun.'
    UNION ALL SELECT '語', 2, 'かたる', '語る', 'かたる', 'to tell, to talk about', '祖父が昔の話を語ってくれました。', 'そふがむかしのはなしをかたってくれました。', 'My grandfather told me stories from long ago.'
) AS v
JOIN kanji k ON k.kanji_character = v.kanji_character
ON DUPLICATE KEY UPDATE
    reading = v.reading,
    word = v.word,
    word_reading = v.word_reading,
    word_meaning = v.word_meaning,
    sentence = v.sentence,
    sentence_reading = v.sentence_reading,
    sentence_translation = v.sentence_translation;
