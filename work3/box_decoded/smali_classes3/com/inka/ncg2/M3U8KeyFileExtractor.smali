.class public Lcom/inka/ncg2/M3U8KeyFileExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NETWORK_TIMEOUT_MS:I = 0x2710

.field private static final tagOfKeyFile:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final tagOfKeyURI:Ljava/lang/String; = "URI=\""

.field private static final tagOfSubM3U8File:Ljava/lang/String; = "#EXT-X-STREAM-INF"


# instance fields
.field private mContentID:Ljava/lang/String;

.field private mIsNcgContent:Z

.field private mKeyData:Ljava/lang/String;

.field private mKeyUrl:Ljava/lang/String;

.field private mM3U8Data:Ljava/lang/String;

.field private mM3U8Url:Ljava/lang/String;

.field private mSiteID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downloadAndParseKeyFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyUrl:Ljava/lang/String;

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->downloadUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    const-string v1, "NCGFILE_HEADER"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    const-string v1, "<cid>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Invalid NCG KeyFile."

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    const-string v4, "</cid>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 149
    iget-object v4, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mContentID:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    const-string v3, "<sid>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mSiteID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mIsNcgContent:Z

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mIsNcgContent:Z

    :goto_0
    return-void
.end method

.method private downloadUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Agent;->getHttpRequestCallback()Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, ""

    .line 212
    invoke-interface {v0, p1, v2, v1, p2}, Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;->sendRequest(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object p2

    .line 213
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 216
    new-instance v0, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusCode()I

    move-result v2

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "Range"

    const-string v4, "bytes=0-%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p2, -0x1

    .line 226
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GET"

    .line 227
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x2710

    .line 228
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 229
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 230
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 231
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 232
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_2

    const/16 v5, 0xce

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    new-instance p2, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-direct {p2, p1, v4, v3}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    .line 234
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 237
    new-array p1, p2, [B

    const/4 v3, 0x0

    :cond_3
    sub-int v4, p2, v3

    .line 238
    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_4

    add-int/2addr v3, v4

    if-lt v3, p2, :cond_3

    .line 244
    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_1
    if-eqz v0, :cond_7

    .line 251
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 255
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1
.end method

.method private getKeyFileUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v1, "#EXT-X-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 186
    iget-object v2, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v3, "URI=\""

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "Invalid M3U8 Content."

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x5

    .line 192
    iget-object v3, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Url:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 194
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubM3U8Url()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v1, "#EXT-X-STREAM-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 168
    iget-object v2, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "Invalid M3U8 Content."

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 173
    iget-object v4, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, v2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    new-instance v0, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {v0, v2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public doExtract(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Url:Ljava/lang/String;

    const/16 v0, 0x400

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->downloadUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    const-string v2, "#EXTM3U"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 80
    invoke-direct {p0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getKeyFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iput-object v1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyUrl:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->downloadAndParseKeyFile()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getSubM3U8Url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "http"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/"

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->downloadUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mM3U8Data:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getKeyFileUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iput-object p1, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyUrl:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->downloadAndParseKeyFile()V

    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid M3U8 Content."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyURL()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mKeyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteID()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mSiteID:Ljava/lang/String;

    return-object v0
.end method

.method public isNcgContent()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/inka/ncg2/M3U8KeyFileExtractor;->mIsNcgContent:Z

    return v0
.end method
