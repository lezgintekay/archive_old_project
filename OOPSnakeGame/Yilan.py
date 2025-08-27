import pygame


class Yilan:

    def __init__(self, bas_renk, govde_renk, kenar, kenar_sayisi):
        self.bas_renk = pygame.Color(bas_renk)
        self.govde_renk = pygame.Color(govde_renk)
        self.kenar = kenar
        self.yon = "sağ"
        self.x_hiz = kenar
        self.y_hiz = 0
        self.kenar_sayisi = kenar_sayisi
        self.hucreler = []
        self.reset()

    def reset(self):
        x = y = self.kenar_sayisi / 2 * self.kenar  
        self.hucreler = [pygame.Rect(x, y, self.kenar, self.kenar)]

    def cizdir(self, ekran):
        pygame.draw.rect(ekran, self.bas_renk, self.hucreler[0])
        for i in range(1, len(self.hucreler)):
            pygame.draw.rect(ekran, self.govde_renk, self.hucreler[i])

    def hizlari_guncelle(self, event):
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_UP and self.yon != "aşağı":
                self.x_hiz, self.y_hiz = 0, -self.kenar
                self.yon = "yukarı"
            elif event.key == pygame.K_DOWN and self.yon != "yukarı":
                self.x_hiz, self.y_hiz = 0, self.kenar
                self.yon = "aşağı"
            elif event.key == pygame.K_LEFT and self.yon != "sağ":
                self.x_hiz, self.y_hiz = -self.kenar, 0
                self.yon = "sol"
            elif event.key == pygame.K_RIGHT and self.yon != "sol":
                self.x_hiz, self.y_hiz = self.kenar, 0
                self.yon = "sağ"

    def basa_yeni_hucre_ekle(self):
        eski_bas = self.hucreler[0]
        yeni_bas = pygame.Rect(eski_bas.x + self.x_hiz, eski_bas.y + self.y_hiz, self.kenar, self.kenar)
        self.hucreler.insert(0, yeni_bas)

    def konum_guncelle(self):
        self.basa_yeni_hucre_ekle()
        self.hucreler.pop()


    def carpisma_kontrol(self):

        for i in range(1, len(self.hucreler)):
            if (self.hucreler[0] == self.hucreler[i]):
                return True

        if self.hucreler[0].top<0 or self.hucreler[0].bottom> self.kenar_sayisi*self.kenar:
            return True

        if self.hucreler[0].x<0 or self.hucreler[0].right> self.kenar_sayisi*self.kenar:
            return True

        return False

    def yeme_kontrol(self, meyve):

        if(self.hucreler[0] == meyve):
            self.basa_yeni_hucre_ekle()
            return True
        else:
            return False
