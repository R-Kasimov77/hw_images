class Worker {
  final String name;
  final String surname;
  final String image;
  final String positon;
  final String direction;
  final String department;
  final String email;
  final String birth;
  final String number;
  final String patronymic; 

  Worker(
      {required this.name,
      required this.surname,
      required this.image,
      required this.positon,
      required this.direction,
      required this.department,
      required this.email,
      required this.birth,
      required this.number,
      required this.patronymic});
}

class Workers {
  static List<Worker> workers = [
    Worker(
      name: "Мырзабек",
      surname: "Жыпаркулов",
      image: "assets/images/w_1.png",
      positon: "Генеральный директор",
      direction: "Диреккция управления",
      department: "Отдел управления",
      email: "mjagarkulov@gosecotech.kg",
      birth: "16.09.1972",
      number: "0501331113",
      patronymic: "Бакаевич"
    ),
    Worker(
      name: "Жейхун",
      surname: "Ереванов",
      image: "assets/images/w_2.png",
      positon: "Подчиняется Равшану",
      direction: "Диреккция управления",
      department: "отдел управления",
      email: "mjagarkulov@gosecotech.kg",
      birth: "16.09.1972",
      number: "+9965501234321",
      patronymic: "Кайратович"
    ),
    Worker(
      name: "Мырзабек",
      surname: "Жыпаркулов",
      image: "assets/images/w_3.png",
      positon: "Генеральный директор",
      direction: "Диреккция управления",
      department: "Отдел управления",
      email: "mjagarkulov@gosecotech.kg",
      birth: "16.09.1972",
      number: "+9965501234321",
      patronymic: 'Саткынович'
    ),
    Worker(
      name: "Жейхун",
      surname: "Ереванов",
      image: "assets/images/w_4.png",
      positon: "Подчиняется Равшану",
      direction: "Диреккция управления",
      department: "Отдел управления",
      email: "mjagarkulov@gosecotech.kg",
      birth: "16.09.1972",
      number: "+9965501234321",
      patronymic: 'Андреевич'
    ),
    Worker(
      name: "Андрюха",
      surname: "Болотский",
      image: "assets/images/w_2.png",
      positon: "Подчиняется Равшану",
      direction: "Диреккция управления",
      department: "Отдел управления",
      email: "mjagarkulov@gosecotech.kg",
      birth: "16.09.1972",
      number: "+9965501234321",
      patronymic: 'Александрович'
      
    ),
  ];
}
