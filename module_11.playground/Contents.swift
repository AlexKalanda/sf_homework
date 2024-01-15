import UIKit

// 2) МАССИВ "Дни в месяцах"

let daysInMonths = [31,29,31,30,31,30,31,31,30,31,30,31]

//2.1 вывести количество дней в каждом месяце

print("Количество дней в месяцах 2024 года :\n Январь: \(daysInMonths[0]),\n Февраль: \(daysInMonths[1]),\n Март: \(daysInMonths[2]),\n Апрель: \(daysInMonths[3]),\n Май: \(daysInMonths[4]),\n Июнь: \(daysInMonths[5]),\n Июль: \(daysInMonths[6]),\n Август: \(daysInMonths[7]),\n Сентябрь: \(daysInMonths[8]),\n Октябрь: \(daysInMonths[9]),\n Ноябрь: \(daysInMonths[10]),\n Декабрь: \(daysInMonths[11]).")

//2.2 использю еще один массив с именами месяцев чтобы вывести название месяца + количество дней
 
let nameMonths = ["Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь"]

print("Количество дней в месяцах 2024 года :\n \(nameMonths[0]): \(daysInMonths[0]),\n \(nameMonths[1]): \(daysInMonths[1]),\n \(nameMonths[2]): \(daysInMonths[2]),\n \(nameMonths[3]): \(daysInMonths[3]),\n \(nameMonths[4]): \(daysInMonths[4]),\n \(nameMonths[5]): \(daysInMonths[5]),\n \(nameMonths[6]): \(daysInMonths[6]),\n \(nameMonths[7]): \(daysInMonths[7]),\n \(nameMonths[8]): \(daysInMonths[8]),\n \(nameMonths[9]): \(daysInMonths[9]),\n \(nameMonths[10]): \(daysInMonths[10]),\n \(nameMonths[11]): \(daysInMonths[11]).")

//2.3 делаю тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)

let tuplesDaysInMonths: [(months: String, days: Int)] = [
("Январь",31),
("Февраль",28),
("Март",31),
("Апрель",30),
("Май",31),
("Июнь",30),
("Июль",31),
("Август",31),
("Сентябрь",30),
("Октябрь",31),
("Ноябрь",30),
("Декабрь",31)]

print("Количество дней в месяцах 2024 года : \(tuplesDaysInMonths[0].0): \(tuplesDaysInMonths[0].1), \(tuplesDaysInMonths[1].0): \(tuplesDaysInMonths[1].1), \(tuplesDaysInMonths[2].months): \(tuplesDaysInMonths[2].days), \(tuplesDaysInMonths[3].months): \(tuplesDaysInMonths[3].days), \(tuplesDaysInMonths[4].months): \(tuplesDaysInMonths[4].days), \(tuplesDaysInMonths[5].months): \(tuplesDaysInMonths[5].days), \(tuplesDaysInMonths[6].months): \(tuplesDaysInMonths[6].days), \(tuplesDaysInMonths[7].months): \(tuplesDaysInMonths[7].days), \(tuplesDaysInMonths[8].months): \(tuplesDaysInMonths[8].days), \(tuplesDaysInMonths[9].months): \(tuplesDaysInMonths[9].days), \(tuplesDaysInMonths[10].months): \(tuplesDaysInMonths[10].days), \(tuplesDaysInMonths[11].months): \(tuplesDaysInMonths[11].months).")

//2.4 делаю тоже самое, только выведи дни в обратном порядке (порядок в исходном массиве не меняется)

let reversedDaysInMonths = Array(daysInMonths.reversed())
print(daysInMonths)
print(reversedDaysInMonths)

//2.5 для произвольно выбранной даты (месяц и день) посчитай количество дней до конца года


let daysInYear =  [Array(1...31),Array(1...29),Array(1...31),Array(1...30),Array(1...31),Array(1...30),Array(1...31),Array(1...31),Array(1...30),Array(1...31),Array(1...30),Array(1...31)]
var newDayInYear = Array(daysInYear.joined())
var resultYear:[Int] = []
var data = newDayInYear[47]
for (index,day) in newDayInYear.enumerated() {
    if index > 47 {
        resultYear.append(day)
        var ostatoc = resultYear.count
    }
}


// 3. Создай словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.

var magazine: [String: Int] = ["Иван Иванов": 5, "Федор Федоров": 4,"Семен Сидоров": 3, "Алексей Кузнецов": 2,"Василий Пупкин":5,"Александр Александров": 2]

// Повысь студенту оценку за экзамен

magazine["Александр Александров"] = 4
print(magazine)

//  3.2 Если оценка положительная (4 или 5) или удовлетворительная (3), то выведи сообщение с поздравлением, отрицательная (1, 2) - отправь на пересдачу

for (key,value) in magazine {
    value > 2 ? print("Студент \(key) поздравляю, экзамен сдан!") : print("Студент \(key) , вы идете на пересдачу.")
}

// Добавь еще несколько студентов — это будут новые одногруппники!

magazine["Степан Алексеев"] = 3
magazine["Анна Ульянова"] =  5
print(magazine)

// Удали одного студента — он отчислен

magazine.removeValue(forKey: "Алексей Кузнецов")
print(magazine)

// Посчитай средний балл всей группы по итогам экзамена.
if true{
    var sum = 0
    
    for (_,value) in magazine {
       sum += value
    }
    var averageValue:Double = Double(sum) / Double(magazine.count)
    print("Средний балл группы : \(averageValue)")
}

