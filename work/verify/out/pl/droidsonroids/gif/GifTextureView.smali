.class public Lpl/droidsonroids/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "GifTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;,
        Lpl/droidsonroids/gif/GifTextureView$RenderThread;
    }
.end annotation


# static fields
.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mInputSource:Lpl/droidsonroids/gif/InputSource;

.field private mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSpeedFactor:F

.field private final mTransform:Landroid/graphics/Matrix;

.field private viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lpl/droidsonroids/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lpl/droidsonroids/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 8
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p2, p1, p1}, Lpl/droidsonroids/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 13
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p2, p3, p1}, Lpl/droidsonroids/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 18
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    .line 20
    invoke-direct {p0, p2, p3, p4}, Lpl/droidsonroids/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/InputSource;
    .registers 1

    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public static synthetic access$100(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
    .registers 1

    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    return-object p0
.end method

.method public static synthetic access$200(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static synthetic access$400(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->updateTextureViewSize(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public static synthetic access$500(Lpl/droidsonroids/gif/GifTextureView;)F
    .registers 1

    iget p0, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    return p0
.end method

.method private static findSource(Landroid/content/res/TypedArray;)Lpl/droidsonroids/gif/InputSource;
    .registers 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    sget v1, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_gifSource:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_f
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_48

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 6
    new-instance v1, Lpl/droidsonroids/gif/InputSource$ResourcesSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v1

    :cond_31
    const-string v2, "string"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_48

    .line 8
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected string, drawable, mipmap or raw resource type. \'"

    const-string v2, "\' is not supported"

    .line 9
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_48
    :goto_48
    new-instance v1, Lpl/droidsonroids/gif/InputSource$AssetSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    const/4 v1, -0x1

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "scaleType"

    .line 1
    invoke-interface {p1, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 2
    sget-object v2, Lpl/droidsonroids/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 3
    aget-object v1, v2, v1

    iput-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->findSource(Landroid/content/res/TypedArray;)Lpl/droidsonroids/gif/InputSource;

    move-result-object v2

    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    .line 6
    sget v2, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_isOpaque:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v0, p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    goto :goto_45

    .line 9
    :cond_3b
    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 10
    new-instance p1, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {p1}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    .line 11
    :goto_45
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_59

    .line 12
    new-instance p1, Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    invoke-direct {p1, p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    .line 13
    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    if-eqz p2, :cond_59

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_59
    return-void
.end method

.method private setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private updateTextureViewSize(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .registers 12

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 5
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 6
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    sget-object v7, Lpl/droidsonroids/gif/GifTextureView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_a4

    goto :goto_9f

    .line 9
    :pswitch_42
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_9f

    :pswitch_4b
    return-void

    .line 11
    :pswitch_4c
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 12
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_9f

    .line 13
    :pswitch_55
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 14
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_9f

    .line 15
    :pswitch_5e
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_9f

    .line 17
    :pswitch_67
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_7a

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_7a

    goto :goto_81

    :cond_7a
    div-float p1, v8, v3

    div-float/2addr v8, v4

    .line 18
    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :goto_81
    mul-float v3, v3, v8

    mul-float v8, v8, v4

    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 19
    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_9f

    .line 20
    :pswitch_8b
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v8, p1

    mul-float v3, v3, v8

    mul-float v8, v8, v4

    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 21
    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_9f

    :pswitch_9a
    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 22
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 23
    :goto_9f
    invoke-super {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_8b
        :pswitch_67
        :pswitch_5e
        :pswitch_55
        :pswitch_4c
        :pswitch_4b
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$600(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$600(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    sget v1, Lpl/droidsonroids/gif/GifIOException;->$r8$clinit:I

    .line 4
    sget-object v1, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    iget v1, v1, Lpl/droidsonroids/gif/GifError;->errorCode:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    goto :goto_29

    .line 5
    :cond_23
    new-instance v1, Lpl/droidsonroids/gif/GifIOException;

    invoke-direct {v1, v0, v2}, Lpl/droidsonroids/gif/GifIOException;-><init>(ILjava/lang/String;)V

    move-object v2, v1

    :goto_29
    return-object v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3

    if-nez p1, :cond_7

    .line 1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    :cond_7
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->dispose(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v0, :cond_8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_8
    check-cast p1, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    iget-object p1, p1, Lpl/droidsonroids/gif/GifViewSavedState;->mStates:[[J

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, v0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mSavedState:[J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v1

    iput-object v1, v0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mSavedState:[J

    .line 2
    new-instance v0, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget-boolean v2, v2, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mSavedState:[J

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v0
.end method

.method public setFreezesAnimation(Z)V
    .registers 3

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iput-boolean p1, v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 2

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public declared-synchronized setInputSource(Lpl/droidsonroids/gif/InputSource;)V
    .registers 3
    .param p1    # Lpl/droidsonroids/gif/InputSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->setInputSource(Lpl/droidsonroids/gif/InputSource;Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 2
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInputSource(Lpl/droidsonroids/gif/InputSource;Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    .registers 4
    .param p1    # Lpl/droidsonroids/gif/InputSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    invoke-virtual {v0, p0, p2}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->dispose(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    .line 4
    :try_start_6
    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_c
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    goto :goto_10

    :catch_c
    move-exception p2

    .line 5
    :try_start_d
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_10
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    .line 7
    new-instance p2, Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    invoke-direct {p2, p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object p2, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    if-eqz p1, :cond_1e

    .line 8
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_20

    .line 9
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOpaque(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_e

    .line 2
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 3
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setInputSource(Lpl/droidsonroids/gif/InputSource;)V

    :cond_e
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 2
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    invoke-static {p1}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->updateTextureViewSize(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public setSpeed(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F

    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->setSpeedFactor(F)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTexture is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTextureListener is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->mRenderThread:Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    # getter for: Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;
    invoke-static {p1}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->updateTextureViewSize(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method
