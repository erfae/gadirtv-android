.class public Lcom/magoware/magoware/webtv/players/catchup/RuleView;
.super Landroid/view/View;
.source "RuleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context; = null

.field public static horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView; = null

.field public static marginToLeft:I = 0x0

.field public static maxValue:I = 0xf0

.field public static rulerWidth:F = 0.0f

.field public static unit:F = 10.0f

.field public static width:F


# instance fields
.field act1:Lcom/magoware/magoware/webtv/exoplayer_activities/ExoPlayerActivity2;

.field act2:Lcom/magoware/magoware/webtv/activities/PlayerActivity2;

.field private avenirLight:Landroid/graphics/Typeface;

.field d:Ljava/util/Date;

.field df:Ljava/text/DecimalFormat;

.field private format:Ljava/text/DecimalFormat;

.field isDraw:Z

.field private largeHeight:F

.field public layoutWidth:I

.field public listener:Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;

.field private mCurrentX:I

.field private mFontSize:F

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private metrics:Landroid/util/DisplayMetrics;

.field paint:Landroid/graphics/Paint;

.field scrollWidth:I

.field private smallHeight:F

.field private startX:F

.field private startY:F

.field private textGap:F

.field thisActivity:Landroid/app/Activity;

.field private yLenght:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/avenir-light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->avenirLight:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    .line 47
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    .line 48
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->smallHeight:F

    const/high16 v0, 0x41b00000    # 22.0f

    .line 49
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->largeHeight:F

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->metrics:Landroid/util/DisplayMetrics;

    .line 54
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    const v0, -0x3b9ac9ff

    .line 56
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mCurrentX:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->isDraw:Z

    .line 85
    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;-><init>(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->df:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->scrollWidth:I

    .line 62
    sput-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->thisActivity:Landroid/app/Activity;

    .line 64
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/avenir-light.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->avenirLight:Landroid/graphics/Typeface;

    const/high16 p2, 0x41200000    # 10.0f

    .line 47
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    .line 48
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->smallHeight:F

    const/high16 p2, 0x41b00000    # 22.0f

    .line 49
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->largeHeight:F

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->metrics:Landroid/util/DisplayMetrics;

    .line 54
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    const p2, -0x3b9ac9ff

    .line 56
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mCurrentX:I

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->isDraw:Z

    .line 85
    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;-><init>(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 216
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "0.0"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->df:Ljava/text/DecimalFormat;

    const/4 p2, 0x0

    .line 218
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->scrollWidth:I

    .line 109
    sput-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mCurrentX:I

    return p0
.end method

.method static synthetic access$002(Lcom/magoware/magoware/webtv/players/catchup/RuleView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mCurrentX:I

    return p1
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private calculateTextWidth(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 211
    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mFontSize:F

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public static getCurrerntTimeInFloat()F
    .locals 3

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public static getCurrerntTimeInFloat1()F
    .locals 3

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$setDefaultScaleValue$1(I)V
    .locals 2

    .line 245
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method static synthetic lambda$setScaleScrollByTime$2(I)V
    .locals 2

    .line 267
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method static synthetic lambda$setScroll$3(I)V
    .locals 2

    .line 271
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public static setScaleScroll(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleValue"
        }
    .end annotation

    .line 261
    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 262
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public static setScaleScrollByTime(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleValue"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    .line 266
    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float p0, p0, v0

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$vVUCYn-zM7IHScRbUHvWwAb6Z9A;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$vVUCYn-zM7IHScRbUHvWwAb6Z9A;-><init>(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setScroll(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$llG1LnmS_fUBaEu3gBLGfdLojfk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$llG1LnmS_fUBaEu3gBLGfdLojfk;-><init>(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public ScaleScrollByTime()V
    .locals 0

    return-void
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 3

    .line 295
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 296
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScaleValue()Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x42040000    # 33.0f

    .line 253
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 116
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x1b77400

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->d:Ljava/util/Date;

    .line 117
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->format:Ljava/text/DecimalFormat;

    .line 118
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->metrics:Landroid/util/DisplayMetrics;

    .line 119
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 120
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    .line 122
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mFontSize:F

    .line 126
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startY:F

    .line 127
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->yLenght:F

    .line 130
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const v2, 0x7f07004f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    .line 132
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    .line 133
    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    int-to-float v0, v0

    sget v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float v0, v0, v1

    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    sput v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->width:F

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    .line 136
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    .line 137
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->width:F

    .line 140
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->calculateTextWidth(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/util/Utils;->px2dip(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 142
    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    iget v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    sput v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->marginToLeft:I

    .line 143
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic lambda$setHorizontalScrollView$0$RuleView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onChangedListener(Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->listener:Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    const-string v1, "#ffcccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 165
    :goto_0
    sget v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    if-gt v2, v3, :cond_1

    .line 167
    rem-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_0

    .line 168
    sget-object v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->largeHeight:F

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->yLenght:F

    goto :goto_1

    .line 170
    :cond_0
    sget-object v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->smallHeight:F

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->yLenght:F

    :goto_1
    int-to-float v3, v2

    .line 172
    sget v4, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float v5, v3, v4

    iget v6, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    add-float v8, v5, v6

    iget v9, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startY:F

    mul-float v3, v3, v4

    add-float v10, v3, v6

    iget v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->yLenght:F

    add-float/2addr v3, v9

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v11, v3, v4

    iget-object v12, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->mFontSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    sget v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float v2, v2, v3

    iput v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    .line 183
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    const-string v2, "#2c2b30"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    :goto_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->avenirLight:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_3
    int-to-float v1, v0

    .line 188
    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    int-to-float v3, v2

    sget v4, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    div-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_5

    int-to-float v2, v2

    div-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->format:Ljava/text/DecimalFormat;

    add-int/lit8 v4, v0, -0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 194
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->format:Ljava/text/DecimalFormat;

    add-int/lit8 v4, v0, 0x0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    :goto_4
    sget-object v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->calculateTextWidth(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/util/Utils;->px2dip(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 196
    iget v4, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startY:F

    sget-object v6, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    iget v7, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->largeHeight:F

    .line 199
    invoke-static {v6, v7}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget-object v6, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v6, v7}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->paint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez v0, :cond_4

    .line 201
    iget v2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->startX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->textGap:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    sput v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->marginToLeft:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x7f07004f

    if-eqz p1, :cond_0

    .line 151
    sget p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    int-to-float p1, p1

    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float p1, p1, v2

    sget-object v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    goto :goto_0

    .line 155
    :cond_0
    sget p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    int-to-float p1, p1

    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float p1, p1, v2

    sget-object v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, v0

    sub-float/2addr p1, v1

    :goto_0
    float-to-int p1, p1

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public pxToDp(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 281
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public setDefaultScaleValue(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleValue"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 243
    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    mul-float p1, p1, v0

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$A1ESBLo3YDpycsMN7TD254rRDXA;

    invoke-direct {v1, p1}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$A1ESBLo3YDpycsMN7TD254rRDXA;-><init>(I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setHorizontalScrollView(Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalScrollView"
        }
    .end annotation

    .line 68
    sput-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    .line 69
    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$lCnx0boUFLj2TL6uT9IfS5CGkgQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$lCnx0boUFLj2TL6uT9IfS5CGkgQ;-><init>(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)V

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setMaxScaleValue(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScaleValue"
        }
    .end annotation

    return-void
.end method

.method public setMinScaleValue(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minScaleValue"
        }
    .end annotation

    return-void
.end method

.method public setScrollerChanaged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 221
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->scrollWidth:I

    .line 222
    sget p2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    float-to-int p2, p2

    mul-int/lit8 p3, p2, 0xa

    .line 225
    div-int p4, p1, p3

    .line 226
    rem-int/2addr p1, p3

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x40c00000    # 6.0f

    div-float/2addr p2, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 228
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->listener:Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;

    invoke-interface {p2, p4, p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;->onSlide(II)V

    return-void
.end method
