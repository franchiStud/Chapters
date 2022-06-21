import QtQuick

Window {
    width: 300
    height: 300
    visible: true
    Column{
        spacing: 10
        Ch{
            id: p1
            titolo: "Prima strofa"
            paragrafo: "C'era una volta una città
In quell'isola laggiù
C'era una via che passava di là
Proprio dove vivi tu
C'era allegria c'era felicità
Ma la guerra è una follia
Ma se qualcuno sorride a te
Un domani ancora c'è..."
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    p1.espandi();
                    p2.comprimi();
                    p3.comprimi()
                }
            }
        }
        Ch{
            id: p2
            titolo: "Seconda strofa"
            paragrafo: "Ci sono i buoni, come sei tu
Per un'amicizia in più
C'è sempre Lana vicino a te
Che ti fa sentire un re
Ci sono i sogni, tutti quelli che fai
Che non moriranno mai
C'è la speranza, che d'ora in poi
Un futuro avremo noi"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    p2.espandi();
                    p1.comprimi();
                    p3.comprimi()
                }
            }
        }
        Ch{
            id: p3
            titolo: "Ritornello"
            paragrafo: "Dai Conan! Tutto deve ricominciare
Dai Conan! Mettici tanto amore, più che puoi
Dai Conan! Ora stringiti forte a Lana
Dai Conan! Bella non c'è nessuna, come lei
Salta i pericoli, vola tra gli alberi, corri insieme a noi
Oltre gli ostacoli, per tutti gli uomini liberi
Contro i nemici non perderti, non fermarti mai..."
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    p3.espandi()
                    p1.comprimi()
                    p2.comprimi()
                }
            }
        }
    }

}
