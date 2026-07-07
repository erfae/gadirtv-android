.class public Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;
.super Landroid/view/View;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzc;,
        Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;,
        Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;,
        Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;
    }
.end annotation


# instance fields
.field private zzfl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zznm:Landroid/graphics/Paint;

.field public zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

.field private zzwr:Z

.field private zzws:Ljava/lang/Integer;

.field public zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

.field private final zzwu:F

.field private final zzwv:F

.field private final zzww:F

.field private final zzwx:F

.field private final zzwy:F

.field private final zzwz:I

.field private final zzxa:I

.field private final zzxb:I

.field private final zzxc:I

.field private zzxd:[I

.field private zzxe:Landroid/graphics/Point;

.field private zzxf:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzfl:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzc;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/google/android/gms/cast/framework/media/widget/zza;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwu:F

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwv:F

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_progress_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzww:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_thumb_size:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwx:F

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_ad_break_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwy:F

    .line 16
    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    invoke-direct {p2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    .line 17
    iput v0, p2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    .line 18
    sget-object p2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    sget v0, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    sget v1, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    .line 19
    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarProgressAndThumbColor:I

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 22
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarSecondaryProgressColor:I

    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 24
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarUnseekableProgressColor:I

    .line 25
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 26
    sget v3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdBreakMarkerColor:I

    .line 27
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwz:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxa:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxb:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxc:I

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final zza(Landroid/graphics/Canvas;IIII)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float p2, p2, p5

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p4, p4

    mul-float v1, p2, p4

    int-to-float p2, p3

    mul-float p2, p2, p5

    .line 120
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget p3, p3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float v3, p2, p4

    .line 121
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzww:F

    neg-float v2, v4

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;I)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzy(I)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzeh()V

    return-void
.end method

.method private final zzeh()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwr:Z

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzd(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    :cond_0
    return-void
.end method

.method private final zzei()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwr:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzc(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    :cond_0
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzei()V

    return-void
.end method

.method private final zzy(I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v1, v1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    .line 156
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzws:Ljava/lang/Integer;

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzb(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;IZ)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxf:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 161
    new-instance p1, Lcom/google/android/gms/cast/framework/media/widget/zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzb;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxf:Ljava/lang/Runnable;

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxf:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->postInvalidate()V

    return-void
.end method

.method private final zzz(I)I
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 175
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget p1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    int-to-double v3, p1

    mul-double v1, v1, v3

    double-to-int p1, v1

    return p1
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzws:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v9

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 74
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget-boolean v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    if-lez v2, :cond_0

    const/4 v5, 0x0

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v6, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxb:I

    move-object v3, p0

    move-object v4, p1

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    if-le v9, v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v5, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwz:I

    move-object v3, p0

    move-object v4, p1

    move v6, v9

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    if-le v2, v9, :cond_2

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v6, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxa:I

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v3, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    if-le v2, v3, :cond_6

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v5, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v6, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxb:I

    move-object v3, p0

    move-object v4, p1

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v5, 0x0

    .line 86
    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxb:I

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    :cond_4
    if-le v9, v2, :cond_5

    .line 88
    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwz:I

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v9

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    .line 89
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    if-le v2, v9, :cond_6

    .line 90
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v6, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    iget v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxb:I

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zza(Landroid/graphics/Canvas;IIII)V

    .line 91
    :cond_6
    :goto_0
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzfl:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 95
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxc:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 98
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzfl:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;

    if-eqz v4, :cond_8

    .line 100
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;->progress:I

    if-ltz v4, :cond_8

    .line 102
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v5, v5, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    mul-float v4, v4, v5

    .line 103
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v5, v5, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 104
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwy:F

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 107
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    if-nez v1, :cond_a

    goto :goto_3

    .line 109
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwz:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget v3, v3, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    int-to-double v3, v3

    div-double/2addr v5, v3

    int-to-double v3, v1

    mul-double v5, v5, v3

    double-to-int v1, v5

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    int-to-float v1, v1

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 114
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwx:F

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zznm:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 116
    :cond_b
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3

    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwu:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 61
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwv:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 63
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->resolveSizeAndState(III)I

    move-result p1

    .line 64
    invoke-static {v1, p2, v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->resolveSizeAndState(III)I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxd:[I

    const/4 v2, 0x2

    if-nez v0, :cond_2

    new-array v0, v2, [I

    .line 129
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxd:[I

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxd:[I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getLocationOnScreen([I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxd:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxd:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 134
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v6, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    return v1

    .line 145
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwr:Z

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzws:Ljava/lang/Integer;

    .line 147
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, p0, v0, v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzb(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;IZ)V

    .line 149
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzc(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->postInvalidate()V

    return v6

    .line 139
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzz(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzy(I)V

    return v6

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzz(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzy(I)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzei()V

    return v6

    .line 136
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzeh()V

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzxe:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzz(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzy(I)V

    return v6

    :cond_8
    :goto_0
    return v1
.end method

.method public final setAdBreaks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzb;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzfl:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzfl:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->postInvalidate()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;)V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwr:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;-><init>()V

    .line 47
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    .line 48
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    .line 49
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    .line 50
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    .line 51
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    iput v1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    .line 52
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    iput-boolean p1, v0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwq:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzws:Ljava/lang/Integer;

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->zzwt:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zza;->zzb(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;IZ)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->postInvalidate()V

    return-void
.end method
