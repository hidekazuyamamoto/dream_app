## user
| column         | type              | option                                         |
|----------------|-------------------|------------------------------------------------|
| name           | string            | null: false                                    |

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