.class Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;
.super Ljava/lang/Object;
.source "VOOSMPLicenseManager.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VOLicRetrieverImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOLicRetrieverImpl"


# instance fields
.field private mCancel:Z

.field private mDS_ID:Ljava/lang/String;

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mHTTPStatusCode:I

.field private mKEYLEN:I

.field private mKID:Ljava/lang/String;

.field private mLA_URL:Ljava/lang/String;

.field private mLA_request_properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLUI_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1067
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mKEYLEN:I

    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mKID:Ljava/lang/String;

    .line 1069
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    .line 1070
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_request_properties:Ljava/util/Map;

    .line 1071
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLUI_URL:Ljava/lang/String;

    .line 1072
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mDS_ID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1074
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    .line 1075
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1076
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1077
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mCancel:Z

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;[BI)Ljava/lang/String;
    .locals 0

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->simpleHttpPost([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extractLicenseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1414
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    int-to-char p1, p1

    .line 1415
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/high16 p1, 0x10000000

    .line 1421
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    const-string p1, "Unable to extract license response"

    .line 1422
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private extractLicenseResponseWV(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1390
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1394
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1395
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1403
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHTTPHeaderString(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6

    .line 1431
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 1433
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1435
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 1438
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1440
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method private getSOAPRequest([B)Ljava/lang/String;
    .locals 2

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</soap:Body></soap:Envelope>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private printHttpHeader(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1448
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->getHTTPHeaderString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOLicRetrieverImpl"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private processErrorStream(Ljava/io/InputStream;)V
    .locals 5

    .line 1339
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 1341
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1342
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1345
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    int-to-char p1, p1

    .line 1346
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1350
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 1351
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 1352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1353
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    const-string v0, "faultcode"

    .line 1354
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1355
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 1356
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_3

    .line 1363
    :cond_1
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "soap:Server"

    .line 1364
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    .line 1365
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_1

    :cond_2
    const-string v3, "soap:Client"

    .line 1366
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    .line 1367
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    :goto_1
    const-string v0, "faultstring"

    .line 1374
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1375
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1376
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 1381
    :cond_3
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    goto :goto_4

    :cond_4
    :goto_2
    const-string p1, "faultstring is not available"

    .line 1378
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    return-void

    .line 1369
    :cond_5
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown faultcode \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    return-void

    .line 1358
    :cond_6
    :goto_3
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    const-string p1, "No faultcode"

    .line 1359
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1384
    :catch_0
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    const-string p1, ""

    .line 1385
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method private simpleHttpPost([BI)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, " "

    const-string v3, "[HTTP] RESPONSE: "

    const-string v4, "@@@VOLicRetrieverImpl"

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    .line 1213
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8

    const/4 v7, 0x3

    const/16 v8, 0x190

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x1f4

    .line 1221
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "https"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v12, :cond_0

    .line 1223
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v12, v6

    goto/16 :goto_c

    .line 1226
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_0
    move-object v12, v0

    :try_start_4
    const-string v0, "POST"

    .line 1228
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1229
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1230
    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    move/from16 v0, p2

    if-ne v10, v0, :cond_1

    const-string v0, "Content-Type"

    const-string v13, "application/octet-stream"

    .line 1235
    invoke-virtual {v12, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_1
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_request_properties:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1238
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1239
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v14, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    :cond_2
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v0, p1

    .line 1245
    :try_start_5
    invoke-virtual {v13, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1247
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    .line 1252
    iget-boolean v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mCancel:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_7

    if-eqz v12, :cond_6

    .line 1283
    :try_start_7
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v8, :cond_5

    if-ne v0, v11, :cond_3

    .line 1286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_2

    .line 1288
    :cond_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1290
    :goto_2
    iget v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v11, :cond_4

    .line 1291
    iput v10, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_3

    .line 1293
    :cond_4
    iput v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1295
    :cond_5
    :goto_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1300
    :catch_1
    :cond_6
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v6

    .line 1256
    :cond_7
    :try_start_8
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 1257
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v14, 0x400

    new-array v15, v14, [B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1261
    :goto_4
    :try_start_9
    invoke-virtual {v13, v15, v9, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_8

    .line 1262
    invoke-virtual {v0, v15, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v14, 0x400

    goto :goto_4

    .line 1267
    :cond_8
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1272
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v12, :cond_c

    .line 1283
    :try_start_b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v5, v8, :cond_b

    if-ne v5, v11, :cond_9

    .line 1286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_5

    .line 1288
    :cond_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1290
    :goto_5
    iget v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v5, v11, :cond_a

    .line 1291
    iput v10, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_6

    .line 1293
    :cond_a
    iput v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1295
    :cond_b
    :goto_6
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 1300
    :catch_2
    :cond_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 1264
    :catch_3
    :try_start_c
    iput v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1267
    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v12, :cond_10

    .line 1283
    :try_start_e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v8, :cond_f

    if-ne v0, v11, :cond_d

    .line 1286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_7

    .line 1288
    :cond_d
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1290
    :goto_7
    iget v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v11, :cond_e

    .line 1291
    iput v10, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_8

    .line 1293
    :cond_e
    iput v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1295
    :cond_f
    :goto_8
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 1300
    :catch_4
    :cond_10
    :goto_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_a
    const/4 v2, 0x0

    return-object v2

    .line 1267
    :goto_b
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_2
    move-exception v0

    move-object v6, v0

    .line 1247
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catch_5
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_f

    :catch_6
    move-exception v0

    const/4 v12, 0x0

    .line 1277
    :goto_c
    :try_start_10
    iput v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v12, :cond_10

    .line 1283
    :try_start_11
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v8, :cond_13

    if-ne v0, v11, :cond_11

    .line 1286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_d

    .line 1288
    :cond_11
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1290
    :goto_d
    iget v0, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v0, v11, :cond_12

    .line 1291
    iput v10, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_e

    .line 1293
    :cond_12
    iput v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1295
    :cond_13
    :goto_e
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v6, v12

    :goto_f
    if-eqz v6, :cond_17

    .line 1283
    :try_start_12
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v5, v8, :cond_16

    if-ne v5, v11, :cond_14

    .line 1286
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_10

    .line 1288
    :cond_14
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1290
    :goto_10
    iget v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v5, v11, :cond_15

    .line 1291
    iput v10, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_11

    .line 1293
    :cond_15
    iput v7, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1295
    :cond_16
    :goto_11
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 1300
    :catch_7
    :cond_17
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 1215
    :catch_8
    iput v5, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto/16 :goto_a
.end method


# virtual methods
.method public acquireLicense(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 13

    const-string v0, "ResponseHeader.txt"

    const-string v1, "Failed to read HTTP response"

    const-string v2, "PRHeader.txt"

    const-string v3, "LicenseChallenge.txt"

    const-string v4, "Error.txt"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "@@@VOLicRetrieverImpl"

    const-string v8, "acquireLicense"

    .line 1083
    invoke-static {v7, v8, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    const/4 p2, 0x0

    const/4 v8, 0x1

    .line 1092
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1093
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    :cond_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "acquireLicense uses HTTPS"

    new-array v11, v5, [Ljava/lang/Object;

    .line 1097
    invoke-static {v7, v10, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1107
    :goto_0
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v10, "Content-type"

    const-string v11, "text/xml; charset=utf-8"

    .line 1108
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "SOAPAction"

    const-string v11, "\"http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense\""

    .line 1109
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_request_properties:Ljava/util/Map;

    if-eqz v10, :cond_2

    .line 1112
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1113
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 1120
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1122
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1141
    :try_start_5
    invoke-direct {p0, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->printHttpHeader(Ljava/net/HttpURLConnection;)V

    .line 1144
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    const/16 v11, 0x190

    if-lt v10, v11, :cond_7

    const/16 v11, 0x1f4

    if-ne v10, v11, :cond_3

    .line 1148
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->processErrorStream(Ljava/io/InputStream;)V

    goto :goto_2

    .line 1150
    :cond_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1152
    :goto_2
    iget v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-lt v10, v11, :cond_4

    const/4 v10, 0x2

    .line 1153
    iput v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    goto :goto_3

    :cond_4
    const/4 v10, 0x3

    .line 1155
    iput v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1159
    :goto_3
    invoke-static {v4, v1, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1160
    invoke-static {v3, v6, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1161
    invoke-static {v2, p1, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1162
    invoke-direct {p0, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->getHTTPHeaderString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1164
    iget v10, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    if-ne v10, v11, :cond_5

    .line 1165
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "HTTPErrorStream.txt"

    .line 1166
    invoke-static {v11, v10, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1167
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "mHTTPStatusCode == 500"

    new-array v11, v5, [Ljava/lang/Object;

    .line 1168
    invoke-static {v7, v10, v11}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v9, :cond_6

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object p2

    .line 1174
    :cond_7
    :try_start_6
    iget-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mCancel:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v7, :cond_9

    if-eqz v9, :cond_8

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return-object p2

    .line 1177
    :cond_9
    :try_start_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->extractLicenseResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v9, :cond_a

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-object p1

    .line 1179
    :catch_0
    :try_start_8
    iput v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1180
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1183
    invoke-static {v4, v1, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1184
    invoke-static {v3, v6, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1185
    invoke-static {v2, p1, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1186
    invoke-direct {p0, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->getHTTPHeaderString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_b

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-object p2

    :catchall_0
    move-exception v0

    .line 1124
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1125
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1128
    :catch_1
    :try_start_a
    iput v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    const-string v0, "Failed to send HTTP POST request"

    .line 1129
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    const-string v0, "Failed to send HTTP POST request to PR license server"

    .line 1132
    invoke-static {v4, v0, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1133
    invoke-static {v3, v6, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1134
    invoke-static {v2, p1, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "RequestHeader.txt"

    .line 1135
    invoke-direct {p0, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->getHTTPHeaderString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v9, :cond_c

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-object v9, p2

    .line 1192
    :catch_3
    :try_start_b
    iput v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    .line 1193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create HTTP connection to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    .line 1196
    invoke-static {v4, p1, v8}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmLicMgrUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v9, :cond_d

    .line 1201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-object p2

    :catchall_2
    move-exception p1

    move-object p2, v9

    :goto_4
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw p1
.end method

.method public getErrorCode()I
    .locals 1

    .line 1311
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPStatusCode()I
    .locals 1

    .line 1306
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mHTTPStatusCode:I

    return v0
.end method

.method public setCancel(Z)V
    .locals 0

    .line 1207
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mCancel:Z

    return-void
.end method

.method public setDS_ID(Ljava/lang/String;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mDS_ID:Ljava/lang/String;

    return-void
.end method

.method public setKEYLEN(I)V
    .locals 0

    .line 1319
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mKEYLEN:I

    return-void
.end method

.method public setKID(Ljava/lang/String;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mKID:Ljava/lang/String;

    return-void
.end method

.method public setLA_COOKIE(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1322
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_request_properties:Ljava/util/Map;

    return-void
.end method

.method public setLA_URL(Ljava/lang/String;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLA_URL:Ljava/lang/String;

    return-void
.end method

.method public setLUI_URL(Ljava/lang/String;)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->mLUI_URL:Ljava/lang/String;

    return-void
.end method
