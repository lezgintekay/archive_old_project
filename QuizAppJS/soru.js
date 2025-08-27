function Soru(soruMetni, cevapSecenekleri, dogruCevap ) 
{
    this.soruMetni = soruMetni; 
    this.cevapSecenekleri = cevapSecenekleri ; 
    this.dogruCevap = dogruCevap ; 
}

Soru.prototype.cevabiKontrolEt = function (cevap) {
    return cevap === this.dogruCevap
}


let sorular = 
[
    new Soru("Hangisi js paket yönetim uygulamasıdır?",{a: "Node.js", b: "TypeScrript", c: "npm", d: "nuget"}, "c" ),
    new Soru("Native Android uygulama geliştirmek için hangi programlama dili kullanılır?",{a: "Python", b: "Kotlin", c: "C#", d: "C++"}, "b" ),
    new Soru("Aşağıdaki programlama dillerinden hangisi backend olarak değerlendirilir?",{a: "PHP", b: "TypeScrript", c: "Angular", d: "React"}, "a" ),
    new Soru("Hangisi javascript programlama dilini kullanmaz?",{a: "Node.js", b: "React", c: "Vue,js",d: "Typescript"}, "d" )
];