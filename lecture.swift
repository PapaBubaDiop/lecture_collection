  
import PlaygroundSupport

import Foundation

  var p1:Int = 500
  var p2:Int = 500
  var p3:Int = 2500
  var p4:Int = 0


  var total = p1 + p2 + p3 + p4
  print("vars: total=", total)
  
  
  
  var gifts: [Int] = [500, 500, 2500, 0]
  
  total = 0
  for p in gifts {
    total = total + p
  }
  print("array: total=", total)
  
  
  var personalGifts: [String: Int] = ["papa": 500, "mama": 500, "baba": 2500, "bro": 0 ]
  total = 0
  for g in personalGifts.values {
    total = total + g
  }
  print("Dict: total=", total)

  
  ///////////////////////////////////////////////////////
  // Списки
  
  // Создание пустого массива
  var someGifts = [Int]()
  
  // Добавление элементаmore массива
  someGifts.append(1000)

  // массив с дефолтным значением
  someGifts = Array(repeating: 100, count: 3)
  
  // объединениe двух массивов
  someGifts = someGifts + gifts
  someGifts += [200, 5000]

  // извлечь значение из массива
  var firstGift = someGifts[0]

  // изменениe первого элемента в списке
  
  someGifts[0] = 50
  
  // изменениe диапазона значений
  someGifts[2...5] = [200, 2000]
 
  // Для вставки элемента по заданному индексу внутрь массива
  someGifts.insert(100, at: 1)
  
  // Итерация по списку с индексом
  for (index, value) in gifts.enumerated() {
    print("Gift \(index + 1): \(value)")
  }
  
  
  
  ///////////////////////////////////////////////////////////////////
  // Словари

  // добавить новый элемент в словарь
  personalGifts["сестра"] = 200
  
  
  // изменение значения связанного с ключом Сестра
  personalGifts["сестра"] = 500
  
  if let oldGift = personalGifts.updateValue(1000, forKey: "сестра") {
        print("The old gift was \(oldGift)")
  }

  // получение значения по ключу
  if let gift = personalGifts["сестра"] {
    print("The gift from sister is \(gift)")
  } else {
    print("not gift from sister")
  }

  
  // удалить пару ключ-значение из словаря
  if let removedGift = personalGifts.removeValue(forKey: "сестра") {
    print("The removed gift is \(removedGift)")
  } else {
    print("Чего? Она ничего и не дарила")
  }

  
  // Итерация по словарю

  for (user, gift) in personalGifts {
    print("\(user): \(gift)")
  }

  // множества
  // для задач комбинаторики
  
  let gifts2019: Set = [1, 2, 3, 4, 5]
  let gifts2020: Set = [4, 5, 6, 7, 8]
  let gifts2021: Set = [6, 7, 8, 9, 0]
   
  print(gifts2019.union(gifts2021).sorted())
  print(gifts2019.intersection(gifts2021).sorted())
  print(gifts2019.subtracting(gifts2020).sorted())
  print(gifts2020.symmetricDifference(gifts2021).sorted())
/*
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  []
  [1, 2, 3]
  [0, 4, 5, 9]
*/
  
  
  
  
 
  
  
  

