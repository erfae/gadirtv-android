.class public Lcom/google/vr/vrcore/base/api/BuildUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile isDebug:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized computeIsDebugBuild(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/google/vr/vrcore/base/api/BuildUtils;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    .line 9
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/vr/vrcore/base/api/SignatureUtils;->BLAZE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/vr/vrcore/base/api/SignatureUtils;->ANDROID_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    .line 10
    invoke-static {p0, v1}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find self package info"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isDebugBuild(Landroid/content/Context;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/BuildUtils;->computeIsDebugBuild(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized setIsDebugBuild(Z)V
    .locals 1

    const-class v0, Lcom/google/vr/vrcore/base/api/BuildUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
