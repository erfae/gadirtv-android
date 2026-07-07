.class public Lcom/inka/ncg2/UrlConnectionRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequestByGetMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 30
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1388

    .line 35
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    .line 37
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 39
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 43
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 46
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 49
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    .line 51
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/PortUnreachableException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 128
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception p1

    .line 122
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/UnknownServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_2
    move-exception p1

    .line 116
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_3
    move-exception p1

    .line 110
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_4
    move-exception p1

    .line 104
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_5
    move-exception p1

    .line 98
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_6
    move-exception p1

    .line 92
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/PortUnreachableException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_7
    move-exception p1

    .line 86
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/NoRouteToHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_8
    move-exception p1

    .line 80
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_9
    move-exception p1

    .line 74
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/HttpRetryException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_a
    move-exception p1

    .line 68
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_b
    move-exception p1

    .line 62
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public static sendRequestByPostMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 143
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 147
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1388

    .line 148
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 149
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "POST"

    .line 150
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 152
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 155
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 157
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 159
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 162
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 163
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    .line 164
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 168
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/PortUnreachableException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 241
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception p1

    .line 235
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/UnknownServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_2
    move-exception p1

    .line 229
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_3
    move-exception p1

    .line 223
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_4
    move-exception p1

    .line 217
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_5
    move-exception p1

    .line 211
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_6
    move-exception p1

    .line 205
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/PortUnreachableException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_7
    move-exception p1

    .line 199
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/NoRouteToHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_8
    move-exception p1

    .line 193
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_9
    move-exception p1

    .line 187
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/HttpRetryException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_a
    move-exception p1

    .line 181
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :catch_b
    move-exception p1

    .line 175
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p1}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method
