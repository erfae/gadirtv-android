.class Lcom/inka/ncg2/h;
.super Lcom/inka/ncg/jni/HttpRequestJniCallback;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/inka/ncg/jni/HttpRequestJniCallback;-><init>()V

    const-string v0, "Unknown"

    .line 20
    iput-object v0, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    return-void
.end method


# virtual methods
.method a()Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;->sendRequest(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xc8

    .line 39
    iput p1, p0, Lcom/inka/ncg2/h;->a:I

    const-string p1, "Server response zero byte."

    .line 40
    iput-object p1, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    const-string p1, "Request Succeeded. Not Error but 0 byte responsed."

    .line 41
    iput-object p1, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/inka/ncg2/h;->a:I

    const-string p2, "UnsupportedEncodingException Exception!"

    .line 58
    iput-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusCode()I

    move-result p2

    iput p2, p0, Lcom/inka/ncg2/h;->a:I

    .line 46
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusMsg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendRequest() Exception Occured: Http StatusCode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/inka/ncg2/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Http Status Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Last Error Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NCG_Agent"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLastErrorMsg()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/inka/ncg2/h;->a:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    invoke-interface {v1, p1, p2}, Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0xc8

    .line 73
    iput p2, p0, Lcom/inka/ncg2/h;->a:I

    const-string p2, "Server response zero byte."

    .line 74
    iput-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    const-string p2, "Request Succeeded. Not Error but 0 byte responsed."

    .line 75
    iput-object p2, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusCode()I

    move-result p2

    iput p2, p0, Lcom/inka/ncg2/h;->a:I

    .line 80
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusMsg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendRequest() Exception Occured: Http StatusCode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/inka/ncg2/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Http Status Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Last Error Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NCG_Agent"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public sendRequestResponseBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/inka/ncg2/h;->d:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    invoke-interface {v1, p1, p2}, Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;->sendRequestResponseBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v0, [B
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusCode()I

    move-result p2

    iput p2, p0, Lcom/inka/ncg2/h;->a:I

    .line 126
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getHttpStatusMsg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendRequest() Exception Occured: Http StatusCode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/inka/ncg2/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Http Status Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Last Error Msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/inka/ncg2/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NCG_Agent"

    .line 132
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [B

    return-object p1
.end method
