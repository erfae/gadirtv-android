.class public Lcom/visualon/OSMPUtils/voLoadJNI;
.super Ljava/lang/Object;
.source "voLoadJNI.java"


# static fields
.field private static final DYNAMIC_HELPER_NAME:Ljava/lang/String; = "vodl"

.field private static final ONELIB_NAME:Ljava/lang/String; = "voOSOneLib"

.field private static final PRODUCT_SUFFIX:Ljava/lang/String; = "_OSMP"

.field private static final TAG:Ljava/lang/String; = "voLoadJNI.java"

.field private static voDynamicHelperLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadDynamicHelper(Ljava/lang/String;)Z
    .locals 2

    .line 49
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "voLoadJNI.java"

    const-string v1, "load ++  vodl"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vodl"

    .line 53
    invoke-static {p0, v1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load -- "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-boolean p0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    if-eqz p0, :cond_1

    const-string p0, "load _OSMP"

    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "_OSMP"

    .line 57
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->nativeSetProductSuffix(Ljava/lang/String;)I

    .line 60
    :cond_1
    sget-boolean p0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    return p0
.end method

.method private static loadLib(Ljava/lang/String;)Z
    .locals 0

    .line 103
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "voLoadJNI.java"

    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibInPathing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, ""

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target file exist "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "General Exception in loadLibInPath"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "UnsatisfiedLinkError in loadLibInPath"

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadLibs([Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 69
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static loadLibsInPath(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 83
    aget-object v3, p1, v1

    invoke-static {p0, v3}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    array-length p0, p1

    if-ne v2, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static loadOneLib()Z
    .locals 1

    const-string v0, "voOSOneLib"

    .line 92
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadOneLibInPath(Ljava/lang/String;)Z
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadDynamicHelper(Ljava/lang/String;)Z

    .line 97
    invoke-static {}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadOneLib()Z

    move-result p0

    return p0
.end method

.method public static loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadDynamicHelper(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_OSMP"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 29
    invoke-static {p0, p1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLibInPath finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voLoadJNI.java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result p0

    :cond_0
    return p0
.end method

.method private static native nativeSetProductSuffix(Ljava/lang/String;)I
.end method
