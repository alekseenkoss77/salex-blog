Project.create!(
  title: 'Интернет-магазин Infraredsaunaguru',
  locale: 'ru',
  body: "Интернет магазин инфракрасных саун. Преимущественно занимается продажей самих саун и аксессуаров. Тех. поддержкой на протяжении нескольких месяцев. Верстка, разработка php-модулей. Парсер переноса данных из БД opencart сайта в сайт CS-Cart.",
  role: 3,
  status: 1,
  meta_title: 'Техническая поддержка магазина саун',
  owner: "студия devstyle.ru",
  url: "www.infraredsaunaguru.com",
  tag_list: 'PHP, Cs-Cart, MySQL, HTML, CSS, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/infraredsaunaguru_com.jpg')
)

Project.create!(
  title: 'Интернет-магазин Infraredsaunaparts',
  locale: 'ru',
  body: "Интернет магазин запчастей для ИК саун. Продажа различных частей ИК саун и аксессуаров. Тех. поддержкой на протяжении нескольких месяцев. Верстка, разработка php-модулей.",
  role: 3,
  status: 1,
  meta_title: 'Техническая поддержка магазина саун',
  owner: "студия devstyle.ru",
  url: "www.infraredsaunaparts.com",
  tag_list: 'PHP, Cs-Cart, MySQL, HTML, CSS, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/infraredsaunaparts_com.jpg')
)

Project.create!(
  title: 'Корпоративный сайта компании Elecard',
  locale: 'ru',
  body: "Поддержка корпоративного вебсайта компании Elecard. Основные задачи включали в себя: верстку, разработку плагинов и модулей для CMS MOD-X.",
  role: 3,
  status: 1,
  meta_title: 'Техническая поддержка корпоративного сайта Elecard',
  owner: "студия devstyle.ru",
  url: "www.elecard.com",
  tag_list: 'PHP, MOD-X, MySQL, HTML, CSS, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/elecard_com.jpg')
)

Project.create!(
  title: 'Корпоративный сайт Бизнес-Альянс',
  locale: 'ru',
  body: "Перенос корпоративного сайта с PHP (Drupal) на Ruby on Rails 3.2. Дизайн остался прежним. Разработка сайта с нуля, парсер данных из Drupal в RoR.",
  role: 0,
  status: 1,
  meta_title: 'Разработка корпоративного сайта Бизнес-Альянс',
  owner: "ООО Бизнес-Альянс",
  url: "www.ba-remont.ru",
  tag_list: 'Ruby on Rails, Rails Admin, MySQL, CSS, HTML',
  image: File.open(Rails.root + 'public/fixtures/ba_remont.jpg')
)

Project.create!(
  title: 'Сайт коттеджного поселка',
  locale: 'ru',
  body: "Разработка небольшого сайта коттеджного поселка. Система администрирования ActiveAdmin, использование API Yandex.map для внедрения карты поселка.",
  role: 0,
  status: 1,
  meta_title: 'Разработка сайта коттеджного поселка',
  owner: "ООО Бизнес-Альянс",
  url: "www.veshki.tomsk.ru",
  tag_list: 'Ruby on Rails, Active Admin, PostgreSQL, CSS, HTML',
  image: File.open(Rails.root + 'public/fixtures/veshki_new.jpg')
)

Project.create!(
  title: 'Доска объявлений Lipada',
  locale: 'ru',
  body: "Разработка сайта доски объявлений. Встроенная система управления на основе авторизации по ролям. Мультизагрузка файлов через Uploadify. Маульти-арендная архитекутура (возможность создания городов, доступ к объявлениям в городе через поддомены, напр. tomsk.lipada.ru).",
  role: 0,
  status: 1,
  meta_title: 'Разработка фотодоски объявлений',
  owner: "студия ws70.ru",
  url: "www.lipada.ru",
  tag_list: 'Ruby on Rails, Uploadify, PostgreSQL, CSS, HTML',
  image: File.open(Rails.root + 'public/fixtures/lipada.jpg')
)

Project.create!(
  title: 'Веб-сайт для гостиницы',
  locale: 'ru',
  body: "Разработка сайта для гостиницы. Разработка сайта, разработка панели администрирования, разработка функционала CRM (управления клиентами, управление бронированием, интерактивный чат).",
  role: 0,
  status: 1,
  meta_title: 'Разработка вебсайта гостиницы с функционалом CRM',
  owner: "студия ws70.ru",
  url: "www.askora.ru",
  tag_list: 'Ruby on Rails, PHP, Mibew chat, PostgreSQL, CSS, HTML, CRM',
  image: File.open(Rails.root + 'public/fixtures/askora.jpg')
)

Project.create!(
  title: 'Вебсайт btl-агентства',
  locale: 'ru',
  body: "Разработка корпоративного сайта для BTL-агентства. Стандартный функционал, система администрирования из коробки - ActiveAdmin. Верстка с нуля, через photoshop макеты.",
  role: 0,
  status: 1,
  meta_title: 'Разработка сайта btl-агентства',
  owner: "РА Яркая Жизнь",
  url: "www.btl-tomsk.ru",
  tag_list: 'Ruby on Rails, ActiveAdmin, MySQL, CSS, HTML, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/btl_tomsk.jpg')
)

Project.create!(
  title: 'Веб-сайт рекламного агентства',
  locale: 'ru',
  body: "Разработка корпоративного сайта для рекламной компании. Стандартный функционал, система администрирования из коробки - ActiveAdmin. Верстка с нуля, через photoshop макеты.",
  role: 0,
  status: 1,
  meta_title: 'Разработка сайта рекламной компании',
  owner: "РГ Prostor",
  url: "www.poster-tomsk.ru",
  tag_list: 'Ruby on Rails, ActiveAdmin, MySQL, CSS, HTML, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/prostor.jpg')
)

Project.create!(
  title: 'Веб-сайт областного фонда ОМС',
  locale: 'ru',
  body: "Разработка крупного веб-сайта. Разработка системы администрирования, Background Jobs, конвертация документов используя сервер очередей PostgresMQ и unoconv. Верстка с нуля.",
  role: 0,
  status: 1,
  meta_title: 'Разработка фонда Томского ОМС',
  owner: "ООО Элекард-Мед",
  url: "www.ttfoms.tomsk.ru",
  tag_list: 'PHP, Yii, Python, Unoconv, CSS, HTML, Photoshop',
  image: File.open(Rails.root + 'public/fixtures/ttfoms.jpg')
)