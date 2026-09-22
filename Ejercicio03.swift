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

print("\n===== DATOS INGRESADOS =====")
print("Producto: \(producto)")
print("Precio Unitario: S/. \(String(format: "%.2f", precioUnitario))")
print("Cantidad: \(cantidad)")
print("Plan de Pago: \(mesesPlan) meses")