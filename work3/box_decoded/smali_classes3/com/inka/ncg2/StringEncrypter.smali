.class public Lcom/inka/ncg2/StringEncrypter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private initalVector:Ljavax/crypto/spec/IvParameterSpec;

.field private key:Ljavax/crypto/spec/SecretKeySpec;

.field private rijndael:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 64
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    .line 67
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 68
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object p1, p0, Lcom/inka/ncg2/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The initial vector can not be null or an empty string."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The key can not be null or an empty string."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/inka/ncg2/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/inka/ncg2/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 115
    invoke-static {p1}, Lcom/inka/ncg2/Base64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 121
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The cipher string can not be null or an empty string."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/inka/ncg2/StringEncrypter;->key:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/inka/ncg2/StringEncrypter;->initalVector:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v0, "UTF8"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/inka/ncg2/StringEncrypter;->rijndael:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/inka/ncg2/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
