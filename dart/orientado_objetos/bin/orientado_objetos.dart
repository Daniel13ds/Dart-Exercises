class Producto {
  String nombre;
  String descripcion;
  double precio;

  set setNombre(String nuevoNombre) {
    this.nombre = nuevoNombre;
  }

  get getNombre {
    return this.nombre;
  }

  set setDescripcion(String nuevaDescripcion) {
    this.descripcion = nuevaDescripcion;
  }

  get getDescripcion {
    return this.descripcion;
  }

  set setPrecio(double nuevoPrecio) {
    this.precio = nuevoPrecio;
  }

  get getPrecio {
    return this.precio;
  }

  Producto(this.nombre, this.descripcion, this.precio);
}

class ProductoTienda extends Producto {
  DateTime caducidad;
  int cantidad;

  set setCaducidad(DateTime nuevaCaducidad) {
    this.caducidad = nuevaCaducidad;
  }

  get getCaducidad {
    return this.caducidad;
  }

  set setCantidad(int nuevaCantidad) {
    this.cantidad = nuevaCantidad;
  }

  get getCantidad {
    return this.cantidad;
  }

  ProductoTienda(String nombre, String descripcion, double precio,
      this.caducidad, this.cantidad)
      : super(nombre, descripcion, precio);
}

class Caducidad {
  String Caducado(DateTime caducidad) {
    if (caducidad.isAfter(DateTime.now())) {
      return 'Esta caducado';
    } else {
      return 'No esta Caducado';
    }
  }
}

class Hamburguesa extends ProductoTienda {
  bool vegetariana;
  String carne;

  set setVegetariana(bool nuevaVegetariana) {
    this.vegetariana = nuevaVegetariana;
    if (nuevaVegetariana == true) {
      print('Vegetariana');
    } else {
      print('No Vegetariana');
    }
  }

  get getVegetariana {
    if (this.vegetariana == true) {
      return 'Vegetariana';
    } else {
      return 'No Vegetariana';
    }
  }

  set setCarne(String nuevaCarne) {
    if (nuevaCarne.toUpperCase() != 'TERNERA' ||
        nuevaCarne.toUpperCase() != 'POLLO') {
      this.carne = 'Sin Carne';
    } else {
      this.carne = nuevaCarne.toUpperCase();
    }
  }

  get getCarne {
    return this.carne;
  }

  Hamburguesa(String nombre, String descripcion, double precio,
      DateTime caducidad, int cantidad, this.vegetariana, this.carne)
      : super(nombre, descripcion, precio, caducidad, cantidad);

  Hamburguesa.Pollo(String nombre, String descripcion, double precio,
      DateTime caducidad, int cantidad, this.vegetariana, this.carne)
      : super(nombre, descripcion, precio, caducidad, cantidad) {
    nombre = 'Hamburguesa de Pollo';
    descripcion = 'Hamburguesa de Pollo frito';
    precio = 7.95;
    caducidad = DateTime(6 - 11 - 2020);
    cantidad = 37;
    this.vegetariana = false;
    this.carne = 'POLLO';
  }

  Hamburguesa.Vegetariana(String nombre, String descripcion, double precio,
      DateTime caducidad, int cantidad, this.vegetariana, this.carne)
      : super(nombre, descripcion, precio, caducidad, cantidad) {
    nombre = 'Hamburguesa Vegetariana';
    descripcion = 'Hamburguesa Vegetariana de tofu';
    precio = 6.95;
    caducidad = DateTime(12 - 11 - 2020);
    cantidad = 10;
    this.vegetariana = true;
    this.carne = 'Sin carne';
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  String hamburguesaToString(Hamburguesa hamburguesa) {
    if (hamburguesa.getVegetariana == false) {
      return '${hamburguesa.getNombre} ${hamburguesa.getCarne}: ${hamburguesa.getDescripcion}';
    } else {
      return '${hamburguesa.getNombre} Vegetariana: ${hamburguesa.getDescripcion}';
    }
  }
}

class Bebida extends ProductoTienda {
  String tipo;
  bool alcohol;

  set setTipo(String nuevoTipo) {
    if (nuevoTipo.toUpperCase() != 'ZERO' ||
        nuevoTipo.toUpperCase() != 'LIGHT' ||
        nuevoTipo.toUpperCase() != 'NORMAL') {
      this.tipo = 'Sin bebida';
    } else {
      this.tipo = nuevoTipo.toUpperCase();
    }
  }

  get getTipo {
    return this.tipo;
  }

  set setAlcohol(bool nuevoAlcohol) {
    this.alcohol = nuevoAlcohol;
  }

