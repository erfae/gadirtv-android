.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;
.super Ljava/lang/Object;
.source "DrmProtectionHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@ProtectionHeader"


# instance fields
.field private mALGID:Ljava/lang/String;

.field private mBase64Header:[B

.field private mCHECKSUM:Ljava/lang/String;

.field private mDS_ID:Ljava/lang/String;

.field private mIsRead:Z

.field private mKEYLEN:I

.field private mKID:Ljava/lang/String;

.field private mLA_URL:Ljava/lang/String;

.field private mLUI_URL:Ljava/lang/String;

.field private mProtectionHeader:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    .line 51
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mBase64Header:[B

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mIsRead:Z

    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I

    .line 55
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    const-string v0, "@@@ProtectionHeader"

    if-eqz p1, :cond_5

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x9

    const/16 v2, 0x8

    .line 94
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 95
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    or-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xa

    .line 99
    array-length v2, p1

    if-le v0, v2, :cond_2

    return-void

    .line 101
    :cond_2
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    :goto_0
    if-ge v1, v0, :cond_3

    .line 104
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mBase64Header:[B

    .line 113
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->readProtectionHeader([B)V

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM Header illegal !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 67
    :cond_5
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "DRM Header is null or empty !"

    .line 68
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    .line 51
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mBase64Header:[B

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mIsRead:Z

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I

    .line 55
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    .line 117
    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    const/4 v0, 0x2

    .line 118
    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mBase64Header:[B

    .line 119
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->readProtectionHeader([B)V

    return-void
.end method

.method private buildValidXML([B)[B
    .locals 6

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-16\"?>"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-16"

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    array-length v2, p1

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    array-length v4, v0

    add-int/2addr v2, v4

    .line 273
    new-array v1, v2, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 274
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 275
    aget-byte v5, v0, v2

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 278
    aget-byte v0, p1, v3

    aput-byte v0, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-object v1
.end method

.method private extractHeaderElement(Lorg/w3c/dom/NodeList;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 287
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_a

    .line 288
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 289
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v3, :cond_0

    goto/16 :goto_1

    .line 291
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEYLEN"

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    nop

    .line 297
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid KEYLEN "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@ProtectionHeader"

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    const-string v4, "ALGID"

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v4, "KID"

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "CHECKSUM"

    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v4, "LA_URL"

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 310
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v4, "LUI_URL"

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 312
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v4, "DS_ID"

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 314
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_8
    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->extractHeaderElement(Lorg/w3c/dom/NodeList;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return v3
.end method

.method private readProtectionHeader([B)V
    .locals 5

    const-string v0, "@@@ProtectionHeader"

    .line 152
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->buildValidXML([B)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 156
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Invalid PlayReady header"

    new-array v1, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayReady Header : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_2
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 165
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 166
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WRMHEADER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 170
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "WRMHEADER not found"

    new-array v1, v2, [Ljava/lang/Object;

    .line 171
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 175
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Document;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->extractHeaderElement(Lorg/w3c/dom/NodeList;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 180
    :cond_5
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 181
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYLEN     : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 187
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALGID      : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_7
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 193
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KID        : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_8
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 199
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECKSUM   : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_9
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 205
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LA_URL     : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_a
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 211
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LUI_URL    : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_b
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 217
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DS_ID      : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mIsRead:Z

    return-void

    :catch_0
    move-exception p1

    .line 223
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_d

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Failed to process PlayReady ProtectionHeader"

    .line 224
    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method private static swap([BII)V
    .locals 2

    .line 145
    aget-byte v0, p0, p1

    .line 146
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 147
    aput-byte v0, p0, p2

    return-void
.end method


# virtual methods
.method public getALGID()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mALGID:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64ByteHeader()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mBase64Header:[B

    return-object v0
.end method

.method public getByteHeader()[B
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    return-object v0
.end method

.method public getCHECKSUM()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mCHECKSUM:Ljava/lang/String;

    return-object v0
.end method

.method public getDS_ID()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mDS_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYLEN()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKEYLEN:I

    return v0
.end method

.method public getKID()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    return-object v0
.end method

.method public getLA_URL()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLA_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getLUI_URL()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mLUI_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionHeader()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mProtectionHeader:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getSwapKid()[B
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mKID:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x3

    .line 137
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->swap([BII)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 138
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->swap([BII)V

    const/4 v1, 0x4

    const/4 v2, 0x5

    .line 139
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->swap([BII)V

    const/4 v1, 0x6

    const/4 v2, 0x7

    .line 140
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->swap([BII)V

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->mIsRead:Z

    return v0
.end method
