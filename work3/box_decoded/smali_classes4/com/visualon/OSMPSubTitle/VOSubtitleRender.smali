.class public Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.super Ljava/lang/Object;
.source "VOSubtitleRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;,
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;,
        Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;
    }
.end annotation


# static fields
.field private static final SCALE_FOR_FONT_C_SIZE:I = 0x4e20

.field private static final SCALE_FOR_FONT_EM_SIZE:I = 0x7530

.field private static final SCALE_FOR_FONT_PIXEL_SIZE:I = 0x2710

.field private static final SCALE_FOR_FONT_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VOSubtitleRender"

.field private static sApplicationContext:Landroid/content/Context;


# instance fields
.field private DBG:Z

.field private final WM_CLEAR_WIDGET:I

.field private fontSizeDefault:F

.field private fontTypeface:Landroid/graphics/Typeface;

.field private fontTypefaceLast:Landroid/graphics/Typeface;

.field private height:I

.field private heightOld:I

.field private llWindow1:Landroid/widget/RelativeLayout;

.field private mIsPreview:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

.field private mSubtitleInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

.field private m_enableDraw:Z

.field private m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

.field private metadata_Arrive:Z

.field private nameLast:Ljava/lang/String;

.field private rlMain:Landroid/view/ViewGroup;

.field private textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

.field private vwSurface:Landroid/view/View;

.field private width:I

.field private widthOld:I

.field private xyRate:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    .line 72
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    .line 73
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    .line 75
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    const v2, 0x3faa3d71    # 1.33f

    .line 76
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    .line 78
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 81
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    .line 82
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    .line 83
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    .line 84
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 85
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    .line 89
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    const/16 v2, 0x3e9

    .line 90
    iput v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->WM_CLEAR_WIDGET:I

    .line 134
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    .line 225
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypeface:Landroid/graphics/Typeface;

    .line 226
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    const-string v0, ""

    .line 227
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->nameLast:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    .line 400
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->DBG:Z

    .line 141
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VOSubtitleRender"

    const-string v2, " voSubTitleManager Construct"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    :cond_2
    return-void
.end method

