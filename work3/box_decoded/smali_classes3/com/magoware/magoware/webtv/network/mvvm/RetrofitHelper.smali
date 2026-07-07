.class public Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;
.super Ljava/lang/Object;
.source "RetrofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$MagowareApi;,
        Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;,
        Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptor;
    }
.end annotation


# static fields
.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_PRAGMA:Ljava/lang/String; = "Pragma"

.field private static final TAG:Ljava/lang/String; = "RetrofitHelper"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final gson:Lcom/google/gson/Gson;

.field private static magoServiceInstance:Lcom/magoware/magoware/webtv/network/mvvm/MagoService; = null

.field private static retrofitHelperInstance:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper; = null

.field public static retrofitInstance:Lretrofit2/Retrofit; = null

.field public static tiboDomain:Ljava/lang/String; = "apps.tibo.tv"

.field public static final tiboPins:[Ljava/lang/String;


# instance fields
.field private MAX_AGE:I

.field private cache:Lokhttp3/Cache;

.field private onlineInterceptor:Lokhttp3/Interceptor;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sha256/wCTUgdkZwXDVWp8QoCdhErxir3Mg+hevhJC071cm1BU="

    const-string v1, "sha256/amMeV6gb9QNx0Zf7FtJ19Wa/t2B7KpCF/1n2Js3UuSU="

    const-string v2, "sha256/K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q="

    .line 68
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->tiboPins:[Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$1;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lokhttp3/Cache;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide/32 v2, 0x1400000

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->cache:Lokhttp3/Cache;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->MAX_AGE:I

    .line 105
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$3-QZwRtRWDe3orwrTlBy3Q7ctA0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$3-QZwRtRWDe3orwrTlBy3Q7ctA0;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->onlineInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method private addCertificarePinner(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okHttpBuilder"
        }
    .end annotation

    .line 257
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->tiboDomain:Ljava/lang/String;

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->tiboPins:[Ljava/lang/String;

    .line 258
    invoke-virtual {v0, v1, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    .line 260
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public static get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;
    .locals 1

    .line 124
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitHelperInstance:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitHelperInstance:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    .line 127
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitHelperInstance:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    return-object v0
.end method

.method public static getMagoServiceInstance()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;
    .locals 1

    .line 116
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->magoServiceInstance:Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->magoServiceInstance:Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    .line 120
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->magoServiceInstance:Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    return-object v0
.end method

.method static synthetic lambda$getOkHttpClient$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$offlineInterceptor$2(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RetrofitHelper"

    const-string v2, "offline interceptor: called."

    .line 269
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Lokhttp3/CacheControl$Builder;

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    const/4 v2, 0x7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 271
    invoke-virtual {v1, v2, v3}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Pragma"

    .line 275
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Cache-Control"

    .line 276
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 281
    :cond_0
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static offlineInterceptor()Lokhttp3/Interceptor;
    .locals 1

    .line 264
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$PBFptI2lF04OVHAizX5nmM9kYJo;->INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$PBFptI2lF04OVHAizX5nmM9kYJo;

    return-object v0
.end method


# virtual methods
.method public apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;
    .locals 2

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->MAX_AGE:I

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofit(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    return-object v0
.end method

.method public apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxAge"
        }
    .end annotation

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->MAX_AGE:I

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofit(Z)Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    return-object p1
.end method

.method public apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableHeaders"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->MAX_AGE:I

    .line 137
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofit(Z)Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    return-object p1
.end method

.method public getHttpParams()Ljava/lang/String;
    .locals 4

    .line 243
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    .line 247
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---vvv-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOkHttpClient(Z)Lokhttp3/OkHttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableHeaders"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :try_start_0
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/TLSSocketFactory;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/TLSSocketFactory;-><init>()V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 163
    :goto_0
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    move-object v1, v0

    .line 168
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    sget-object v3, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v3, Lokhttp3/ConnectionSpec$Builder;

    sget-object v4, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v3, v4}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v4, 0x0

    new-array v5, v4, [Lokhttp3/CipherSuite;

    .line 174
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lokhttp3/CipherSuite;

    invoke-virtual {v3, v2}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v2

    .line 177
    new-instance v3, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 178
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v3, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    if-eqz p1, :cond_0

    .line 180
    new-instance p1, Lcom/magoware/magoware/webtv/api/AuthInterceptor;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/api/AuthInterceptor;-><init>()V

    goto :goto_2

    :cond_0
    new-instance v5, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;

    invoke-direct {v5, p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;Z)V

    move-object p1, v5

    .line 182
    :goto_2
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v6, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->cache:Lokhttp3/Cache;

    .line 183
    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->onlineInterceptor:Lokhttp3/Interceptor;

    .line 185
    invoke-virtual {v3, v5}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 186
    invoke-virtual {v3, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->offlineInterceptor()Lokhttp3/Interceptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    .line 188
    invoke-virtual {p1, v5, v6, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 189
    invoke-virtual {p1, v5, v6, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 190
    invoke-virtual {p1, v5, v6, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Lokhttp3/ConnectionSpec;

    aput-object v2, v3, v4

    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 191
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/TLSSocketFactory;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 202
    :cond_1
    :try_start_1
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$2;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;)V

    new-array v2, v5, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v2, v4

    const-string v3, "SSL"

    .line 219
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 220
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 222
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 223
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 225
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p1, v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 227
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;->INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 233
    :cond_3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getQRCodeData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firebaseToken"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/htmlContent/remotedeviceloginform?googleid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&url="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public synthetic lambda$new$0$RetrofitHelper(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "RetrofitHelper"

    const-string v1, "network interceptor: called."

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public, max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->MAX_AGE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache-Control"

    .line 110
    invoke-virtual {p1, v1, v0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Pragma"

    .line 111
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public retrofit(Z)Lretrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableHeaders"
        }
    .end annotation

    .line 146
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getOkHttpClient(Z)Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->gson:Lcom/google/gson/Gson;

    .line 149
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 152
    sput-object p1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitInstance:Lretrofit2/Retrofit;

    return-object p1
.end method
