.class public final Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;
.super Ljava/lang/Object;
.source "CoreDataModule_ProvideLoggingInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/magoware/magoware/webtv/di/CoreDataModule;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;-><init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;)V

    return-object v0
.end method

.method public static provideLoggingInterceptor(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule;->provideLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;->get()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideLoggingInterceptorFactory;->provideLoggingInterceptor(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method
