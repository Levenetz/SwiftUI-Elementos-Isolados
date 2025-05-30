# Isolando Elementos em SwiftUI


## Description

O princípio é básico, iremos transformar componentes brutos da tela em variáveis, e junto a isso adicionar um recurso bem importante do Swift, as chamadas Extensions. São nada mais do que uma forma de adicionar novas funcionalidades a classes, estruturas, enums ou  protocolos existentes.

Essa medida vai adicionar cerca de 30-50% a mais no tamanho do seu arquivo (número de linhas), mas é uma excelente prática manter uma boa manutentabilidade do seu projeto.

## Aplicação

Começamos extendendo a view que iremos utilizar.
```
extension ContentView{}
```
Em seguida, apresentamos os componentes desejados na forma de variáveis.

```
extension ContentView{
    var title: some View{
        Text("Isolando Elementos")
            .font(.custom("Noteworthy", size: 45))
            .foregroundStyle(.white)
            .italic()
            .padding()
            .cornerRadius(10)
    }
}
```
Pronto! Agora, você pode chamar e utilizar seu componente na view apenas pelo nome da variável.


## Artigo Completo
[Artigo Medium](https://medium.com/@victorlevenetz/swiftui-em-pedaços-a-arte-da-componentização-448ee6fabd43)

