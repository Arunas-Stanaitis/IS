close all;
%% raidþiø pavyzdþiø nuskaitymas ir poþymiø skaièiavimas
pavadinimas = '1.png';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 3);
%% Atpaþintuvo kûrimas
% poþymiai ið celiø masyvo perkeliami á matricà
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teisingø atsakymø matrica: 10 raidþiø, 3 eilutës mokymui
T = [eye(10), eye(10), eye(10)];
% sukuriamas SBF tinklas duotiems P ir T sàryðiams
tinklas = newrb(P,T,0,1,9);

%% Tinklo patikra
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
P2 = P(:,12:22);
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'M'];
        case 2
            atsakymas = [atsakymas, 'O'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'I'];
        case 5
            atsakymas = [atsakymas, 'S'];
        case 6
            atsakymas = [atsakymas, '1'];
        case 7
            atsakymas = [atsakymas, '3'];
        case 8
            atsakymas = [atsakymas, '4'];
        case 9
            atsakymas = [atsakymas, '5'];
        case 10
            atsakymas = [atsakymas, '6'];
    end
end
% pateikime rezultatà komandiniame lange
% disp(atsakymas)
% % figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% þodþio "KADA" poþymiø iðskyrimas 
pavadinimas = '2.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raidþiø atpaþinimas
% poþymiai ið celiø masyvo perkeliami á matricà
P2 = cell2mat(pozymiai_patikrai);
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
            case 1
            atsakymas = [atsakymas, 'M'];
        case 2
            atsakymas = [atsakymas, 'O'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'I'];
        case 5
            atsakymas = [atsakymas, 'S'];
        case 6
            atsakymas = [atsakymas, '1'];
        case 7
            atsakymas = [atsakymas, '3'];
        case 8
            atsakymas = [atsakymas, '4'];
        case 9
            atsakymas = [atsakymas, '5'];
        case 10
            atsakymas = [atsakymas, '6'];
    end
end
% pateikime rezultatà komandiniame lange
% disp(atsakymas)
figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off
%% þodþio "FIKCIJA" poþymiø iðskyrimas 
pavadinimas = '2.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raidþiø atpaþinimas
% poþymiai ið celiø masyvo perkeliami á matricà
P2 = cell2mat(pozymiai_patikrai);
% skaièiuojamas tinklo iðëjimas neþinomiems poþymiams
Y2 = sim(tinklas, P2);
% ieðkoma, kuriame iðëjime gauta didþiausia reikðmë
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskaièiuosime raidþiø skaièiø - poþymiø P2 stulpeliø skaièiø
raidziu_sk = size(P2,2);
% rezultatà saugosime kintamajame 'atsakymas'
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
          case 1
            atsakymas = [atsakymas, 'M'];
        case 2
            atsakymas = [atsakymas, 'O'];
        case 3
            atsakymas = [atsakymas, 'L'];
        case 4
            atsakymas = [atsakymas, 'I'];
        case 5
            atsakymas = [atsakymas, 'S'];
        case 6
            atsakymas = [atsakymas, '1'];
        case 7
            atsakymas = [atsakymas, '3'];
        case 8
            atsakymas = [atsakymas, '4'];
        case 9
            atsakymas = [atsakymas, '5'];
        case 10
            atsakymas = [atsakymas, '6'];
    end
end
% pateikime rezultatà komandiniame lange
% disp(atsakymas)
figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off