.class public Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/AndroidPCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutCompat"
.end annotation


# static fields
.field private static final DISPLAY_CUTOUT_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final displayCutout:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->tryGetDisplayCutoutClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->DISPLAY_CUTOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->displayCutout:Ljava/lang/Object;

    return-void
.end method

.method static create(Ljava/lang/Object;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->DISPLAY_CUTOUT_CLASS:Ljava/lang/Class;

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static tryGetDisplayCutoutClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/google/vr/cardboard/AndroidPCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "android.view.DisplayCutout"

    .line 18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "AndroidPCompat"

    const-string v1, "Failed to obtain DisplayCutout API."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryGetInt(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v1, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->DISPLAY_CUTOUT_CLASS:Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->displayCutout:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public getSafeInsetBottom()I
    .locals 1

    const-string v0, "getSafeInsetBottom"

    .line 10
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->tryGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSafeInsetLeft()I
    .locals 1

    const-string v0, "getSafeInsetLeft"

    .line 11
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->tryGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSafeInsetRight()I
    .locals 1

    const-string v0, "getSafeInsetRight"

    .line 12
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->tryGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSafeInsetTop()I
    .locals 1

    const-string v0, "getSafeInsetTop"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;->tryGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
