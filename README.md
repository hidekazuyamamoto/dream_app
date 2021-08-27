## ペルソナ

  ・好きなコンテンツに投資したい人
  ・応援しているコンテンツが続けれるように支援したい人

  ・自分のコンテンツを継続していきたいが現実問題により継続が難しい人
  ・会社、企業に頼らずにコンテンツを継続していきたいと考えている人
  ・各SNSのファンを集めたい人

## ストーリー

現在では様々なSNSが発達しており、誰もがクリエイターとなり得て、ファンを獲得できる時代になっている。しかし、ファンを獲得しても応援する手段が「いいね」機能しかなく、現実問題の解決には繋がらない。今回私が作成したアプリは応援されたいクリエイターを応援したいファンの要望に答えるアプリを開発した。
このアプリでは、クリエイターが夢を語りそれに共感したファンが金銭面で支援できるようにしている。また、ただ夢を語るだけでなく自分の作品を出品することができ、クリエイターの新しい資金調達の方法を確立できるようにした。これによって、ファンによってクリエイターは支えられ事業の継続だけでなくモチベーションの維持も可能であり、ファンは自分の支援でき、さらにクリエイターとより強固な関係を作ることができる。クリエイターとファンだけて事業が成り立つようなアプリを開発した。



## モデル関連

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

## main_purchased
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| item           | references        | null: false, foreign_key: true                 |
| sub_profile    | references        | null: false, foreign_key: true                 |
| price          | string            | null :false                                    |

### association
belongs_to :item
belongs_to :sub_profile