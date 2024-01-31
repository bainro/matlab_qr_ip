clc; clear; close all;

show_qr()

t = tcpserver(get_host_ip(), 80, "ConnectionChangedFcn", @cxFx);

function cxFx(src, evt)
    % connection handler
    disp(" ")
    if src.Connected
       c_ip = get(evt, 'ClientAddress');
       disp(c_ip + " has connected.")
    else
        % can't tell which ip though
        disp("A tablet disconnected!")
    end
end