.class final Lpl/droidsonroids/relinker/SystemLibraryLoader;
.super Ljava/lang/Object;
.source "SystemLibraryLoader.java"

# interfaces
.implements Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public loadPath(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "lib"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ".so"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    .line 2
    :cond_11
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportedAbis()[Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_6

    return-object v0

    .line 2
    :cond_6
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    return-object v1

    :cond_1a
    new-array v0, v3, [Ljava/lang/String;

    .line 4
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
