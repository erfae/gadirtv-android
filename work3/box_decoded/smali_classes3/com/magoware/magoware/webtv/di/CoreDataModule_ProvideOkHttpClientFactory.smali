.class public final Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;
.super Ljava/lang/Object;
.source "CoreDataModule_ProvideOkHttpClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final interceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/magoware/magoware/webtv/di/CoreDataModule;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "interceptorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    .line 22
    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->interceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/CoreDataModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "interceptorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;-><init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOkHttpClient(Lcom/magoware/magoware/webtv/di/CoreDataModule;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "interceptor"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/CoreDataModule;->provideOkHttpClient(Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->interceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideOkHttpClientFactory;->provideOkHttpClient(Lcom/magoware/magoware/webtv/di/CoreDataModule;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
