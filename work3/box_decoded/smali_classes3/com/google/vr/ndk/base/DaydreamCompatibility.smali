.class public Lcom/google/vr/ndk/base/DaydreamCompatibility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DAYDREAM_NOT_SUPPORTED:I = 0x1

.field public static final DAYDREAM_OPTIONAL:I = 0x2

.field public static final DAYDREAM_REQUIRED:I = 0x3

.field public static final SUPPORTS_CARDBOARD:I = 0x2

.field public static final SUPPORTS_CONTROLLERLESS_DAYDREAM:I = 0x4

.field public static final SUPPORTS_DAYDREAM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DaydreamCompatibility"


# instance fields
.field private final supportedHeadsets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportedHeadsets:I

    return-void
.end method

.method public static fromDeprecated(I)Lcom/google/vr/ndk/base/DaydreamCompatibility;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid deprecated daydream compat: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DaydreamCompatibility"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_1
    new-instance p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;-><init>(I)V

    return-object p0
.end method

.method private supportsCardboard()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportedHeadsets:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getSupportedHeadsets()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportedHeadsets:I

    return v0
.end method

.method public requiresDaydream()Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportsDaydream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportsCardboard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsControllerlessDaydream()Z
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportedHeadsets:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDaydream()Z
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportedHeadsets:I

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toDeprecated()I
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->requiresDaydream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportsDaydream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
