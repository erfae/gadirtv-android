.class public final Lcom/google/vr/cardboard/VrParamsProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VrParamsProviderFactory"

.field private static providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;
    .locals 2

    .line 2
    sget-object v0, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;

    iget-object v1, v0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    iget-object v0, v0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/LegacyVrParamsProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.vr.vrcore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.google.vr.vrcore.settings"

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 24
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    return-object v2

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.VR_SETTINGS_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 33
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 34
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/vr/cardboard/PackageUtils;->isGooglePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v2
.end method

.method public static isContentProviderAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 16
    sget-object v0, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;

    if-eqz v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setProviderForTesting(Lcom/google/vr/cardboard/VrParamsProvider;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    return-void
.end method

.method public static tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    .locals 3

    .line 8
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    new-instance p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    invoke-direct {p0, v2, v1}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
