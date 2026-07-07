.class public final Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;
.super Ljava/lang/Object;
.source "CoreDataModule_ProvideGsonConverterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/converter/gson/GsonConverterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
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
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    .line 22
    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/CoreDataModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;-><init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideGsonConverterFactory(Lcom/magoware/magoware/webtv/di/CoreDataModule;Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "gson"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/CoreDataModule;->provideGsonConverterFactory(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/converter/gson/GsonConverterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->get()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonConverterFactoryFactory;->provideGsonConverterFactory(Lcom/magoware/magoware/webtv/di/CoreDataModule;Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method
