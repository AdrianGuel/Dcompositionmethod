%Author Adrian Josue Guel Cortez
%January 2021
%If this code helped you please cite one of the folowing works
% César Fernando Méndez Barrios, "Low-Order Controllers for Time-Delay Systems : an Analytical Approach". 2012 PhD thesis
% Guel-Cortez, Adrián Josué, et al. "Geometrical design of fractional PDμ controllers for linear time-invariant fractional-order systems with time delay." 
%Proceedings of the Institution of Mechanical Engineers, Part I: Journal of Systems and Control Engineering 233.7 (2019): 815-829.


w=0:0.1:10000;
kpx=(1+4.*w.^2+(-30).*w.^4+49.*w.^6+w.^8).^(-1).*(((-24)+257.*w.^2+(-730).* ...
  w.^4+579.*w.^6+(-31).*w.^8+(-1).*w.^10).*cos((1/20).*w)+w.*(122+(-481).* ...
  w.^2+792.*w.^4+(-229).*w.^6+(-4).*w.^8).*sin((1/20).*w));
kdx=(w+4.*w.^3+(-30).*w.^5+49.*w.^7+w.^9).^(-1).*(w.*((-122)+481.*w.^2+( ...
  -792).*w.^4+229.*w.^6+4.*w.^8).*cos((1/20).*w)+(-1).*(24+(-257).*w.^2+ ...
  730.*w.^4+(-579).*w.^6+31.*w.^8+w.^10).*sin((1/20).*w));
%Gs=exp(1).^((-1/20).*s).*(1+s).^(-1).*(2+s).^(-1).*(3+s).^(-1).*(4+s).^(-1) ...
% .*(1+s+s.^2).^(-1).*(1+(-2).*s+(-7).*s.^3+(-1).*s.^4);

set(gcf,'color','w');
plot(kpx,kdx)
xlabel('$k_p$','Interpreter','Latex','FontSize', 16)
ylabel('$k_d$','Interpreter','Latex','FontSize', 16)
