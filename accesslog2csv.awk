BEGIN {
    FS = " ";
    OFS = ",";
    print "IP,Date,Method,URL,HTTP_Version,Status,Bytes,UserAgent"
}
{
    ip = $1;
    date = substr($4, 2) " " substr($5, 1, length($5)-1);
    method = substr($6, 2);
    url = $7;
    http_version = substr($8, 1, length($8)-1);
    status = $9;
    bytes = $10;
    user_agent = substr($0, index($0, $12));
    print ip, date, method, url, http_version, status, bytes, user_agent;
}
