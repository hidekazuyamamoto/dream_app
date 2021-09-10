# アプリケーション名
DREAM
# このアプリについて
## ターゲット
SNSの中継地点（ハブ）となるアプリが欲しい人
独自の商品、コンテンツを販売したい人

## ストーリー
私はSNSの中継地点となるようなアプリ

近年、facebook,instagram,twitter,のようなSNSが発達している。
多くの人が複数のSNSのアプリを運用している。
フォロワーとより強固な関係を築くために複数のアカウントのフォローはかなり重要なことだと考える。
しかし、各SNSのURLをプロフィール欄に記入するのは面倒であり文字数が多くなり見栄えが悪くなり、返ってその人に対する興味を失う可能性もある。
そこで私が考えたのはSNSの中継地点となりうるアプリである。
これを使えばURL１つ記入することでプロフィール欄を見栄えを落とすことなく、様々なSNSアプリへの訪問を促すことができる。
また、中継地点となれば多くの人が来訪するため、自分の目標を語れる機能、自分の独自の技術や商品を売ることができる機能を実装することで、更なるファンの獲得、ビジネスのチャンスを得られるのでないかと考えた。

## URL
https://enigmatic-plateau-83686.herokuapp.com/

 Basic認証
 ・name: test
 ・password: 0415

## 操作方法

1.ユーザー登録する
[![Image from Gyazo](https://i.gyazo.com/6d494485354a4f749b00f1815c40ac19.gif)](https://gyazo.com/6d494485354a4f749b00f1815c40ac19)
2.メニューバーからプロフィールの作成
[![Image from Gyazo](https://i.gyazo.com/9ece393a4c82a615a3eb916e22f3e5fb.gif)](https://gyazo.com/9ece393a4c82a615a3eb916e22f3e5fb)
[![Image from Gyazo](https://i.gyazo.com/3e412a23b2b7eb8ffb178de1284959b7.gif)](https://gyazo.com/3e412a23b2b7eb8ffb178de1284959b7)
3.商品作成
[![Image from Gyazo](https://i.gyazo.com/3e307f1974751c8dc803d5b79f51e9ec.gif)](https://gyazo.com/3e307f1974751c8dc803d5b79f51e9ec)
[![Image from Gyazo](https://i.gyazo.com/0646fd4baf3515743abf3fd8ecaf68d6.gif)](https://gyazo.com/0646fd4baf3515743abf3fd8ecaf68d6)
4.商品編集、削除、購入方法
・編集、削除（商品を作成したアカウントと同じ場合可能）
[![Image from Gyazo](https://i.gyazo.com/7b7cc0e769c66dd4babb3ab447113538.gif)](https://gyazo.com/7b7cc0e769c66dd4babb3ab447113538)
・・購入（商品を作成したアカウントと違う場合可能）
[![Image from Gyazo](https://i.gyazo.com/dfb6d6b8311622692c08f9d3eb8e8dbf.gif)](https://gyazo.com/dfb6d6b8311622692c08f9d3eb8e8dbf)
[![Image from Gyazo](https://i.gyazo.com/e76c2bab30761f6fa9008cce823fe2d8.gif)](https://gyazo.com/e76c2bab30761f6fa9008cce823fe2d8)
・補足
ホーム画面では他のアカウントが表示される
[![Image from Gyazo](https://i.gyazo.com/78a603440727f1cf86b216cf0cfd42d4.gif)](https://gyazo.com/78a603440727f1cf86b216cf0cfd42d4)

# 要件定義
|  function                        | purpose                                                |detail                                         |
| ---------------------------------|--------------------------------------------------------|-----------------------------------------------|
| RE図、README作成	設計図の作成	     |イメージを形にするため	                                   |特になし	                                       |
| ビュー作成	全体のビューの作成	      | ページの遷移、ページの見た目を制作する	                     |特になし	                                       |
| ユーザー登録機能実装	               |ユーザー登録機能の実装,サインアップ、ログイン、ログアウトを実装	  |ユーザーが登録できるように                         |
|マイページの作成	                    |データ内容をマイページに表示,マイページの保存、編集、表示できる   |プロフィール、ミッション、を追加で生きるように        |
|支援要項機能実装	                    |商品の作成、編集、削除をできるように	商品の作成、編集、削除をできる|ユーザーが商品を選択して購入できるように            |
|購入ページ実装                       |	商品の購入機能実装	情報を入力して購入できる商品の購入機能	    |クレジットカードを使って購入できる                   |
|ヘッダーのjs機能実装                 |	アニメーション、細かい表示の修正	アニメーション、細かい表示の修正|アニメーション、細かい表示の修正                     |
|その他		

## 実装予定の機能
・購入の際、事前にカード、住所などを登録して簡単に購入できるようにする
→今回は作業の延長となるため行っていない

・ユーザー登録、購入したらメールが届くようにする
→テストアプリを作り、実装テスト中

・より動きのあるサイトに仕上げる
→テストアプリを作り、練習中

# モデル関連		
## user
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| email          | string            | nill: false                                    |
| password       | string            | nill: false                                    |

### association
has_one :main_profile
has_one :sub_profile
has_many :items

## main_profile
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| user           | references        | null: false, foreign_key: true                 |
| mission        | string            | null: false                                    |
| mission_explain| text              | null: false                                    |
| url_twitter    | string            |                                                |
| url_facebook   | string            |                                                |
| url_instagram  | string            |                                                |
| name           | string            | null: false                                    |
| user_profile   | text              |                                                |
| dead_line      | date_time         | nill: false                                    |

### association
belongs_to :user

## sub_profile
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| user           | references        | null: false, foreign_key: true                 |
| postal_code    | string            | null: false                                    |
| area_id        | integer           | null: false                                    |
| city           | string            | nill: false                                    |
| address        | string            | null: false                                    |
| building_name  | string            |                                                |

### association
belongs_to :user
has_many :main_purchased_logs

## item
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| user           | references        | null: false, foreign_key: true                 |
| name           | string            | null: false                                    |
| price          | integer           | null: false                                    |
| explanation    | text              | null: false                                    |

### association
belongs_to :user
has_many :sub_purchased_logs
has_many :main_purchased_logs

## sub_purchased
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| item           | references        | null: false, foreign_key: true                 |
| price          | string            | null :false                                    |
| name           | string            | null: false                                    |
| postal_code    | string            | null: false                                    |
| area_id        | integer           | null: false                                    |
| city           | string            | nill: false                                    |
| address        | string            | null: false                                    |
| building_name  | string            |                                                |
| where_id       | integer           |                                                |

### association
belongs_to :item

