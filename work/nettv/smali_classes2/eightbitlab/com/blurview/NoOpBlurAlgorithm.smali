.class Leightbitlab/com/blurview/NoOpBlurAlgorithm;
.super Ljava/lang/Object;
.source "NoOpBlurAlgorithm.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
