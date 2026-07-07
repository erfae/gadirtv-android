.class final Lcom/verimatrix/vdc/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;,
        Lcom/verimatrix/vdc/XmlParser$CtsServerByUrlResponse;,
        Lcom/verimatrix/vdc/XmlParser$EventSendResponse;,
        Lcom/verimatrix/vdc/XmlParser$LogoutResponse;,
        Lcom/verimatrix/vdc/XmlParser$LoginResponse;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XmlParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 188
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    .line 190
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 191
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-object v0
.end method

.method static parseCtsServerByCodeResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;
    .locals 5

    .line 151
    new-instance v0, Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;

    invoke-direct {v0}, Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;-><init>()V

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    :try_start_0
    invoke-static {p0}, Lcom/verimatrix/vdc/XmlParser;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    const/4 v1, 0x0

    .line 157
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "id"

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x1

    .line 170
    invoke-static {v1, v2, v3}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;->id:J

    .line 177
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    sget-object v1, Lcom/verimatrix/vdc/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "parseCtsServerByCodeResponse: Error while parsing XML"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v0
.end method

.method static parseCtsServerByUrlResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$CtsServerByUrlResponse;
    .locals 8

    .line 139
    new-instance v0, Lcom/verimatrix/vdc/XmlParser$CtsServerByUrlResponse;

    invoke-direct {v0}, Lcom/verimatrix/vdc/XmlParser$CtsServerByUrlResponse;-><init>()V

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 142
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    const-string v5, "="

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v5, v0, Lcom/verimatrix/vdc/XmlParser$CtsServerByUrlResponse;->metadata:Ljava/util/Map;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static parseEventSendResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$EventSendResponse;
    .locals 4

    .line 99
    new-instance v0, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;

    invoke-direct {v0}, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;-><init>()V

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/verimatrix/vdc/XmlParser;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 106
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "mirimon"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 114
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    const-string v2, "status"

    .line 115
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;->status:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string v2, "version"

    .line 117
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;->version:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, "status_code"

    .line 119
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/verimatrix/vdc/XmlParser$EventSendResponse;->statusCode:Ljava/lang/String;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_4
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    sget-object v1, Lcom/verimatrix/vdc/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "parseEventSendResponse: Error while parsing XML"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object v0
.end method

.method static parseLoginResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$LoginResponse;
    .locals 6

    .line 21
    new-instance v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    invoke-direct {v0}, Lcom/verimatrix/vdc/XmlParser$LoginResponse;-><init>()V

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/verimatrix/vdc/XmlParser;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    const/4 v1, 0x0

    .line 27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "result"

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    iput-object v1, v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->result:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "Success"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    iput-boolean v3, v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    goto :goto_1

    :cond_2
    const-string v2, "id"

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    iput-object v1, v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->id:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "config"

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    iput-object v1, v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->config:Ljava/lang/String;

    .line 52
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    sget-object v1, Lcom/verimatrix/vdc/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "parseLoginResponse: Error while parsing XML"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object v0
.end method

.method static parseLogoutResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$LogoutResponse;
    .locals 6

    .line 62
    new-instance v0, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;

    invoke-direct {v0}, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;-><init>()V

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/verimatrix/vdc/XmlParser;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    const/4 v1, 0x0

    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 70
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "result"

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iput-object v1, v0, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->result:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "Success"

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iput-boolean v3, v0, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->success:Z

    .line 89
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    sget-object v1, Lcom/verimatrix/vdc/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "parseLogoutResponse: Error while parsing XML"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v0
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 4

    .line 250
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    sget-object v1, Lcom/verimatrix/vdc/XmlParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide p1
.end method
