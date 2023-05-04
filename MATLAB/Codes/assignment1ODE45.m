
z_span = [0, 0.05];
t_initial = 40;
[zsol, tsol] = ode45(@rhs, z_span, t_initial);
plot(zsol,tsol);
ylabel('temperature');
xlabel('z direction');
t_at_z_005 = tsol(end);
disp(['t at z=0.05 is ', num2str(t_at_z_005)]);

function dt_dz = rhs(z, t)
   dt_dz = -400;
end
