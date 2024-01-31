% use python to get matlab computer's ip
function ip = get_host_ip()
    s = py.socket.socket(py.socket.AF_INET, py.socket.SOCK_DGRAM);
    s.connect(py.tuple({"8.8.8.8", py.int(80)}));
    ip = s.getsockname();
    ip = string(ip(1));