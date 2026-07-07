.class public Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityDaydreamCompatibility(Landroid/app/Activity;)Lcom/google/vr/ndk/base/DaydreamCompatibility;
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/google/vr/ndk/base/DaydreamCompatibility;

    move-result-object p1

    return-object p1
.end method

.method public getComponentDaydreamCompatibility(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamCompatibility;
    .locals 1

    .line 7
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->getComponentDaydreamCompatibility(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/google/vr/ndk/base/DaydreamCompatibility;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Lcom/google/vr/ndk/base/DaydreamCompatibility;

    invoke-direct {p1}, Lcom/google/vr/ndk/base/DaydreamCompatibility;-><init>()V

    return-object p1
.end method

.method public isDaydreamActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamComponent(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isDaydreamComponent(Landroid/content/Context;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamCompatibility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->supportsDaydream()Z

    move-result p1

    return p1
.end method

.method public isDaydreamPhone(Landroid/content/Context;)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isDaydreamRequiredActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamRequiredComponent(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isDaydreamRequiredComponent(Landroid/content/Context;)Z
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamCompatibility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/DaydreamCompatibility;->requiresDaydream()Z

    move-result p1

    return p1
.end method

.method public isDaydreamViewer(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamViewer(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result p1

    return p1
.end method
