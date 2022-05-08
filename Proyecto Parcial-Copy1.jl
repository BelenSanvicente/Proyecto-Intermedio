using Plots 
# 1. Considera tres vértices de un triángulo

vertices = [(0.0, 0.0), (0.5, 1.0), (1.0, 0.0)] # Arreglo de los vértices, las coordenadas son tuplas.

# 2. Elige un punto arbitrario dentro de la superficie de un triángulo que es la posición actual, en este caso, se escogió de preferencia un punto cerca del vértice.

punto = [(rand(),rand())] # Arreglo del punto como coordenada.

# 3. Elegir un vértice de manera aleatoria

v = rand(vertices)
scatter(vertices) # Ploteamos los vértices

# Punto medio entre "v" (uno de los vértices aleatorios) y la variable "punto"

p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]

# Código base 

v = rand(vertices)
p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]
punto = p_m   # 5. El punto medio es ahora la posición actual
scatter!(punto)

# Se escogió de preferencia un punto cerca del vértice

# Se repite este código base muchas veces y editamos el gráfico para quitar la legend

# Se repite el código desde 3
v = rand(vertices)
p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]
scatter!(p_m, legend = false)
punto = p_m
scatter!(p_m,legend = false)
v = rand(vertices)
p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]
scatter!(p_m,legend = false, title = "Triangulo de Sierpinsky")

# Se implementa un código for para automatizar

value = 0 # Variable de control
n = 10  # Número de veces a repetir el código
i= 1    
# Inicio del ciclo for
for i in 1:n
    v = rand(vertices)
    p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]
    scatter!(p_m)
    punto = p_m
    scatter!(p_m)
    v = rand(vertices)
    p_m= [((punto[1][1] + v[1])/2,(punto[1][2] + v[2])/2)]
    scatter!(p_m) 
    value +=i
end
# Fin del ciclo for

# Escribe un algoritmo que te permita visualizar el conteo de puntos y calcular pi
using Plots

function inCirculo(x, y)
    adentro = false
    resultado = x ^ 2 + y ^ 2
    if resultado <= 1
        adentro = true
    return adentro
    end
end
n = 1000

function p(n)
    c = 0
    for i in 1:n
        x = rand()
        y = rand()
        adentro = inCirculo(x, y)
        if adentro == true
            c = c + 1
        end
    end
    return (4.0 * c)/n
end 


print(p(n))

# Gráfica del error de la estimación

X = [(pi-p(1)),(pi-p(10)),(pi-p(100)),(pi-p(1000)),(pi-p(10000)),(pi-p(100000)),(pi-p(1000000)),(pi-p(10000000)),(pi-p(100000000))]
Y = [1,2,3,4,5,6,7,8,9]
scatter(Y,X,color=:red,label="error",title = "Grafico del error")




# Representación gráfica del problema

using Plots
n = 100000
x = (rand(Float64, n))
y = (rand(Float64, n))

scatter(x,y)
 
function circle(h,k,r)
        
         θ = LinRange(0,2*pi,500)
         
         h .+ r*sin.(θ), k .+ r*(cos.(θ))
end


plot!(circle(0.5,0.5,0.5),color=:"red",aspect_ratio=:equal)


# En promedio ¿cuántos puntos necesitas generar para obtener una estimación de 0.01 aproximadamente?
# Sol. Se necesitan aproximadamente 100000
Error = pi - p(n)
