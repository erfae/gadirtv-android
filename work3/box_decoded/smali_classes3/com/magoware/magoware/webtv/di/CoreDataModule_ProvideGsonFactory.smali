.class public final Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;
.super Ljava/lang/Object;
.source "CoreDataModule_ProvideGsonFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/gson/Gson;",
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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;
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
    new-instance v0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;-><init>(Lcom/magoware/magoware/webtv/di/CoreDataModule;)V

    return-object v0
.end method

.method public static provideGson(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lcom/google/gson/Gson;
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
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule;->provideGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/gson/Gson;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;->module:Lcom/magoware/magoware/webtv/di/CoreDataModule;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;->provideGson(Lcom/magoware/magoware/webtv/di/CoreDataModule;)Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/CoreDataModule_ProvideGsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
