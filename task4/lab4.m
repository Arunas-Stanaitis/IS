close all;
%% raid�i� pavyzd�i� nuskaitymas ir po�ymi� skai�iavimas
pavadinimas = '1.png';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 3);
%% Atpa�intuvo k�rimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P = cell2mat(pozymiai_tinklo_mokymui);
% sukuriama teising� atsakym� matrica: 10 raid�i�, 3 eilut�s mokymui
T = [eye(10), eye(10), eye(10)];
% sukuriamas SBF tinklas duotiems P ir T s�ry�iams
tinklas = newrb(P,T,0,1,9);

%% Tinklo patikra
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
P2 = P(:,12:22);
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
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
% pateikime rezultat� komandiniame lange
% disp(atsakymas)
% % figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% �od�io "KADA" po�ymi� i�skyrimas 
pavadinimas = '2.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raid�i� atpa�inimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P2 = cell2mat(pozymiai_patikrai);
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
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
% pateikime rezultat� komandiniame lange
% disp(atsakymas)
figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off
%% �od�io "FIKCIJA" po�ymi� i�skyrimas 
pavadinimas = '2.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

%% Raid�i� atpa�inimas
% po�ymiai i� celi� masyvo perkeliami � matric�
P2 = cell2mat(pozymiai_patikrai);
% skai�iuojamas tinklo i��jimas ne�inomiems po�ymiams
Y2 = sim(tinklas, P2);
% ie�koma, kuriame i��jime gauta did�iausia reik�m�
[a2, b2] = max(Y2);
%% Rezultato atvaizdavimas
% apskai�iuosime raid�i� skai�i� - po�ymi� P2 stulpeli� skai�i�
raidziu_sk = size(P2,2);
% rezultat� saugosime kintamajame 'atsakymas'
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
% pateikime rezultat� komandiniame lange
% disp(atsakymas)
figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off