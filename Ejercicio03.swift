import Foundation

// ===============================================================
// EJERCICIO 3 - SIMULADOR DE PLAN DE PAGOS
// Desarrollo Móvil Avanzado
// ===============================================================

// 1. Lectura de datos básicos

print("===== SIMULADOR DE PLAN DE PAGOS =====")

print("Nombre del Producto:")
let producto = readLine() ?? ""

print("Precio Unitario:")
let precioUnitario = Double(readLine() ?? "0") ?? 0.0

print("Cantidad:")
let cantidad = Int(readLine() ?? "0") ?? 0

print("Plan de Pago (6, 12, 24):")
let mesesPlan = Int(readLine() ?? "0") ?? 12

// 2. Determinar porcentaje de interés

var porcentajeInteres = 0.0

if mesesPlan == 6 {
    porcentajeInteres = 0.20
} else if mesesPlan == 12 {
    porcentajeInteres = 0.40
} else if mesesPlan == 24 {
    porcentajeInteres = 0.60
} else {
    print("Plan no válido.")
}

// 3. Lectura de pago adelantado

print("¿En qué mes hará un pago adelantado? (0 = ninguno):")
let mesAdelantado = Int(readLine() ?? "0") ?? 0

print("Monto adicional a pagar ese mes (S/.):")
let montoAdicional = Double(readLine() ?? "0") ?? 0.0

// 4. Cálculos del financiamiento

let montoCompra = precioUnitario * Double(cantidad)
let interes = montoCompra * porcentajeInteres
let montoFinanciado = montoCompra + interes
let cuotaMensual = montoFinanciado / Double(mesesPlan)

// 5. Mostrar resumen

print("\n===== RESUMEN DEL FINANCIAMIENTO =====")
print("Producto: \(producto)")
print("Monto de compra: S/. \(String(format: "%.2f", montoCompra))")
print("Porcentaje de interés: \(String(format: "%.0f", porcentajeInteres * 100))%")
print("Interés: S/. \(String(format: "%.2f", interes))")
print("Monto financiado: S/. \(String(format: "%.2f", montoFinanciado))")
print("Cuota mensual: S/. \(String(format: "%.2f", cuotaMensual))")

print("\n===== PAGO ADELANTADO =====")

if mesAdelantado > 0 {
    print("Mes del pago adelantado: \(mesAdelantado)")
    print("Monto adicional: S/. \(String(format: "%.2f", montoAdicional))")
} else {
    print("No se realizará ningún pago adelantado.")
}