  get getAlcohol {
    return this.alcohol;
  }

  Bebida(String nombre, String descripcion, double precio, DateTime caducidad,
      int cantidad, this.tipo, this.alcohol)
      : super(nombre, descripcion, precio, caducidad, cantidad);
  Bebida.Alcoholica(String nombre, String descripcion, double precio,
      DateTime caducidad, int cantidad, this.tipo, this.alcohol)
      : super(nombre, descripcion, precio, caducidad, cantidad) {
    nombre = 'Cerveza';
    descripcion = 'Cerveza de cebada';
    precio = 2.00;
    caducidad = DateTime(23 - 5 - 2022);
    cantidad = 39;
    this.tipo = 'NORMAL';
    this.alcohol = true;
  }

  String bebidaToString(Bebida bebida) {
    if (bebida.getAlcohol == true) {
      return '${bebida.getNombre} ${bebida.getTipo}: ${bebida.getDescripcion}';
    } else {
      return '${bebida.getNombre} ${bebida.getTipo}: ${bebida.getDescripcion} sin alcohol';
    }
  }
}

class Postre extends ProductoTienda {
  bool lactosa;

  set setLactosa(bool nuevaLactosa) {
    this.lactosa = nuevaLactosa;
  }

  get getLactosa {
    return this.lactosa;
  }

  Postre(String nombre, String descripcion, double precio, DateTime caducidad,
      int cantidad, this.lactosa)
      : super(nombre, descripcion, precio, caducidad, cantidad);

  String postreToString(Postre postre) {
    if (postre.getLactosa == true) {
      return '${postre.getNombre}: ${postre.getDescripcion}';
    } else {
      return '${postre.getNombre}: ${postre.getDescripcion} sin lactosa';
    }
  }
}

class Menu {
  Hamburguesa hamburguesa =
      Hamburguesa('', '', 0.0, DateTime.now(), 0, false, '');
  Bebida bebida = Bebida('', '', 0.0, DateTime.now(), 0, '', false);
  Postre postre = Postre('', '', 0.0, DateTime.now(), 0, false);

  set setHamburguesa(Hamburguesa nuevaHamburguesa) {
    this.hamburguesa = nuevaHamburguesa;
  }

  get getHamburgues {
    return this.hamburguesa;
  }

  set setBebida(Bebida nuevaBebida) {
    this.bebida = nuevaBebida;
  }

  get getBebida {
    return this.bebida;
  }

  Menu(this.hamburguesa, this.bebida, this.postre);

  String menuToString(Menu menu) {
    return '''Menu: 
    ${menu.hamburguesa.hamburguesaToString(menu.hamburguesa)} 
    ${menu.bebida.bebidaToString(menu.bebida)} 
    ${menu.postre.postreToString(menu.postre)}''';
  }
}

void main(List<String> arguments) {
  Hamburguesa hamburguesa1 = Hamburguesa(
      'Hamburguesa de Ternera',
      'Hamburguesa de Ternera y queso',
      8.55,
      DateTime(9 - 12 - 2020),
      33,
      false,
      'TERNERA');
  Hamburguesa hamburguesa2 = Hamburguesa.Vegetariana('Hamburguesa Vegetariana',
      'Hamburguesa sin carne', 0, DateTime(9 - 12 - 2020), 0, false, '');
  Hamburguesa hamburguesa3 = Hamburguesa.Pollo(
      'Hamburguesa de Pollo',
      'Hamburguesa de pollo con lechuga y tomate',
      0,
      DateTime(9 - 12 - 2020),
      0,
      false,
      '');
  Bebida bebida1 = Bebida('Coca-cola', 'Refresco de cola', 1.50,
      DateTime(19 - 4 - 2023), 57, 'NORMAL', false);
  Bebida bebida2 = Bebida.Alcoholica('Cerveza', 'Cerveza de cebada', 1.80,
      DateTime(19 - 4 - 2023), 57, 'NORMAL', false);
  Postre postre1 = Postre('Tarta de Chocolate', 'Tarta de Chocolate con leche',
      3, DateTime(13 - 11 - 2020), 12, true);
  Menu menu1 = Menu(hamburguesa1, bebida2, postre1);
  Menu menu2 = Menu(hamburguesa3, bebida2, postre1);
  Menu menu3 = Menu(hamburguesa2, bebida1, postre1);

  //hamburguesa1.Caducado(hamburguesa1.caducidad);

  print(menu1.menuToString(menu1));
  print(menu2.menuToString(menu2));
  print(menu3.menuToString(menu3));
}
