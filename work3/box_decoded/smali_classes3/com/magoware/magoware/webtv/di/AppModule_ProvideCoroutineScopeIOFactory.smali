.class public final Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideCoroutineScopeIOFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/magoware/magoware/webtv/di/AppModule;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/di/AppModule;)V
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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/AppModule;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;
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
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;)V

    return-object v0
.end method

.method public static provideCoroutineScopeIO(Lcom/magoware/magoware/webtv/di/AppModule;)Lkotlinx/coroutines/CoroutineScope;
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
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/AppModule;->provideCoroutineScopeIO()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideCoroutineScopeIOFactory;->provideCoroutineScopeIO(Lcom/magoware/magoware/webtv/di/AppModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
