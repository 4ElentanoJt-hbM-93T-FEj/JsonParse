// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'TestTree.dart';

void main() {
  const jsonString = '''
{
  "data": {
    "lang": "ru",
    "fields": [
      {
        "name": "Название",
        "code": "name",
        "require": true,
        "value": null
      },
      {
        "name": "Тип",
        "code": "type",
        "require": true,
        "value": null,
        "possibleValues": [
          {
            "id": 1,
            "code": "my",
            "name": "Мое событие"
          },
          {
            "id": 2,
            "code": "company",
            "name": "Для компании"
          }
        ]
      },
      {
        "name": "calendar.field_location",
        "code": "location",
        "require": false,
        "value": null,
        "possibleValues": {
          "lang": "ru",
          "canManage": true,
          "items": []
        }
      },
      {
        "name": "Календарь",
        "code": "calendar",
        "require": true,
        "value": 4,
        "disabled": true,
        "possibleValues": [
          {
            "id": 4,
            "name": "Календарь компании",
            "color": "#029ef6",
            "active": true,
            "default": false
          }
        ]
      },
      {
        "name": "Начинается",
        "code": "start_date",
        "require": true,
        "value": null
      },
      {
        "name": "Заканчивается",
        "code": "end_date",
        "require": true,
        "value": null
      },
      {
        "name": "Занят",
        "code": "is_busy",
        "require": false,
        "value": false
      },
      {
        "name": "Описание",
        "code": "description",
        "require": false,
        "value": null
      },
      {
        "name": "Напоминание",
        "code": "reminders",
        "require": false,
        "value": [
          {
            "day": 0,
            "hour": 0,
            "minute": 15
          }
        ],
        "fields": [
          {
            "name": "Дней",
            "code": "day"
          },
          {
            "name": "Часов",
            "code": "hour"
          },
          {
            "name": "Минут",
            "code": "minute"
          }
        ]
      },
      {
        "name": "Повторяемость",
        "code": "recurrence",
        "require": false,
        "value": null,
        "description": "",
        "disabled": false,
        "fields": [
          {
            "name": "Тип",
            "code": "FREQ",
            "require": false,
            "possibleValues": [
              {
                "name": "Повторять по дням",
                "code": "DAILY"
              },
              {
                "name": "Повторять по неделям",
                "code": "WEEKLY",
                "fields": [
                  {
                    "name": "Дни недели",
                    "code": "BYDAY"
                  }
                ]
              },
              {
                "name": "Повторять по месяцам",
                "code": "MONTHLY",
                "possibleValues": [
                  {
                    "name": "Число каждого месяца",
                    "code": "BYMONTHDAY"
                  },
                  {
                    "name": "День недели каждого месяца",
                    "code": "BYDAY"
                  }
                ]
              },
              {
                "name": "Повторять по годам",
                "code": "YEARLY",
                "fields": [
                  {
                    "name": "Месяц",
                    "code": "BYMONTH"
                  },
                  {
                    "name": "Число дня в месяце",
                    "code": "BYMONTHDAY"
                  }
                ]
              }
            ]
          },
          {
            "name": "Интервал",
            "code": "INTERVAL",
            "require": false
          },
          {
            "name": "Повторять до",
            "code": "UNTIL",
            "require": false
          }
        ]
      },
      {
        "name": "Для всех",
        "code": "for_all",
        "require": false,
        "disabled": true,
        "value": true
      },
      {
        "name": "Участники",
        "code": "filter",
        "require": false,
        "value": null,
        "users": [],
        "description": "Если не задано никаких ограничений по отображению события, то оно будет показано лично для вас",
        "fields": [
          {
            "name": "Оператор",
            "code": "operator",
            "require": false,
            "possibleValues": [
              {
                "code": "and",
                "name": "И"
              },
              {
                "code": "or",
                "name": "Или"
              }
            ]
          }
        ],
        "possibleValues": [
          {
            "name": "Роль",
            "code": "role",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 105,
                "name": "Сотрудник"
              },
              {
                "id": 106,
                "name": "Руководитель"
              },
              {
                "id": 1,
                "name": "Менеджер"
              }
            ]
          },
          {
            "name": "Отдел",
            "code": "department",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 4,
                "name": "Факт - руководство",
                "parent": null,
                "manager": {
                  "id": 1,
                  "name": "Админов Админ"
                },
                "canDelete": false,
                "items": [
                  {
                    "id": 1,
                    "name": "Электронная коммерция и очень длинное название раздела",
                    "parent": 4,
                    "manager": {
                      "id": 23,
                      "name": "Комиссаров Илья"
                    },
                    "canDelete": true,
                    "items": [
                      {
                        "id": 13,
                        "name": "Отдел для Радмира",
                        "parent": 1,
                        "manager": {
                          "id": 8,
                          "name": "Батыров Ильшат"
                        },
                        "canDelete": true,
                        "items": []
                      },
                      {
                        "id": 3,
                        "name": "Разработка ecom",
                        "parent": 1,
                        "manager": {
                          "id": 6,
                          "name": "Порецков Олег"
                        },
                        "canDelete": true,
                        "items": [
                          {
                            "id": 9,
                            "name": "Для админа",
                            "parent": 3,
                            "manager": {
                              "id": 1,
                              "name": "Админов Админ"
                            },
                            "canDelete": true,
                            "items": [
                              {
                                "id": 11,
                                "name": "DevOps",
                                "parent": 9,
                                "manager": null,
                                "canDelete": true,
                                "items": []
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  },
                  {
                    "id": 2,
                    "name": "Юнит Факт.Руки",
                    "parent": 4,
                    "manager": {
                      "id": 1,
                      "name": "Админов Админ"
                    },
                    "canDelete": true,
                    "items": []
                  },
                  {
                    "id": 17,
                    "name": "HR",
                    "parent": 4,
                    "manager": null,
                    "canDelete": true,
                    "items": []
                  },
                  {
                    "id": 12,
                    "name": "Отдел аналитики",
                    "parent": 4,
                    "manager": {
                      "id": 29,
                      "name": "Лагун Владимир"
                    },
                    "canDelete": true,
                    "items": []
                  },
                  {
                    "id": 8,
                    "name": "Факт.Качество",
                    "parent": 4,
                    "manager": {
                      "id": 4,
                      "name": "Сколунова Лидия"
                    },
                    "canDelete": true,
                    "items": []
                  }
                ]
              },
              {
                "id": 10,
                "name": "Юнит E-commerce",
                "parent": null,
                "manager": null,
                "canDelete": true,
                "items": [
                  {
                    "id": 16,
                    "name": "222",
                    "parent": 10,
                    "manager": null,
                    "canDelete": true,
                    "items": []
                  },
                  {
                    "id": 14,
                    "name": "Для ивана",
                    "parent": 10,
                    "manager": {
                      "id": 96,
                      "name": "Банан Абанан"
                    },
                    "canDelete": true,
                    "items": []
                  }
                ]
              }
            ]
          },
          {
            "name": "Команда",
            "code": "team",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 2,
                "name": "Заказная разработка"
              },
              {
                "id": 3,
                "name": "команда проекта с длинным названием"
              },
              {
                "id": 1,
                "name": "МояКоманда"
              }
            ]
          },
          {
            "name": "Должность",
            "code": "position",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 3,
                "name": "Backend developer"
              },
              {
                "id": 5,
                "name": "CTO"
              },
              {
                "id": 2,
                "name": "Frontend developer"
              },
              {
                "id": 46,
                "name": "HR Generalist"
              },
              {
                "id": 48,
                "name": "HR Lead"
              },
              {
                "id": 47,
                "name": "HR Specialist"
              },
              {
                "id": 41,
                "name": "Администратор проектов"
              },
              {
                "id": 24,
                "name": "Аккаунт директор"
              },
              {
                "id": 40,
                "name": "Арт-директор"
              },
              {
                "id": 31,
                "name": "Бизнес-аналитик"
              },
              {
                "id": 18,
                "name": "Ведущий проектировщик"
              },
              {
                "id": 28,
                "name": "Ведущий тестировщик"
              },
              {
                "id": 12,
                "name": "Генеральный директор"
              },
              {
                "id": 19,
                "name": "Главный бухгалтер"
              },
              {
                "id": 34,
                "name": "Дизайнер"
              },
              {
                "id": 14,
                "name": "Директор по продажам"
              },
              {
                "id": 17,
                "name": "Директор по продукту"
              },
              {
                "id": 13,
                "name": "Директор по управлению проектами"
              },
              {
                "id": 20,
                "name": "Директор Факт.Сеть"
              },
              {
                "id": 11,
                "name": "Коммерческий директор"
              },
              {
                "id": 9,
                "name": "мастер на все руки"
              },
              {
                "id": 30,
                "name": "Менеджер по продажам"
              },
              {
                "id": 10,
                "name": "Менеджер по продукту"
              },
              {
                "id": 22,
                "name": "Менеджер проектов"
              },
              {
                "id": 44,
                "name": "Младший системный администратор"
              },
              {
                "id": 29,
                "name": "Помощник руководителя"
              },
              {
                "id": 21,
                "name": "Программист"
              },
              {
                "id": 45,
                "name": "Разработчик"
              },
              {
                "id": 42,
                "name": "разработчик Б24"
              },
              {
                "id": 7,
                "name": "Руководитель отдела"
              },
              {
                "id": 39,
                "name": "Руководитель отдела маркетинга"
              },
              {
                "id": 35,
                "name": "Руководитель отдела Мобильные приложения"
              },
              {
                "id": 23,
                "name": "Руководитель отдела системного администрирования"
              },
              {
                "id": 37,
                "name": "Руководитель отдела тестирования"
              },
              {
                "id": 26,
                "name": "Руководитель отдела Факт.Руки"
              },
              {
                "id": 25,
                "name": "Руководитель отдела электронной коммерции"
              },
              {
                "id": 36,
                "name": "Руководитель партнерской программы"
              },
              {
                "id": 32,
                "name": "Руководитель службы персонала"
              },
              {
                "id": 43,
                "name": "Системный аналитик"
              },
              {
                "id": 38,
                "name": "Специалист по работе с тендерами"
              },
              {
                "id": 33,
                "name": "тестировщик"
              },
              {
                "id": 8,
                "name": "Тестировщик"
              },
              {
                "id": 16,
                "name": "Технический директор"
              },
              {
                "id": 6,
                "name": "Технический руководитель проектов"
              },
              {
                "id": 15,
                "name": "Технический руководитель проектов Битрикс24"
              },
              {
                "id": 27,
                "name": "Фронтенд-разработчик"
              }
            ]
          },
          {
            "name": "Компания",
            "code": "division",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 4,
                "name": "Логика"
              },
              {
                "id": 3,
                "name": "Факт"
              },
              {
                "id": 6,
                "name": "Факт.Сеть"
              }
            ]
          },
          {
            "name": "Локация",
            "code": "location",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 7,
                "name": "Калиниград"
              },
              {
                "id": 6,
                "name": "Краснодар"
              },
              {
                "id": 8,
                "name": "Кук"
              },
              {
                "id": 1,
                "name": "Магнитогорск"
              },
              {
                "id": 4,
                "name": "Москва"
              },
              {
                "id": 2,
                "name": "Оренбург"
              },
              {
                "id": 3,
                "name": "Санкт-Петербург"
              },
              {
                "id": 5,
                "name": "Уфа"
              }
            ]
          },
          {
            "name": "Вид занятости",
            "code": "employment",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": [
              {
                "id": 8,
                "name": "Full time"
              },
              {
                "id": 7,
                "name": "Part time 50%"
              },
              {
                "id": 1,
                "name": "Полная занятость"
              },
              {
                "id": 5,
                "name": "Полная занятость - удаленно"
              },
              {
                "id": 4,
                "name": "Частичная занятость"
              },
              {
                "id": 6,
                "name": "Частичная занятость - удаленно"
              }
            ]
          },
          {
            "name": "Конкретный человек",
            "code": "user",
            "fields": [
              {
                "name": null,
                "code": "operator",
                "require": true,
                "possibleValues": [
                  {
                    "code": "in",
                    "name": "Включает"
                  },
                  {
                    "code": "not-in",
                    "name": "Не включает"
                  }
                ]
              }
            ],
            "possibleValues": null
          },
          {
            "name": "Атрибут сотрудника",
            "code": "user_attribute",
            "fields": [
              {
                "name": null,
                "code": "field",
                "require": true,
                "possibleValues": [
                  {
                    "id": 41,
                    "name": "Gmail",
                    "code": "gmail",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 7,
                    "name": "Telegram",
                    "code": "telegram",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 26,
                    "name": "Ваше резюме",
                    "code": "978bd900-b640-4c1b-bc78-5414acd7ff46",
                    "type": "file",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 24,
                    "name": "Ваши сильные стороны",
                    "code": "978bd849-f55d-41ee-a1fe-62ccf2d32fcb",
                    "type": "text",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 13,
                    "name": "Ваши ученики",
                    "code": "96e0cf6f-6c9f-45bd-a31b-70c66c480e5f",
                    "type": "multi_employee",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 27,
                    "name": "Ваш Тимлид",
                    "code": "978bd9f9-cab2-4b02-8c2f-bf5272099ed3",
                    "type": "employee",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 60,
                    "name": "ввв",
                    "code": "99a489fb-16b5-4a61-bafa-580ff1abd25f",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 31,
                    "name": "Виталя",
                    "code": "97a7d917-cf5f-414b-a29b-55511558d66b",
                    "type": "select",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": [
                      {
                        "id": 9,
                        "name": "1213",
                        "code": "97a7d917-d660-4a2d-bec6-40c6448ff824"
                      },
                      {
                        "id": 10,
                        "name": "123",
                        "code": "97a7d917-d720-4c3e-a98c-f59dcc143dfd"
                      }
                    ]
                  },
                  {
                    "id": 29,
                    "name": "вопрос",
                    "code": "978d7e8a-27c2-4425-8986-15641417ec1d",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 28,
                    "name": "Все Ваши телефоны",
                    "code": "978bda8d-50d6-49c1-99b8-7608bd4384e9",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 30,
                    "name": "выбор цифры",
                    "code": "97a39524-d00e-4f61-85bd-cf8ffebb9a3e",
                    "type": "multi_select",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": [
                      {
                        "id": 6,
                        "name": "1",
                        "code": "97a39524-d498-4254-8bb1-9d850d07e3fb"
                      },
                      {
                        "id": 7,
                        "name": "2",
                        "code": "97a39524-d5e0-4fe7-99b3-64e066a6130e"
                      },
                      {
                        "id": 8,
                        "name": "3",
                        "code": "97a39524-d675-48cc-8ae6-aaa1e163ed7d"
                      }
                    ]
                  },
                  {
                    "id": 3,
                    "name": "Дата рождения",
                    "code": "birthday",
                    "type": "date",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "more",
                            "name": "Больше чем"
                          },
                          {
                            "code": "less",
                            "name": "Меньше чем"
                          },
                          {
                            "code": "in-past",
                            "name": "В прошлом"
                          },
                          {
                            "code": "in-future",
                            "name": "В будущем"
                          },
                          {
                            "code": "today",
                            "name": "Сегодня"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 34,
                    "name": "Дети",
                    "code": "97c19496-06b2-4c14-9a7f-adf76733900e",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 35,
                    "name": "Дети тест",
                    "code": "97c19699-d2c7-42aa-87fc-59e269c441be",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 25,
                    "name": "Желаемая зарплата",
                    "code": "978bd87e-432f-42a5-9f92-3ebf4fffe639",
                    "type": "integer",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "more",
                            "name": "Больше чем"
                          },
                          {
                            "code": "less",
                            "name": "Меньше чем"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 40,
                    "name": "Заметки HR",
                    "code": "97c3af2e-0051-44d0-ba4b-437e24ab1630",
                    "type": "text",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 61,
                    "name": "йцй",
                    "code": "99a48a09-5a3e-41c4-9620-af95c17c147a",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 10,
                    "name": "картинка",
                    "code": "96e0a423-6313-43c6-8e34-75bd1021c00b",
                    "type": "file",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 21,
                    "name": "Картинка",
                    "code": "974728f9-6c92-4734-98e1-e7b587e3aab1",
                    "type": "file",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 23,
                    "name": "Любимая дата",
                    "code": "978bd818-84c4-445a-8d27-f07f83734170",
                    "type": "date",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "more",
                            "name": "Больше чем"
                          },
                          {
                            "code": "less",
                            "name": "Меньше чем"
                          },
                          {
                            "code": "in-past",
                            "name": "В прошлом"
                          },
                          {
                            "code": "in-future",
                            "name": "В будущем"
                          },
                          {
                            "code": "today",
                            "name": "Сегодня"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 22,
                    "name": "Марка автомобиля",
                    "code": "978bd7ae-46b1-4902-afb8-ff5de345ab7d",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 16,
                    "name": "Надежный товарищ",
                    "code": "97087be4-efa1-481a-858d-92ff5c2af303",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 39,
                    "name": "несколько",
                    "code": "97c1b4e8-7585-478a-b6dd-4c0d3818cebc",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 32,
                    "name": "несколько",
                    "code": "97b3fb23-355d-4b00-846a-5fef3884bf62",
                    "type": "multi_select",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": [
                      {
                        "id": 11,
                        "name": "1",
                        "code": "97b3fb23-3ba3-4467-82ef-fc2017baec6c"
                      },
                      {
                        "id": 12,
                        "name": "2",
                        "code": "97b3fb23-3c55-450c-b0c3-356f35284477"
                      },
                      {
                        "id": 13,
                        "name": "3",
                        "code": "97b3fb23-3ced-4da4-ade5-6215ed80a3ee"
                      }
                    ]
                  },
                  {
                    "id": 37,
                    "name": "несколько сотрудников",
                    "code": "97c1a141-f372-4f1e-a65a-cd3d4388a72f",
                    "type": "multi_employee",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 36,
                    "name": "Несколько текстовых",
                    "code": "97c19daa-59ea-45ed-af63-67dcb091a18e",
                    "type": "multi_string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 63,
                    "name": "новое поле",
                    "code": "99ba894e-1492-4e47-9908-fa6456316753",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 62,
                    "name": "новое поле",
                    "code": "99ba8784-4e04-442a-bc82-56f37d5a598d",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 4,
                    "name": "Пол",
                    "code": "gender",
                    "type": "select",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": [
                      {
                        "id": 2,
                        "name": "Женский",
                        "code": "woman"
                      },
                      {
                        "id": 1,
                        "name": "Мужской",
                        "code": "man"
                      }
                    ]
                  },
                  {
                    "id": 19,
                    "name": "поле с подсказкой",
                    "code": "9726ec99-2afc-4fd8-a08d-b13edeff3dc7",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 15,
                    "name": "Поле тип Да-Нет",
                    "code": "96fab99c-8789-4a93-976c-f81feb9bfe02",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 20,
                    "name": "Профсоюз",
                    "code": "9739387b-874e-4fdb-8438-43ff2c2ac0a0",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 33,
                    "name": "Руководитель группы",
                    "code": "97bfb0bf-fca2-4387-99cc-3c02761ac1a9",
                    "type": "employee",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 17,
                    "name": "сотрудник",
                    "code": "9722f38e-7103-4bef-8a99-b1520b32a8b3",
                    "type": "employee",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "in",
                            "name": "Включает"
                          },
                          {
                            "code": "not-in",
                            "name": "Не включает"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 6,
                    "name": "Соц.сети",
                    "code": "96e09562-ccce-4d92-8b01-070c662af884",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 38,
                    "name": "текст1",
                    "code": "97c1b4db-b413-408d-a7bc-b472ced87492",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 59,
                    "name": "текстовое поле для ссылки",
                    "code": "99a0a7dc-8efe-4b6e-902d-035a6352efa4",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 5,
                    "name": "Телефон",
                    "code": "phone",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 8,
                    "name": "тест",
                    "code": "96e0a1b1-78d5-4ef3-974a-b52b174900c4",
                    "type": "boolean",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "is-true",
                            "name": "Является верным"
                          },
                          {
                            "code": "is-false",
                            "name": "Является неверным"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 9,
                    "name": "тест1",
                    "code": "96e0a3e2-fa0e-4730-bdfd-0d445c17cc91",
                    "type": "integer",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "more",
                            "name": "Больше чем"
                          },
                          {
                            "code": "less",
                            "name": "Меньше чем"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 55,
                    "name": "файл",
                    "code": "9925d6a5-f250-40cd-97cc-3f8f57754160",
                    "type": "file",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 2,
                    "name": "Электронная почта",
                    "code": "email",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  },
                  {
                    "id": 42,
                    "name": "Yandex",
                    "code": "yandex",
                    "type": "string",
                    "fields": [
                      {
                        "name": null,
                        "code": "operator",
                        "require": true,
                        "possibleValues": [
                          {
                            "code": "equal",
                            "name": "Равно"
                          },
                          {
                            "code": "not-equal",
                            "name": "Не равно"
                          },
                          {
                            "code": "start-with",
                            "name": "Начинается с"
                          },
                          {
                            "code": "end-on",
                            "name": "Заканчивается на"
                          },
                          {
                            "code": "contains",
                            "name": "Содержит"
                          },
                          {
                            "code": "not-contains",
                            "name": "Не содержит"
                          },
                          {
                            "code": "empty",
                            "name": "Является пустым"
                          },
                          {
                            "code": "not-empty",
                            "name": "Не является пустым"
                          }
                        ]
                      }
                    ],
                    "possibleValues": []
                  }
                ]
              }
            ],
            "possibleValues": null
          }
        ]
      },
      {
        "name": "Уведомить пользователей",
        "code": "notify_email",
        "require": false,
        "value": false
      }
    ]
  }
}

  ''';

  final myModel = TestTree.fromJson(jsonString);
  final List<PullDownMenuEntry> pullDownWidgets = [];
  int level = 0;

  // List<dynamic> flatPossibleValues(
  //     List<dynamic> source, List<dynamic> target, int level) {
  //   target = [];
  //   level = 0;
  //   if (source.isNotEmpty) {
  //     for (int i = 0; i < source.length; i++) {
  //       target.add({...source[i], 'level': level});
  //       if (source[i]['items'] != null) {
  //         flatPossibleValues(source[i]['items'] as List<Map<String, dynamic>>,
  //             target, level + 1);
  //       }
  //     }
  //   }
  //   return target;
  // }

  // List<dynamic> findPossibleTrees(List source) {
  //   return source;
  // }

  // bool isBranch(DataField source) {
  //   print(source.code);
  //   return source.code == "department";
  // }

  Widget generateList(List source) {
    if (source.isEmpty) {
      level = 1;
    } else {
      level++;
    }
    // if (source.isNotEmpty) {
    //   pullDownWidgets.add(
    //     PullDownMenuItem(
    //       title: '- ${source[index]['name']}',
    //       onTap: () {},
    //     ),
    //   );
    // }

    return source.isNotEmpty
        ? ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: (source).length,
            itemBuilder: (context, index) {
              pullDownWidgets.add(
                PullDownMenuItem(
                  title: '${'——' * level} ${source[index]['name']}',
                  onTap: () {},
                ),
              );
              return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView(shrinkWrap: true, children: [
                    ListTile(
                        title: Text("${'-' * level} ${source[index]['name']}")),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: generateList(source[index]['items']))
                  ]));
            })
        : Container();
  }

  // List<dynamic> flatPossibleValues(List<dynamic> source,
  //     [List<dynamic> target = const [], int level = 0]) {
  //   if (source.length > 0) {
  //     for (int i = 0; i < source.length; i++) {
  //       target.add({...source[i], 'level': level});
  //       if (source[i]['items'] != null) {
  //         flatPossibleValues(source[i]['items'] as List<Map<String, dynamic>>,
  //             target, level + 1);
  //       }
  //       if (source[i]['children'] != null) {
  //         flatPossibleValues(
  //             source[i]['children'] as List<Map<String, dynamic>>,
  //             target,
  //             level + 1);
  //       }
  //     }
  //   }
  //   return target;
  // }

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JSON Serialization Demo'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              // Text(
              //   myModel.data!.fields![11].possibleValues![1]["name"].toString(),
              // ),
              // Text(
              //   myModel.data!.fields![11]
              //       .possibleValues![1]['possibleValues'][0]['name']
              //       .toString(),
              // ),

              // Text("test1"),

              // Text(
              //   findPossibleTrees(
              //     myModel.data!.fields![11].possibleValues,
              //     // myModel.data!.fields![11].possibleValues![1]
              //     // ["possibleValues"],
              //   ).toString(),
              // )
              PullDownButton(
                itemBuilder: (_) => pullDownWidgets,
                buttonBuilder: (_, showMenu) =>
                    ElevatedButton(onPressed: showMenu, child: const Text("Open")),
              ),

              SingleChildScrollView(
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: (myModel.data!.fields![11].possibleValues![1]
                              ["possibleValues"])
                          .length,
                      itemBuilder: (context, index) {
                        // isBranch((myModel.data!.fields![index] as DataField))
                        level = 0;
                        pullDownWidgets.add(
                          PullDownMenuItem(
                            title:
                                '${myModel.data!.fields![11].possibleValues![1]["possibleValues"][index]['name']}',
                            onTap: () {},
                          ),
                        );
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: 500,
                            child: ListView(shrinkWrap: true, children: [
                              ListTile(
                                  title: Text(
                                      '''* ${myModel.data!.fields![11].possibleValues![1]["possibleValues"][index]['name']}'''
                                          .toString())),
                              Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: generateList(myModel
                                          .data!.fields![11].possibleValues![1]
                                      ["possibleValues"][index]['items']))
                            ])
                            // : Container(
                            //     height: 20,
                            //     width: MediaQuery.of(context).size.width,
                            //     color: Colors.black,
                            //   ),
                            );
                      }))

              // child: ListView.builder(
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount:
              //         (myModel.data!.fields![11].possibleValues!).length,
              //     itemBuilder: (context, index) =>
              //         // isBranch((myModel.data!.fields![index] as DataField))
              //         SizedBox(
              //             width: MediaQuery.of(context).size.width,
              //             // height: 500,
              //             child: ListTile(
              //                 title: Text(myModel.data!.fields![11]
              //                     .possibleValues![index]['name']
              //                     .toString()))
              //             // : Container(
              //             //     height: 20,
              //             //     width: MediaQuery.of(context).size.width,
              //             //     color: Colors.black,
              //             //   ),
              //             )))

              //   child: ListView.builder(
              //       physics: NeverScrollableScrollPhysics(),
              //       shrinkWrap: true,
              //       itemCount: (myModel.data!.fields!).length,
              //       itemBuilder: (context, index) =>
              //           // isBranch((myModel.data!.fields![index] as DataField))
              //           SizedBox(
              //               width: MediaQuery.of(context).size.width,
              //               // height: 500,
              //               child: ListTile(
              //                   title: Text(myModel.data!.fields![index].name
              //                       .toString()))
              //       // : Container(
              //       //     height: 20,
              //       //     width: MediaQuery.of(context).size.width,
              //       //     color: Colors.black,
              //       //   ),
              //       )
              // )

              // Text(
              //   flatPossibleValues(
              //           myModel.data!.fields![11].possibleValues,
              //           // myModel.data!.fields![11].possibleValues![1]
              //               // ["possibleValues"],
              //           )
              //       .toString(),
              // )
            ],
          ),
        )
            // ListView.builder(
            //   itemCount: (myModel.data!.fields![11].possibleValues![1]
            //           ['possibleValues'][0]['items'])
            //       .length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Text(myModel.data!.fields![11].possibleValues![1]
            //           ['possibleValues'][0]['items'][index]["name"].toString()

            //       );
            //   },
            // ),
            ),
      ),
    ),
  );
}
