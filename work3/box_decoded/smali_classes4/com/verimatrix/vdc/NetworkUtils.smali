.class Lcom/verimatrix/vdc/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/NetworkUtils$Response;
    }
.end annotation


# static fields
.field static final CONTENT_JSON:Ljava/lang/String; = "application/json"

.field static final CONTENT_WWW_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field static final CONTENT_XML:Ljava/lang/String; = "application/xml;charset=UTF-8"

.field static final DEFAULT_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"

.field static final RESPONSE_INTERNAL_ERROR:I = -0x2

.field static final RESPONSE_PARSER_ERROR:I = -0x1

.field static final RESPONSE_SUCCESS:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "NetworkUtils"

.field static transactionCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsProtocol(Ljava/lang/String;)Z
    .locals 1

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static convertUrlToIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 295
    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/4 v0, 0x0

    .line 299
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verimatrix/vdc/NetworkUtils;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 303
    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 304
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    .line 307
    :catch_0
    sget-object v1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t retrieve ip from url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;
    .locals 7

    const-string v0, "Can\'t close bufferReader"

    const-string v1, "Can\'t close inputStream"

    .line 72
    new-instance v2, Lcom/verimatrix/vdc/NetworkUtils$Response;

    invoke-direct {v2}, Lcom/verimatrix/vdc/NetworkUtils$Response;-><init>()V

    const/4 v3, 0x0

    .line 76
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    .line 78
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 80
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHttpsCertificates()V

    .line 81
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHostnames()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p1, "GET"

    .line 86
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Content-Type"

    .line 88
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "Transaction-Id"

    .line 90
    invoke-static {}, Lcom/verimatrix/vdc/NetworkUtils;->generateTransactionMark()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 93
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/16 p1, 0xc8

    .line 96
    iget p2, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    if-ne p1, p2, :cond_2

    .line 97
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 98
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkUtils;->readResponse(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    goto/16 :goto_1

    :catchall_0
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_c

    :catch_0
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_3

    :catch_1
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_5

    :catch_2
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_7

    :catch_3
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    move-object v6, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v6

    goto/16 :goto_c

    :catch_4
    move-exception p1

    move-object v6, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_3

    :catch_5
    move-exception p1

    move-object v6, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v6, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v6

    goto/16 :goto_7

    :catch_7
    move-exception p1

    move-object v6, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v6

    goto/16 :goto_9

    :cond_2
    move-object p1, v3

    :goto_1
    if-eqz v3, :cond_3

    .line 116
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_2

    :catch_8
    move-exception p0

    .line 118
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    if-eqz p1, :cond_8

    .line 123
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    goto/16 :goto_b

    :catchall_2
    move-exception p0

    move-object p1, v3

    goto/16 :goto_c

    :catch_9
    move-exception p0

    move-object p1, v3

    .line 111
    :goto_3
    :try_start_5
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (other)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_4

    .line 116
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_4

    :catch_a
    move-exception p0

    .line 118
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    if-eqz p1, :cond_8

    .line 123
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11

    goto :goto_b

    :catch_b
    move-exception p0

    move-object p1, v3

    .line 108
    :goto_5
    :try_start_8
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (IOException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_5

    .line 116
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_6

    :catch_c
    move-exception p0

    .line 118
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_6
    if-eqz p1, :cond_8

    .line 123
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_b

    :catch_d
    move-exception p0

    move-object p1, v3

    .line 105
    :goto_7
    :try_start_b
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (MalformedURLException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v3, :cond_6

    .line 116
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_8

    :catch_e
    move-exception p0

    .line 118
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_8
    if-eqz p1, :cond_8

    .line 123
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_b

    :catch_f
    move-exception p0

    move-object p1, v3

    .line 102
    :goto_9
    :try_start_e
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (IllegalArgumentException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v3, :cond_7

    .line 116
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_a

    :catch_10
    move-exception p0

    .line 118
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_a
    if-eqz p1, :cond_8

    .line 123
    :try_start_10
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_b

    :catch_11
    move-exception p0

    .line 125
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_b
    return-object v2

    :catchall_3
    move-exception p0

    :goto_c
    if-eqz v3, :cond_9

    .line 116
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    goto :goto_d

    :catch_12
    move-exception p2

    .line 118
    sget-object v2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_d
    if-eqz p1, :cond_a

    .line 123
    :try_start_12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    goto :goto_e

    :catch_13
    move-exception p1

    .line 125
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_a
    :goto_e
    throw p0
.end method

.method static doPostInHeaderRequest(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/verimatrix/vdc/NetworkUtils$Response;
    .locals 8

    const-string v0, "Can\'t close bufferReader"

    const-string v1, "Can\'t close inputStream"

    .line 133
    new-instance v2, Lcom/verimatrix/vdc/NetworkUtils$Response;

    invoke-direct {v2}, Lcom/verimatrix/vdc/NetworkUtils$Response;-><init>()V

    const/4 v3, 0x0

    .line 137
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    .line 139
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 141
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHttpsCertificates()V

    .line 142
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHostnames()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 146
    :goto_0
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 p2, 0x1

    .line 147
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p2, "POST"

    .line 148
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 150
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Transaction-Id"

    .line 157
    invoke-static {}, Lcom/verimatrix/vdc/NetworkUtils;->generateTransactionMark()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/16 p1, 0xc8

    .line 159
    iget p2, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    if-ne p1, p2, :cond_3

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :try_start_2
    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkUtils;->readResponse(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_d

    :catch_0
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_4

    :catch_1
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_6

    :catch_2
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_8

    :catch_3
    move-exception p2

    move-object v3, p0

    move-object p0, p2

    goto/16 :goto_a

    :catchall_1
    move-exception p1

    move-object v7, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v7

    goto/16 :goto_d

    :catch_4
    move-exception p1

    move-object v7, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v7

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v7, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v7

    goto :goto_6

    :catch_6
    move-exception p1

    move-object v7, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v7

    goto/16 :goto_8

    :catch_7
    move-exception p1

    move-object v7, v3

    move-object v3, p0

    move-object p0, p1

    move-object p1, v7

    goto/16 :goto_a

    :cond_3
    move-object p1, v3

    :goto_2
    if-eqz v3, :cond_4

    .line 179
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_3

    :catch_8
    move-exception p0

    .line 181
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    if-eqz p1, :cond_9

    .line 186
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    goto/16 :goto_c

    :catchall_2
    move-exception p0

    move-object p1, v3

    goto/16 :goto_d

    :catch_9
    move-exception p0

    move-object p1, v3

    .line 174
    :goto_4
    :try_start_5
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (other)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_5

    .line 179
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_5

    :catch_a
    move-exception p0

    .line 181
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    if-eqz p1, :cond_9

    .line 186
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11

    goto :goto_c

    :catch_b
    move-exception p0

    move-object p1, v3

    .line 171
    :goto_6
    :try_start_8
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (IOException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_6

    .line 179
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_7

    :catch_c
    move-exception p0

    .line 181
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_7
    if-eqz p1, :cond_9

    .line 186
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_c

    :catch_d
    move-exception p0

    move-object p1, v3

    .line 168
    :goto_8
    :try_start_b
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (MalformedURLException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v3, :cond_7

    .line 179
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_9

    :catch_e
    move-exception p0

    .line 181
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_9
    if-eqz p1, :cond_9

    .line 186
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_c

    :catch_f
    move-exception p0

    move-object p1, v3

    .line 165
    :goto_a
    :try_start_e
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error while HTTP(S) request (IllegalArgumentException)"

    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    iput-object p0, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v3, :cond_8

    .line 179
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_b

    :catch_10
    move-exception p0

    .line 181
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_b
    if-eqz p1, :cond_9

    .line 186
    :try_start_10
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_c

    :catch_11
    move-exception p0

    .line 188
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_c
    return-object v2

    :catchall_3
    move-exception p0

    :goto_d
    if-eqz v3, :cond_a

    .line 179
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    goto :goto_e

    :catch_12
    move-exception p2

    .line 181
    sget-object v2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_e
    if-eqz p1, :cond_b

    .line 186
    :try_start_12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    goto :goto_f

    :catch_13
    move-exception p1

    .line 188
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_b
    :goto_f
    throw p0
.end method

.method static doPostRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;
    .locals 9

    const-string v0, "Can\'t close bufferReader"

    const-string v1, "Can\'t close inputStream"

    const-string v2, "Can\'t close bufferWriter"

    const-string v3, "Can\'t close outputStream"

    .line 196
    new-instance v4, Lcom/verimatrix/vdc/NetworkUtils$Response;

    invoke-direct {v4}, Lcom/verimatrix/vdc/NetworkUtils$Response;-><init>()V

    const/4 v5, 0x0

    .line 202
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    .line 204
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 206
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHttpsCertificates()V

    .line 207
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->trustAllHostnames()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 p1, 0x1

    .line 212
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p1, "POST"

    .line 214
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 215
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Content-Type"

    .line 216
    invoke-virtual {p0, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "Transaction-Id"

    .line 218
    invoke-static {}, Lcom/verimatrix/vdc/NetworkUtils;->generateTransactionMark()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 221
    :try_start_1
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 222
    :try_start_2
    invoke-virtual {p3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 224
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V

    .line 226
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 228
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/16 p2, 0xc8

    .line 229
    iget v6, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    if-ne p2, v6, :cond_2

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 231
    :try_start_3
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :try_start_4
    invoke-static {p2}, Lcom/verimatrix/vdc/NetworkUtils;->readResponse(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, p0

    goto/16 :goto_5

    :catchall_0
    move-exception v4

    move-object v5, p1

    move-object p1, p0

    move-object p0, v4

    goto/16 :goto_1a

    :catch_0
    move-exception v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_2

    :catch_2
    move-exception v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_3

    :catch_3
    move-exception v5

    move-object v8, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    move-object v5, v8

    goto/16 :goto_1a

    :catch_4
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    :goto_1
    move-object v5, v8

    goto/16 :goto_9

    :catch_5
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    :goto_2
    move-object v5, v8

    goto/16 :goto_d

    :catch_6
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    :goto_3
    move-object v5, v8

    goto/16 :goto_11

    :catch_7
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    :goto_4
    move-object v5, v8

    goto/16 :goto_15

    :cond_2
    move-object p2, v5

    :goto_5
    if-eqz p1, :cond_3

    .line 249
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_6

    :catch_8
    move-exception p0

    .line 251
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_3
    :goto_6
    :try_start_6
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_7

    :catch_9
    move-exception p0

    .line 258
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    if-eqz v5, :cond_4

    .line 263
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_8

    :catch_a
    move-exception p0

    .line 265
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_8
    if-eqz p2, :cond_11

    .line 270
    :try_start_8
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_23

    goto/16 :goto_19

    :catchall_2
    move-exception p0

    move-object p2, v5

    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_1a

    :catch_b
    move-exception p0

    move-object p2, v5

    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_9

    :catch_c
    move-exception p0

    move-object p2, v5

    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_d

    :catch_d
    move-exception p0

    move-object p2, v5

    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_11

    :catch_e
    move-exception p0

    move-object p2, v5

    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_15

    :catchall_3
    move-exception p0

    move-object p2, v5

    move-object p3, p2

    move-object v5, p1

    move-object p1, p3

    goto/16 :goto_1a

    :catch_f
    move-exception p0

    move-object p2, v5

    move-object p3, p2

    move-object v5, p1

    move-object p1, p3

    goto :goto_9

    :catch_10
    move-exception p0

    move-object p2, v5

    move-object p3, p2

    move-object v5, p1

    move-object p1, p3

    goto/16 :goto_d

    :catch_11
    move-exception p0

    move-object p2, v5

    move-object p3, p2

    move-object v5, p1

    move-object p1, p3

    goto/16 :goto_11

    :catch_12
    move-exception p0

    move-object p2, v5

    move-object p3, p2

    move-object v5, p1

    move-object p1, p3

    goto/16 :goto_15

    :catchall_4
    move-exception p0

    move-object p1, v5

    move-object p2, p1

    move-object p3, p2

    goto/16 :goto_1a

    :catch_13
    move-exception p0

    move-object p1, v5

    move-object p2, p1

    move-object p3, p2

    .line 244
    :goto_9
    :try_start_9
    sget-object v6, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error while HTTP(S) request (other)"

    invoke-static {v6, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    iput-object p0, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v5, :cond_5

    .line 249
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14

    goto :goto_a

    :catch_14
    move-exception p0

    .line 251
    sget-object v5, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_a
    if-eqz p3, :cond_6

    .line 256
    :try_start_b
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15

    goto :goto_b

    :catch_15
    move-exception p0

    .line 258
    sget-object p3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_b
    if-eqz p1, :cond_7

    .line 263
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_16

    goto :goto_c

    :catch_16
    move-exception p0

    .line 265
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_c
    if-eqz p2, :cond_11

    .line 270
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_23

    goto/16 :goto_19

    :catch_17
    move-exception p0

    move-object p1, v5

    move-object p2, p1

    move-object p3, p2

    .line 241
    :goto_d
    :try_start_e
    sget-object v6, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error while HTTP(S) request (IOException)"

    invoke-static {v6, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iput-object p0, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v5, :cond_8

    .line 249
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18

    goto :goto_e

    :catch_18
    move-exception p0

    .line 251
    sget-object v5, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_e
    if-eqz p3, :cond_9

    .line 256
    :try_start_10
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    goto :goto_f

    :catch_19
    move-exception p0

    .line 258
    sget-object p3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_f
    if-eqz p1, :cond_a

    .line 263
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a

    goto :goto_10

    :catch_1a
    move-exception p0

    .line 265
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_10
    if-eqz p2, :cond_11

    .line 270
    :try_start_12
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_23

    goto/16 :goto_19

    :catch_1b
    move-exception p0

    move-object p1, v5

    move-object p2, p1

    move-object p3, p2

    .line 238
    :goto_11
    :try_start_13
    sget-object v6, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error while HTTP(S) request (MalformedURLException)"

    invoke-static {v6, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iput-object p0, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v5, :cond_b

    .line 249
    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1c

    goto :goto_12

    :catch_1c
    move-exception p0

    .line 251
    sget-object v5, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_12
    if-eqz p3, :cond_c

    .line 256
    :try_start_15
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1d

    goto :goto_13

    :catch_1d
    move-exception p0

    .line 258
    sget-object p3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_13
    if-eqz p1, :cond_d

    .line 263
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1e

    goto :goto_14

    :catch_1e
    move-exception p0

    .line 265
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_14
    if-eqz p2, :cond_11

    .line 270
    :try_start_17
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_23

    goto :goto_19

    :catch_1f
    move-exception p0

    move-object p1, v5

    move-object p2, p1

    move-object p3, p2

    .line 235
    :goto_15
    :try_start_18
    sget-object v6, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error while HTTP(S) request (IllegalArgumentException)"

    invoke-static {v6, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iput-object p0, v4, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v5, :cond_e

    .line 249
    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_20

    goto :goto_16

    :catch_20
    move-exception p0

    .line 251
    sget-object v5, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_16
    if-eqz p3, :cond_f

    .line 256
    :try_start_1a
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_21

    goto :goto_17

    :catch_21
    move-exception p0

    .line 258
    sget-object p3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_17
    if-eqz p1, :cond_10

    .line 263
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_22

    goto :goto_18

    :catch_22
    move-exception p0

    .line 265
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_18
    if-eqz p2, :cond_11

    .line 270
    :try_start_1c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_23

    goto :goto_19

    :catch_23
    move-exception p0

    .line 272
    sget-object p1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_19
    return-object v4

    :catchall_5
    move-exception p0

    :goto_1a
    if-eqz v5, :cond_12

    .line 249
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_24

    goto :goto_1b

    :catch_24
    move-exception v4

    .line 251
    sget-object v5, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_1b
    if-eqz p3, :cond_13

    .line 256
    :try_start_1e
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_25

    goto :goto_1c

    :catch_25
    move-exception p3

    .line 258
    sget-object v3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_1c
    if-eqz p1, :cond_14

    .line 263
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_26

    goto :goto_1d

    :catch_26
    move-exception p1

    .line 265
    sget-object p3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_1d
    if-eqz p2, :cond_15

    .line 270
    :try_start_20
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_27

    goto :goto_1e

    :catch_27
    move-exception p1

    .line 272
    sget-object p2, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_15
    :goto_1e
    throw p0
.end method

.method private static declared-synchronized generateTransactionMark()Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/verimatrix/vdc/NetworkUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 42
    :try_start_0
    new-instance v2, Lcom/verimatrix/vdc/StoreFile;

    sget-object v3, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 43
    sget-wide v5, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    const-wide/16 v7, 0x1

    cmp-long v9, v3, v5

    if-nez v9, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "transactionCount"

    .line 46
    invoke-virtual {v2, v4, v3}, Lcom/verimatrix/vdc/StoreFile;->readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v4

    .line 47
    sget-object v5, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-ne v5, v4, :cond_0

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    add-long/2addr v3, v7

    .line 49
    sput-wide v3, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    .line 53
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "count"

    .line 54
    sget-wide v5, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "uuid"

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 60
    sget-wide v3, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "transactionCount"

    .line 61
    invoke-virtual {v2, v4, v3}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 62
    sget-wide v2, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J

    add-long/2addr v2, v7

    sput-wide v2, Lcom/verimatrix/vdc/NetworkUtils;->transactionCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 65
    :try_start_1
    sget-object v3, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error in generating mark"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method static getAvailableOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 423
    :try_start_0
    invoke-static {}, Lcom/verimatrix/vdc/NetworkUtils;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 425
    :catchall_0
    sget-object v0, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "OkHttpClient with TrustManager is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :try_start_1
    invoke-static {}, Lcom/verimatrix/vdc/NetworkUtils;->getDefaultOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 429
    :catchall_1
    sget-object v0, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "OkHttpClient is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static getDefaultOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 474
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    return-object v0
.end method

.method static getDnsLoadBalancingIps(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, ":"

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/net/InetAddress;

    .line 391
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 392
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 397
    :goto_0
    invoke-static {p0}, Ljava/net/Inet4Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v5, v0

    .line 399
    :goto_1
    sget-object v1, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "IP address lookup error"

    invoke-static {v1, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    :goto_2
    array-length p0, v4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_4

    aget-object v6, v4, v1

    .line 403
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    move-object v8, v0

    const/4 v7, 0x0

    .line 406
    :cond_1
    :goto_4
    array-length v9, v6

    if-ge v7, v9, :cond_2

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v6, v7

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 408
    array-length v9, v6

    if-ge v7, v9, :cond_1

    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 412
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 415
    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2
.end method

.method static getIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 316
    :try_start_0
    invoke-static {p0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "can name"

    .line 318
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "host name"

    .line 319
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "host addr"

    .line 320
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 323
    :cond_0
    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 325
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    return-object p0
.end method

.method static getProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 338
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 341
    :catch_0
    sget-object v0, Lcom/verimatrix/vdc/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t retrieve protocol from url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 437
    new-instance v0, Lcom/verimatrix/vdc/NetworkUtils$1;

    invoke-direct {v0}, Lcom/verimatrix/vdc/NetworkUtils$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "SSL"

    .line 456
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 459
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 461
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 462
    invoke-virtual {v2, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 463
    new-instance v0, Lcom/verimatrix/vdc/NetworkUtils$2;

    invoke-direct {v0}, Lcom/verimatrix/vdc/NetworkUtils$2;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 470
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 288
    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkUtils;->convertUrlToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkUtils;->convertUrlToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static readResponse(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sameAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 352
    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "http://"

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 355
    :cond_0
    invoke-static {p2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 358
    :cond_1
    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    :cond_2
    invoke-static {p3}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 365
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    return p3

    .line 369
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p3

    .line 373
    :cond_5
    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkUtils;->getDnsLoadBalancingIps(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 374
    invoke-static {p2}, Lcom/verimatrix/vdc/NetworkUtils;->getDnsLoadBalancingIps(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return p3

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
