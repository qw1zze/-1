# Калякин Дмитрий Александрович, БПИ 226

**Вариант 34. Условие задачи:** Сформировать массив B из элементов массива A заменив элементы
на четных местах суммой всех положительных элементов, а элементы на нечетных местах суммой отрицательных элементов.

**Работа выполнена на оценку 6.**

[Код на ассемблере](https://github.com/qw1zze/Individual-Homework-1/tree/main/Code)

[Тесты для программы](https://github.com/qw1zze/Individual-Homework-1/tree/main/tests)

**Пример работы программы.** Запрашивается число N, после которого проверяется его корректность и запрашивается ввод чисел. После выводится новый полученный массив:

![image](https://github.com/qw1zze/Individual-Homework-1/assets/109992610/f7d98391-4d62-41b5-b2cd-ecebf17527b2)

Весь код отмечен комментариями для понимания его работы.

В программе есть 3 функции для ввода, вывода и создания нового массива:
1. read_arr_Mi - Итеририуется по массиву и заполняет его входными значениями
2. get_new_arr_Mi - Проходит по первому массиву, находит суммы положительных и отрицательных элементов, после проходится по второму массиву и заполняет его разными суммами в зависимости от четности индекса, то есть элемент с индексом 0 заполнится суммой положительных.
3. output_arr - Проходится по массиву и выводит его элементы через пробел.
