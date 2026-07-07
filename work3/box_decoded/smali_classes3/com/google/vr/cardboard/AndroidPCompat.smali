.class public Lcom/google/vr/cardboard/AndroidPCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;
    }
.end annotation


# static fields
.field private static final P_SDK_LEVEL:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "AndroidPCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastP()Z
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public doesWindowExtendIntoCutoutArea(Landroid/view/Window;)Z
    .locals 4

    .line 18
    invoke-static {}, Lcom/google/vr/cardboard/AndroidPCompat;->isAtLeastP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 21
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "layoutInDisplayCutoutMode"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 23
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to determine if window extends into cutout area: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidPCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDisplayCutout(Landroid/view/Display;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;
    .locals 8

    .line 3
    invoke-static {}, Lcom/google/vr/cardboard/AndroidPCompat;->isAtLeastP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    const-class v4, Landroid/view/Display;

    const-string v5, "getDisplayInfo"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    .line 9
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 10
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "displayCutout"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->create(Ljava/lang/Object;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to fetch DisplayCutout from Display: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidPCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDisplayRect(Landroid/view/Display;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 5

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/AndroidPCompat;->getDisplayCutout(Landroid/view/Display;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;

    move-result-object p1

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v2

    iget v3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 36
    invoke-virtual {p1}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
