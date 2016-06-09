% UniCtrl
h = uicontrol;
set(h, 'String', 'Press Me');
% cmd = 'fprintf(''Someone >////<\n'');';
cmd = 'set(h, ''String'', ''>/////<'');';
set(h, 'Callback', cmd);
