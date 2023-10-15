# ChatApp

## Пример использования

### Список чатов

```sh
curl -H 'Content-Type: application/json' http://localhost:3000/api/v1/chats
```

### Создание сообщения в чате с id = 1

```sh
curl -X POST -H 'Content-Type: application/json' -d '{"message":{"body":"James Bond 2","chat_id":1}}' http://localhost:3000/api/v1/messages
```

