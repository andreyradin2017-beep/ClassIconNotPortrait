# ClassIconNotPortrait

Аддон для WoW 3.3.5 (Sirus). Меняет стандартный портрет во встроенных юнит-фреймах (игрок, цель, фокус, группа) на иконку класса для игроков.

## Как работает

Перехватывает глобальную функцию `UnitFramePortrait_Update`. Для игроков загружает текстуру `Interface/TargetingFrame/UI-Classes-Circles` с координатами из стандартной таблицы `CLASS_ICON_TCOORDS`. Не-игрокам оставляет обычный портрет.

## Файлы

- `ClassIconNotPortrait.toc`
- `ClassIconNotPortrait.lua`

## Требования

- Interface `30300` (клиент WotLK / Sirus).
