.class Lcom/google/vr/sdk/widgets/video/deps/kk;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nr;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final b:[B

.field private final c:[B

.field private d:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->b:[B

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->c:[B

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->d:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->d:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/kk;->d()Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->b:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->c:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 14
    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/nu;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/nu;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 19
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->d:Ljavax/crypto/CipherInputStream;

    .line 20
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/nu;->a()V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 11
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->d:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->d:Ljavax/crypto/CipherInputStream;

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kk;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->c()V

    :cond_0
    return-void
.end method

.method protected d()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 33
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
