.class public Lcom/nettv/livestore/utils/UnsafeOkHttpClient;
.super Ljava/lang/Object;
.source "UnsafeOkHttpClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 1
    new-instance v1, Lcom/nettv/livestore/utils/UnsafeOkHttpClient$1;

    invoke-direct {v1}, Lcom/nettv/livestore/utils/UnsafeOkHttpClient$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 5
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    aget-object v0, v0, v2

    .line 6
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    new-instance v0, Lcom/nettv/livestore/utils/UnsafeOkHttpClient$2;

    invoke-direct {v0}, Lcom/nettv/livestore/utils/UnsafeOkHttpClient$2;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    return-object v0

    :catch_37
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
