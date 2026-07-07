.class public Lcom/verimatrix/vdc/RSACipherUtils;
.super Ljava/lang/Object;
.source "RSACipherUtils.java"


# static fields
.field private static final TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decryptWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->Base64PrivKeyToPrivKeyObj(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_1

    .line 72
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->KeyGenFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    :cond_1
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 74
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p1, 0x0

    .line 76
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->DecryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    .line 67
    :cond_2
    :goto_0
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0
.end method

.method public static final decryptWithPubKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->Base64PubKeyToPubKeyObj(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    if-nez p1, :cond_1

    .line 96
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->KeyGenFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    :cond_1
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 98
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 99
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p1, 0x0

    .line 100
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 101
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->DecryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    .line 91
    :cond_2
    :goto_0
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0
.end method

.method public static final encryptWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->Base64PrivKeyToPrivKeyObj(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_1

    .line 47
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->privKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 50
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 53
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->EncryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    .line 43
    :cond_2
    :goto_0
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0
.end method

.method public static final encryptWithPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/verimatrix/vdc/RSAKeyGenUtils;->Base64PubKeyToPubKeyObj(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    if-nez p1, :cond_1

    .line 26
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->PubKeyGenFailedFrombase64:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    :cond_1
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 28
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->EncryptionFailed:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0

    .line 21
    :cond_2
    :goto_0
    sget-object p0, Lcom/verimatrix/vdc/RSAErrorCode;->RSAInputError:Lcom/verimatrix/vdc/RSAErrorCode;

    return-object p0
.end method
