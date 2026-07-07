.class Lcom/inka/ncg2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/inka/ncg2/i;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/inka/ncg2/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2090
    iput-object p1, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2086
    iput-object p1, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    .line 2091
    iput-object p2, p0, Lcom/inka/ncg2/i$a;->a:Ljava/lang/String;

    .line 2092
    iput-object p3, p0, Lcom/inka/ncg2/i$a;->b:Ljava/lang/String;

    .line 2093
    iput-object p4, p0, Lcom/inka/ncg2/i$a;->c:Ljava/lang/String;

    .line 2094
    iput-object p5, p0, Lcom/inka/ncg2/i$a;->d:Ljava/lang/String;

    .line 2095
    iput-boolean p6, p0, Lcom/inka/ncg2/i$a;->g:Z

    return-void
.end method

.method private a([BILjava/lang/String;)I
    .locals 8

    const-string v0, "response"

    const-string v1, ""

    const-string v2, "[NCG_ProcessPostMsg] Error : "

    const-string v3, "NCG_Agent"

    .line 2137
    new-array v4, p2, [C

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_0

    .line 2139
    aget-byte v6, p1, v5

    int-to-char v6, v6

    aput-char v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2141
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p1

    .line 2142
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2143
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2144
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2148
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    const/16 v4, 0xbb8

    .line 2150
    invoke-virtual {p3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2151
    invoke-virtual {p3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    .line 2152
    invoke-virtual {p3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 2153
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2154
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2156
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 2157
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    const-string v6, "euc-kr"

    invoke-direct {v5, p3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2159
    :try_start_2
    iput-object v1, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    .line 2161
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    :cond_2
    if-nez p2, :cond_1

    .line 2165
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    .line 2166
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RO: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2167
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    iget-object p3, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    const-string v5, "message"

    invoke-static {p3, v0, v5}, Lcom/inka/ncg/jni/Util;->parserAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Ljava/lang/String;)Ljava/lang/String;

    .line 2169
    iget-object p2, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    const-string p3, "result"

    invoke-static {p2, v0, p3}, Lcom/inka/ncg/jni/Util;->parserAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\'"

    .line 2171
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\""

    .line 2172
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2173
    iget-object p3, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2174
    iget-object p3, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->b(Lcom/inka/ncg2/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_3

    .line 2200
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 2202
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 2207
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p2

    .line 2200
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p3

    .line 2202
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 2207
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_e

    :catch_3
    move-exception p1

    .line 2209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :catch_4
    move-exception p2

    goto :goto_4

    :catch_5
    move-exception p2

    goto/16 :goto_6

    :catch_6
    move-exception p2

    goto/16 :goto_8

    :catch_7
    move-exception p2

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_f

    :catch_8
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_4

    :catch_9
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_6

    :catch_a
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_8

    :catch_b
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto/16 :goto_f

    :catch_c
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 2193
    :goto_4
    :try_start_7
    iget-object p3, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2195
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const p2, -0xffffef8

    if-eqz v4, :cond_4

    .line 2200
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_5

    :catch_d
    move-exception p3

    .line 2202
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz p1, :cond_a

    .line 2207
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_e

    :catch_e
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 2188
    :goto_6
    :try_start_a
    iget-object p3, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 2190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const p2, -0xfffdfff

    if-eqz v4, :cond_5

    .line 2200
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f

    goto :goto_7

    :catch_f
    move-exception p3

    .line 2202
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_7
    if-eqz p1, :cond_a

    .line 2207
    :try_start_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_e

    :catch_10
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_8
    const p3, -0xffffcf6

    .line 2185
    :try_start_d
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NCG_ProcessPostMsg] NCGERR_INVALID_XML_RESPONSE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v4, :cond_6

    .line 2200
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    goto :goto_9

    :catch_11
    move-exception p2

    .line 2202
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_9
    if-eqz p1, :cond_7

    .line 2207
    :try_start_f
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_a

    :catch_12
    move-exception p1

    .line 2209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_a
    const p2, -0xffffcf6

    goto :goto_e

    :catch_13
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_b
    const p3, -0xefffffc

    .line 2181
    :try_start_10
    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NCG_ProcessPostMsg] Timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v4, :cond_8

    .line 2200
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    goto :goto_c

    :catch_14
    move-exception p2

    .line 2202
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_c
    if-eqz p1, :cond_9

    .line 2207
    :try_start_12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_15

    goto :goto_d

    :catch_15
    move-exception p1

    .line 2209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_d
    const p2, -0xefffffc

    :cond_a
    :goto_e
    return p2

    :catchall_2
    move-exception p2

    :goto_f
    if-eqz v4, :cond_b

    .line 2200
    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    goto :goto_10

    :catch_16
    move-exception p3

    .line 2202
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_10
    if-eqz p1, :cond_c

    .line 2207
    :try_start_14
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    goto :goto_11

    :catch_17
    move-exception p1

    .line 2209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2210
    :cond_c
    :goto_11
    throw p2
.end method


# virtual methods
.method a()I
    .locals 8

    .line 2103
    iget-object v0, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 2111
    iget-object v1, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/inka/ncg2/i$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/inka/ncg2/i$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/inka/ncg2/i$a;->c:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_MakeContentsRORequestMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[I)I

    move-result v1

    .line 2113
    iget-object v2, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v2, v1}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 2117
    aget v1, v7, v1

    iget-object v2, p0, Lcom/inka/ncg2/i$a;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/inka/ncg2/i$a;->a([BILjava/lang/String;)I

    move-result v0

    .line 2118
    iget-object v1, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v1, v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2119
    iget-object v1, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    const-string v2, "NCG_GetContentsLicense()"

    invoke-static {v1, v2, v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;Ljava/lang/String;I)V

    return v0

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/inka/ncg2/i$a;->f:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/inka/ncg2/i$a;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/inka/ncg2/i$a;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->LicMgr_ParseAndSaveROMsg(Ljava/lang/String;Z)I

    move-result v0

    return v0

    .line 2104
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
