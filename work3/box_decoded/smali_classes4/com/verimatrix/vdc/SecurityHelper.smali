.class Lcom/verimatrix/vdc/SecurityHelper;
.super Ljava/lang/Object;
.source "SecurityHelper.java"


# static fields
.field private static final CN_PATTERN:Ljava/lang/String; = "C=%s, ST=%s, L=%s, O=%s, OU=%s, CN=%s, EMAILADDRESS=%s"

.field private static final TAG:Ljava/lang/String; = "SecurityHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ConvertToPEM(Ljava/lang/String;[BLjava/lang/StringBuilder;)Z
    .locals 2

    .line 115
    :try_start_0
    new-instance v0, Lorg/spongycastle/util/io/pem/PemObject;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    .line 116
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 122
    new-instance v1, Lorg/spongycastle/openssl/jcajce/JcaPEMWriter;

    invoke-direct {v1, p2}, Lorg/spongycastle/openssl/jcajce/JcaPEMWriter;-><init>(Ljava/io/Writer;)V

    .line 128
    invoke-virtual {v1, v0}, Lorg/spongycastle/openssl/jcajce/JcaPEMWriter;->writeObject(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V

    .line 129
    invoke-virtual {v1}, Lorg/spongycastle/openssl/jcajce/JcaPEMWriter;->close()V

    .line 130
    invoke-virtual {p2}, Ljava/io/StringWriter;->close()V

    .line 131
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 136
    sget-object p3, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "into PEM Format error = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private GetSignatureAlgo()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA256withRSA"

    return-object v0
.end method


# virtual methods
.method public GetCSRJsonObject(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "C=%s, ST=%s, L=%s, O=%s, OU=%s, CN=%s, EMAILADDRESS=%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "US"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CA"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "San Diego"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Verimatrix"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ViewRight Web"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "web_android"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "abc.verimatrix.com"

    aput-object v4, v2, v3

    .line 44
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p1}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->KeyGenration(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;)Ljava/security/KeyPair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 49
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Invalid Key Generated, keyPair is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 60
    :cond_1
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v4, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-direct {p0}, Lcom/verimatrix/vdc/SecurityHelper;->GetSignatureAlgo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;

    move-result-object v1

    if-nez v1, :cond_2

    .line 64
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Invalid value of subject or signGen is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 68
    :cond_2
    new-instance v2, Lorg/spongycastle/pkcs/jcajce/JcaPKCS10CertificationRequestBuilder;

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pkcs/jcajce/JcaPKCS10CertificationRequestBuilder;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V

    .line 69
    invoke-virtual {v2, v1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    move-result-object v1

    if-nez v1, :cond_3

    .line 72
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Invalid value of builder or csr is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 76
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CERTIFICATE REQUEST"

    .line 79
    invoke-virtual {v1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v5, v1, v2}, Lcom/verimatrix/vdc/SecurityHelper;->ConvertToPEM(Ljava/lang/String;[BLjava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 81
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Failed to Convert CSR Request into PEM Format"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 84
    :cond_4
    invoke-static {p1, v4, v3}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->KeyPairObjToBase64(Ljava/security/KeyPair;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;

    move-result-object p1

    sget-object v1, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;

    if-eq p1, v1, :cond_5

    .line 85
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Failed to convert keypair to base64 public key and private key"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 89
    :cond_5
    new-instance p1, Lcom/verimatrix/vdc/StoreFile;

    sget-object v1, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    const-string v1, "pubKey"

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v1

    sget-object v4, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v1, v4, :cond_6

    .line 92
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Failed to write public key on storage"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    const-string v1, "privKey"

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p1, v1, :cond_7

    .line 97
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Failed to write private key on storage"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    const-string p1, "deviceId"

    .line 100
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "csr"

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 56
    :cond_8
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    const-string p2, "Invalid value of privateKey or publicKey is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 105
    sget-object p2, Lcom/verimatrix/vdc/SecurityHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to Create CSR error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method