.method private StretchByScale(Landroid/graphics/Point;D)Landroid/graphics/Point;
    .locals 5

    .line 907
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 908
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v3

    mul-double v1, v1, p2

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 909
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v1, p1

    mul-double v1, v1, p2

    double-to-int p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private static StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .line 892
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 893
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 894
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr p0, v2

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    .line 896
    iget p0, p1, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 897
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 899
    :cond_0
    iget p0, p1, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 900
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float v1, v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->doClearSubtitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/graphics/Point;D)Landroid/graphics/Point;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->StretchByScale(Landroid/graphics/Point;D)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->StretchToMax(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    return p1
.end method

.method static synthetic access$1600()Landroid/content/Context;
    .locals 1

    .line 61
    sget-object v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fromName(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    return p0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    return p0
.end method

.method static synthetic access$802(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    return p1
.end method

.method static synthetic access$900(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    return p0
.end method

.method static synthetic access$902(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    return p1
.end method

.method private checkPrevWindow()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkxyRate()Z
    .locals 6

    .line 505
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    const-string v1, "VOSubtitleRender"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 506
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 507
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 509
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 512
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " textViewOfRows.getWidth()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",textViewOfRows.getHeight()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 514
    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 513
    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 521
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 522
    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    if-eq v4, v3, :cond_4

    .line 523
    :cond_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " width_new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",width_old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";height_new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",height_old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    :cond_3
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    .line 528
    iput v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    .line 529
    iput v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->heightOld:I

    .line 530
    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->widthOld:I

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method private clearSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->doClearSubtitle()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private createAndShowChildViews()V
    .locals 6

    .line 699
    sget-object v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 713
    new-instance v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 714
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 715
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    sget-object v2, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    .line 718
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 719
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 724
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 725
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 726
    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 727
    iget-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 728
    :goto_1
    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 729
    iget-object v4, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    .line 730
    iget-object v5, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->startAnimation(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_5
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    const/4 v0, 0x0

    .line 737
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method private createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 539
    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    if-eqz v1, :cond_0

    .line 542
    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 544
    :goto_0
    iget-boolean v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    if-nez v2, :cond_1

    return-void

    .line 548
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->checkPrevWindow()V

    .line 550
    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_2

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    return-void

    .line 555
    :cond_2
    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    const-string v3, "VOSubtitleRender"

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 556
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "createImageView: reference vwSurface does not initialize."

    .line 557
    invoke-static {v3, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 562
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 563
    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 564
    iget v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    sub-int/2addr v2, v6

    const/4 v6, 0x2

    div-int/2addr v2, v6

    .line 565
    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    sub-int/2addr v5, v7

    div-int/2addr v5, v6

    const/4 v7, 0x0

    .line 568
    :goto_1
    iget-object v8, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1c

    .line 569
    iget-object v8, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 570
    iget-object v8, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    .line 571
    iget-object v9, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    if-eqz v9, :cond_1a

    .line 572
    iget-object v9, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->removeImageViews()V

    :cond_5
    const/4 v9, 0x0

    .line 575
    :goto_2
    iget-object v10, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_19

    .line 576
    iget-object v10, v8, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;

    .line 577
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    if-nez v11, :cond_6

    :goto_3
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v25, v5

    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v2, 0x0

    goto/16 :goto_e

    .line 579
    :cond_6
    iget-object v11, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v11}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_3

    .line 582
    :cond_7
    new-instance v11, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;

    sget-object v12, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v11, v0, v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;-><init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/content/Context;)V

    .line 583
    iget-object v12, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setTag(Ljava/lang/Object;)V

    .line 590
    iget-object v12, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    if-eqz v12, :cond_b

    .line 591
    iget-object v12, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v12, v12, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v12}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result v12

    .line 592
    iget-object v14, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v14, v14, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v14, v14, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v14}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealX(I)I

    move-result v14

    .line 593
    iget-object v15, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    if-nez v15, :cond_8

    .line 594
    iget-object v14, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v2

    .line 597
    :cond_8
    iget-object v15, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v15}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result v15

    .line 598
    iget-object v6, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v6}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->toRealY(I)I

    move-result v6

    .line 599
    iget-object v13, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-nez v13, :cond_9

    .line 600
    iget-object v6, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 602
    :cond_9
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 603
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rect left is "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", top is "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right is "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    iget-object v2, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom is "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". \nReal rect left is "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom is"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_4

    :cond_b
    move-object/from16 v16, v1

    move/from16 v17, v2

    const/4 v6, -0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_4
    const/16 v1, 0x10

    const/4 v2, 0x1

    if-gtz v12, :cond_d

    if-lez v14, :cond_c

    goto :goto_5

    .line 620
    :cond_c
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v4, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 621
    invoke-virtual {v11, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 622
    invoke-virtual {v11, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 623
    iget-object v1, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v13, -0x1

    .line 613
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 614
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 615
    iput v15, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 616
    iget-object v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    invoke-virtual {v11, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setVerticalGravity(I)V

    .line 618
    invoke-virtual {v11, v2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setHorizontalGravity(I)V

    .line 626
    :goto_6
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    if-eqz v1, :cond_e

    .line 627
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    invoke-virtual {v11, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBackgroundColor(I)V

    .line 628
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    if-lez v1, :cond_e

    .line 629
    iget-object v1, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    const/4 v2, 0x2

    invoke-virtual {v11, v2, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBorder(II)V

    goto :goto_7

    :cond_e
    const/4 v2, 0x2

    .line 635
    :goto_7
    iget-boolean v4, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-eqz v4, :cond_14

    .line 636
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 637
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 639
    iget-object v1, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 640
    iget-object v2, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    move/from16 v25, v5

    .line 641
    iget-object v5, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    array-length v10, v10

    move-object/from16 v26, v8

    const/4 v8, 0x0

    invoke-static {v5, v8, v10, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 644
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int v8, v8, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v10, v10, v2

    if-le v8, v10, :cond_f

    int-to-float v8, v2

    .line 645
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    goto :goto_8

    :cond_f
    int-to-float v8, v1

    .line 648
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    :goto_8
    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 651
    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 652
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v18, v5

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 654
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v8

    const-string v10, ","

    if-eqz v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1subtitle decodeByteArray "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 655
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v18, v7

    const/4 v13, 0x0

    new-array v7, v13, [Ljava/lang/Object;

    .line 654
    invoke-static {v3, v8, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    move/from16 v18, v7

    .line 656
    :goto_9
    iget-object v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_11

    iget v7, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    if-eqz v7, :cond_11

    int-to-float v7, v2

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 657
    invoke-virtual {v0, v7}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    .line 659
    :cond_11
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2subtitle decodeByteArray "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    .line 661
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    .line 660
    invoke-static {v3, v1, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3subtitle decodeByteArray "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    .line 662
    invoke-static {v3, v1, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    :goto_a
    move-object v1, v4

    goto :goto_c

    :cond_13
    move/from16 v18, v7

    const/4 v2, 0x0

    .line 666
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_15

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, " subtitle decodeByteArray return null"

    invoke-static {v3, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_14
    move/from16 v25, v5

    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v2, 0x0

    :cond_15
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_18

    .line 672
    new-instance v4, Landroid/widget/ImageView;

    sget-object v5, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 675
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 677
    invoke-virtual {v11, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->addView(Landroid/view/View;)V

    .line 678
    iget-boolean v1, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-eqz v1, :cond_16

    const/high16 v1, -0x1000000

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v11, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 679
    invoke-virtual {v11, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$LinearLayoutShowBorder;->setGravity(I)V

    if-gtz v12, :cond_17

    if-lez v14, :cond_18

    .line 682
    :cond_17
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int/2addr v14, v12

    .line 683
    iput v14, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v15

    .line 684
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 685
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v7, v18

    move/from16 v5, v25

    move-object/from16 v8, v26

    const/4 v4, 0x0

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_19
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v25, v5

    move/from16 v18, v7

    const/4 v2, 0x0

    .line 690
    iget-object v1, v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v1, :cond_1b

    .line 691
    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->bringToFront()V

    goto :goto_f

    :cond_1a
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v25, v5

    move/from16 v18, v7

    const/4 v2, 0x0

    :cond_1b
    :goto_f
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v5, v25

    const/4 v4, 0x0

    const/4 v6, 0x2

    goto/16 :goto_1

    .line 695
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    return-void
.end method

.method private doClearSubtitle()V
    .locals 4

    .line 108
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VOSubtitleRender"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "+doClearSubtitle"

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 113
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "llWindow1.setVisibility(View.INVISIBLE)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private fromID(I)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 217
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Font Style is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ui set to default."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubtitleRender"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "times new roman"

    .line 188
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 210
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    return-object p1

    .line 207
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p1

    :pswitch_3
    const-string p1, "sans-serif-smallcaps"

    .line 203
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string p1, "cursive"

    .line 200
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string p1, "casual"

    .line 197
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string p1, "arial"

    .line 194
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "helvetica"

    .line 191
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 214
    :pswitch_8
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    return-object p1

    :pswitch_9
    const-string p1, "courier"

    .line 186
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 183
    :pswitch_a
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p1

    .line 222
    :cond_0
    :goto_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private fromName(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->nameLast:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    return-object v0

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->nameLast:Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingFontFamily(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_3

    .line 168
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->getCustomTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    if-nez p1, :cond_2

    .line 170
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    return-object p1

    .line 176
    :cond_3
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fromID(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypefaceLast:Landroid/graphics/Typeface;

    return-object p1
.end method

.method private getCustomTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6

    const-string v0, "VOSubtitleRender"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 234
    :try_start_0
    sget-object v5, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 237
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OK> getCustomTypeface from Assets"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail> getCustomTypeface InputStreamis==null setFontName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 243
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "CloseCaption no font in Assets"

    .line 244
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v4
.end method

.method private getFontSize(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;I)F
    .locals 6

    .line 805
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 807
    iget-object v1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return v0

    .line 811
    :cond_0
    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    float-to-int p1, p1

    const/16 v1, 0x3e8

    const/high16 v3, 0x42c80000    # 100.0f

    const/16 v4, 0x2710

    const v5, 0x3f666666    # 0.9f

    if-le p1, v1, :cond_1

    if-ge p1, v4, :cond_1

    add-int/lit16 v0, p1, -0x3e8

    int-to-float v0, v0

    mul-float v0, v0, v5

    div-float/2addr v0, v3

    :cond_1
    if-le p1, v4, :cond_6

    .line 817
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_2

    .line 819
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    goto :goto_0

    .line 821
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 822
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    .line 824
    :goto_0
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    const/high16 v1, 0x41c00000    # 24.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 825
    iput v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    :cond_3
    const/16 v0, 0x7530

    if-le p1, v0, :cond_4

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 830
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontSizeDefault:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    if-lez p2, :cond_7

    goto :goto_1

    :cond_4
    const/16 v0, 0x4e20

    if-le p1, v0, :cond_5

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 839
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    div-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    if-lez p2, :cond_7

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    move v5, p1

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v4

    if-lez p2, :cond_7

    :goto_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v5, p1, p2

    goto :goto_2

    :cond_6
    move v5, v0

    :cond_7
    :goto_2
    return v5
.end method

.method private invalidateView()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_1

    .line 473
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->invalidate()V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeImageViews()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v0}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private requestDisplay()V
    .locals 4

    .line 455
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->reset()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_handlerEvent:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private reverseString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static scaleRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 7

    .line 914
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 915
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 916
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 917
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 918
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v4, p0

    mul-float v5, v4, p1

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    if-lez p0, :cond_0

    div-float p1, v6, v4

    :cond_0
    mul-float v4, v4, p1

    float-to-int p0, v4

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 925
    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 926
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 927
    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 928
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 929
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 931
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-gez v1, :cond_2

    .line 932
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 933
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 935
    :cond_2
    div-int/lit8 p0, p1, 0x2

    sub-int/2addr v3, p0

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 936
    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 937
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v2, :cond_3

    .line 938
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 939
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 941
    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-gez p0, :cond_4

    .line 942
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 943
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-object v0
.end method

.method private setSubtitleObjectNull()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    .line 149
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    return-void
.end method

.method private startAnimation(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;Landroid/widget/RelativeLayout;)V
    .locals 5

    .line 758
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    if-lez v0, :cond_5

    .line 759
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 761
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 762
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 763
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 765
    :cond_0
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 771
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 773
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 775
    :goto_0
    iget-object v4, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    if-ne v4, v1, :cond_2

    .line 777
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    int-to-float v0, v0

    .line 779
    :cond_2
    iget-object v1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    if-ne v1, v2, :cond_3

    .line 781
    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 783
    :goto_1
    iget-object v2, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget v2, v2, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 785
    iget v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    int-to-float v1, v1

    .line 787
    :cond_4
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v0, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 788
    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rectDisplayEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;

    iget p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 789
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-void
.end method

.method private toRealX(I)I
    .locals 1

    .line 797
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->width:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private toRealY(I)I
    .locals 1

    .line 801
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->height:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public checkLayoutChanged()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 491
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 492
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_2

    .line 494
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->checkxyRate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubtitleRender"

    const-string v2, " checkxyRate "

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :cond_3
    iget v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->xyRate:F

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    :cond_4
    return-void
.end method

.method public deposit(IIIII[B)I
    .locals 10

    .line 381
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received deposit id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", picType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", w:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "VOSubtitleRender"

    invoke-static {v4, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v2, p1

    move v8, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 385
    :goto_0
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;

    move-object v3, v0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;-><init>(IIIII[B)V

    move-object v3, p0

    .line 386
    iget-object v4, v3, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mImageStores:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public handleRawData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 444
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->requestDisplay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 450
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public previewSubtitle(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4

    .line 254
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "VOSubtitleRender"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " var previewSubtitle = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 256
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->doClearSubtitle()V

    .line 260
    instance-of v0, p2, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;

    if-eqz v0, :cond_1

    .line 261
    check-cast p2, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->getView()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 263
    :cond_1
    check-cast p2, Landroid/view/View;

    .line 266
    :goto_0
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    .line 268
    iget-object p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->parseObj2SubtitleInfo(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p1

    .line 269
    iget-object p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 274
    iput-boolean p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 275
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setXYRate(F)V

    .line 276
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    .line 277
    iget-object p2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz p2, :cond_2

    .line 278
    invoke-virtual {p2, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->enableDraw(Z)V

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->checkPrevWindow()V

    .line 282
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->llWindow1:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_3

    .line 283
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createAndShowChildViews()V

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 289
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, " previewSubtitle"

    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v2
.end method

.method public render(Ljava/lang/String;)I
    .locals 4

    .line 402
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->DBG:Z

    const-string v1, "var inputObject = "

    const-string v2, "VOSubtitleRender"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->parseObj2SubtitleInfo(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 411
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isForID3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->isForID3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_2
    iget-object v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 413
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Received emptySubtitle"

    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_3
    iget-boolean p1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->isForID3:Z

    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    xor-int/2addr p1, v0

    if-nez p1, :cond_5

    .line 416
    iput-boolean v3, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    const-string p1, "render"

    .line 417
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_4
    iget-boolean v0, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->isForID3:Z

    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->metadata_Arrive:Z

    .line 422
    iput-boolean v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    .line 423
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->handleRawData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)Z

    :cond_5
    :goto_1
    return v3
.end method

.method public reset()V
    .locals 2

    .line 2078
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, ""

    .line 2080
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSubtitleTrim(Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->textViewOfRows:Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;

    if-eqz v0, :cond_0

    .line 2082
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$TextOutLinesView;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 2084
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->m_enableDraw:Z

    .line 2085
    iput-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    .line 2086
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2087
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    const-string v0, "reset"

    .line 2088
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMainLayout(Landroid/view/ViewGroup;)V
    .locals 3

    .line 312
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubtitleRender"

    const-string v2, " setMainLayout ,shoud call"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "setMainLayout"

    .line 313
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->rlMain:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSubtitleTrim(Ljava/lang/String;)V
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->setSubtitleTrim(Ljava/lang/String;)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/View;)V
    .locals 4

    .line 323
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "VOSubtitleRender"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enter setSurfaceView as :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    if-ne p1, v0, :cond_2

    return-void

    .line 330
    :cond_2
    iput-boolean v2, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mIsPreview:Z

    const-string v0, "setSurfaceView"

    .line 331
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 336
    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 337
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 339
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, " enter setSurfaceView setMainLayout "

    .line 340
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_3
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 344
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 345
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->requestDisplay()V

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 353
    :cond_5
    :goto_0
    sget-object p1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    if-nez p1, :cond_7

    .line 354
    iget-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->vwSurface:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->sApplicationContext:Landroid/content/Context;

    goto :goto_1

    .line 359
    :cond_6
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setMainLayout(Landroid/view/ViewGroup;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2073
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->fontTypeface:Landroid/graphics/Typeface;

    .line 2074
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    return-void
.end method

.method public setXYRate(F)V
    .locals 3

    .line 370
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "VOSubtitleRender"

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, " setXYRate+ "

    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->invalidateView()V

    .line 373
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, " setXYRate- "

    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public withdraw(I)I
    .locals 4

    .line 395
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received withdraw id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VOSubtitleRender"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->mSubtitleJsonParser:Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mImageStores:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method
