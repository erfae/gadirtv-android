.class public Lcom/google/vr/cardboard/DisplayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BORDER_SIZE_METERS:F = 0.003f

.field public static final EXTERNAL_DISPLAY_RESOURCE_NAME:Ljava/lang/String; = "display_manager_hdmi_display_name"

.field private static final METERS_PER_INCH:F = 0.0254f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBorderSizeMeters(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->hasBottomBezelHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->getBottomBezelHeight()F

    move-result p0

    return p0

    :cond_0
    const p0, 0x3b449ba6    # 0.003f

    return p0
.end method

.method public static getCutoutMarginLandscapePixels(Landroid/content/Context;Landroid/view/Display;Lcom/google/vr/cardboard/AndroidPCompat;)I
    .locals 0

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/vr/cardboard/AndroidPCompat;->getDisplayCutout(Landroid/view/Display;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetTop()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    return p0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetRight()I

    move-result p1

    goto :goto_0
.end method

.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 3

    .line 4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    :goto_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p0, v1, :cond_1

    .line 9
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    iput p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 13
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 14
    iput p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return-object v0
.end method

.method public static getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->hasXPpi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->getXPpi()F

    move-result v0

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->hasYPpi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->getYPpi()F

    move-result p1

    iput p1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    :cond_1
    return-object p0
.end method

.method public static getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "display_manager_hdmi_display_name"

    const-string v1, "string"

    const-string v2, "android"

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMetersPerPixelFromDotsPerInch(F)F
    .locals 1

    const v0, 0x3cd013a9    # 0.0254f

    div-float/2addr v0, p0

    return v0
.end method

.method public static hasExternalDisplay(Landroid/content/Context;)Z
    .locals 5

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "display"

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 46
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 47
    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isSameDisplay(Landroid/view/Display;Landroid/view/Display;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 57
    invoke-virtual {p0}, Landroid/view/Display;->isValid()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 58
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method
