# Ejercicio 3 - Simulador de Plan de Pagos

## 📌 Descripción

Este proyecto corresponde al **Ejercicio 3** del curso de **Desarrollo Móvil Avanzado**.

El programa fue desarrollado en **Swift** y funciona como un simulador de un plan de pagos para la compra de un producto.

El usuario ingresa los datos del producto, selecciona un plan de financiamiento y puede registrar un pago adicional en un determinado mes.

## 🎯 Funcionalidades

El programa permite:

* Ingresar el nombre del producto.
* Ingresar el precio unitario.
* Ingresar la cantidad de productos.
* Seleccionar un plan de pago.
* Calcular el interés según el plan seleccionado.
* Calcular el monto total financiado.
* Calcular la cuota mensual.
* Registrar un pago adelantado.
* Generar un calendario de pagos.
* Mostrar las fechas de cada pago.
* Controlar el saldo pendiente.
* Mostrar un resumen final del financiamiento.

## 💰 Planes de pago

El programa utiliza los siguientes planes:

| Plan     | Interés |
| -------- | ------: |
| 6 meses  |     20% |
| 12 meses |     40% |
| 24 meses |     60% |

El interés se calcula sobre el monto total de la compra.

## 🧮 Cálculos principales

### Monto de compra

```text
Monto de compra = Precio unitario × Cantidad
```

### Interés

```text
Interés = Monto de compra × Porcentaje de interés
```

### Monto financiado

```text
Monto financiado = Monto de compra + Interés
```

### Cuota mensual

```text
Cuota mensual = Monto financiado / Número de meses
```

## 📅 Pago adelantado

El usuario puede indicar el mes en el que realizará un pago adicional.

Por ejemplo:

```text
¿En qué mes hará un pago adelantado? (0 = ninguno):
3

Monto adicional a pagar ese mes:
500
```

El monto adicional se suma a la cuota correspondiente a ese mes.

Si el usuario ingresa `0`, no se realiza ningún pago adicional.

## 📊 Calendario de pagos

El programa genera una tabla con:

* Número de mes.
* Fecha del pago.
* Saldo inicial.
* Pago realizado.
* Saldo restante.

El calendario se genera automáticamente utilizando las fechas del sistema.

## 💵 Control del saldo

El programa controla el saldo pendiente durante cada período.

Si el pago supera el saldo restante, solamente se utiliza el monto necesario para cancelar la deuda.

Cuando el saldo llega a cero, el calendario termina y se muestra:

```text
Estado: FINANCIAMIENTO CANCELADO
```

## 🛠️ Tecnologías utilizadas

* Swift
* Foundation
* `readLine()`
* Variables y constantes
* Condicionales `if / else`
* Bucles `for`
* Operaciones matemáticas
* `Date`
* `Calendar`
* `DateFormatter`
* Formateo de valores numéricos

## ▶️ Ejecución

El archivo principal del proyecto es:

```text
Ejercicio03.swift
```

Para compilarlo desde una terminal compatible con Swift:

```bash
swiftc Ejercicio03.swift -o Ejercicio03
```

Luego ejecutar:

```bash
./Ejercicio03
```

En Windows, si se utiliza un entorno compatible con Swift:

```powershell
swiftc Ejercicio03.swift -o Ejercicio03.exe
.\Ejercicio03.exe
```

## 📁 Estructura del proyecto

```text
ejercicio-3-moviles/
│
├── Ejercicio03.swift
└── README.md
```

## 📝 Historial de commits

El desarrollo del ejercicio se realizó progresivamente:

1. **Commit 1:** agregar lectura de datos del producto y plan de pago.
2. **Commit 2:** agregar cálculo de financiamiento.
3. **Commit 3:** agregar funcionalidad de pago adelantado.
4. **Commit 4:** agregar calendario de pagos y fechas.
5. **Commit 5:** agregar control de saldo y resumen final.
6. **Commit 6:** agregar documentación del proyecto.

## 🎓 Objetivo académico

El objetivo del ejercicio es aplicar conceptos básicos de programación en Swift mediante la creación de un programa interactivo que permita realizar cálculos de financiamiento y generar un calendario de pagos.

## 👩‍💻 Autora

**Sheila Diaz Rojas**

Curso: **Desarrollo Móvil Avanzado**
