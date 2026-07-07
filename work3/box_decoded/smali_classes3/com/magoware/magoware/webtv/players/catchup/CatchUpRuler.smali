.class public Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;
.super Landroid/widget/RelativeLayout;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;,
        Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;,
        Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;
    }
.end annotation


# static fields
.field private static final ARROW:Ljava/lang/String; = "arrow"

.field public static CatchUpStartTime:J = 0x0L

.field private static final DAYS:Ljava/lang/String; = "days"

.field private static final TAG:Ljava/lang/String; = "CATCH_UP_RULER"

.field public static logCatchupChangeStartTime:J


# instance fields
.field private avenirHeavy:Landroid/graphics/Typeface;

.field private avenirLight:Landroid/graphics/Typeface;

.field private avenirMedium:Landroid/graphics/Typeface;

.field private avenirRoman:Landroid/graphics/Typeface;

.field private bus:Lde/greenrobot/event/EventBus;

.field public catchupPressed:Z

.field public changeMethod:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field clicked:Z

.field private completeCatchUpRuler:Landroid/view/View;

.field public day1:Landroid/widget/Button;

.field public day2:Landroid/widget/Button;

.field public day3:Landroid/widget/Button;

.field public day4:Landroid/widget/Button;

.field public day5:Landroid/widget/Button;

.field public day6:Landroid/widget/Button;

.field public day7:Landroid/widget/Button;

.field private dayNumber:I

.field protected daysLayout:Landroid/widget/LinearLayout;

.field dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

.field private dialogDismissListener:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;

.field difference:J

.field durationTimer:Ljava/util/Timer;

.field endPx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field epgTotal:I

.field firsTimeRunning:I

.field public fromEPG:Z

.field public goToLive:Landroid/widget/Button;

.field public handler:Landroid/os/Handler;

.field public helperVar:I

.field private horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

.field hours:I

.field hours1:I

.field hoursNum:I

.field private isPaused:Z

.field k:I

.field public kTimer:I

.field public left1:Landroid/widget/Button;

.field public left2:Landroid/widget/Button;

.field leftMostButton:Z

.field linearLayout:Landroid/widget/RelativeLayout;

.field public listOfSelectedDayButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field minutes:I

.field minutes1:I

.field myContext:Landroid/content/Context;

.field private myDay:Landroid/widget/Button;

.field myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public myPlayer:Ljava/lang/String;

.field public pauseAndPlay:Landroid/widget/Button;

.field private pausedDayButtons:[Landroid/widget/Button;

.field private playingChannel:I

.field programButtonWidth:F

.field private requestFromScrollTimer:Ljava/util/Timer;

.field public right1:Landroid/widget/Button;

.field public right2:Landroid/widget/Button;

.field rl:Landroid/widget/RelativeLayout;

.field public ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

.field public shouldUpdate:I

.field startPx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field startTime:J

.field public startX:F

.field stopTimer:Z

.field private thisActivity:Landroid/app/Activity;

.field public today:Landroid/widget/Button;

.field public tv:Landroid/widget/TextView;

.field v:Landroid/view/View;

.field public var:Z

.field public var1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/avenir-light.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirLight:Landroid/graphics/Typeface;

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Medium.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirMedium:Landroid/graphics/Typeface;

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Heavy.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirHeavy:Landroid/graphics/Typeface;

    .line 78
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Roman.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirRoman:Landroid/graphics/Typeface;

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->firsTimeRunning:I

    .line 90
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->stopTimer:Z

    .line 91
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myList:Ljava/util/ArrayList;

    .line 94
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->clicked:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->durationTimer:Ljava/util/Timer;

    .line 116
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    .line 125
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    .line 127
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->bus:Lde/greenrobot/event/EventBus;

    .line 130
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var:Z

    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var1:Z

    .line 135
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    .line 136
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFromScrollTimer:Ljava/util/Timer;

    .line 145
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myContext:Landroid/content/Context;

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    const v0, 0x7f07004f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz p2, :cond_0

    .line 150
    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    .line 151
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    .line 157
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    .line 160
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 161
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->init()V

    .line 164
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setClickListeners()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->checkIfObjectSurpassesCurrentDayProgrammes(Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)Landroid/app/Activity;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    return p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    return p0
.end method

.method private checkIfObjectSurpassesCurrentDayProgrammes(Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousCatchUpObject",
            "catchUpObject"
        }
    .end annotation

    .line 1121
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programstart:Ljava/lang/String;

    const-string v0, "\\s+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1122
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programstart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1123
    aget-object p2, p2, v0

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1124
    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dayNumber",
            "clickedDay",
            "previousDay"
        }
    .end annotation

    .line 1130
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->cancelPause()V

    .line 1132
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    .line 1135
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pausedDayButtons:[Landroid/widget/Button;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 1136
    aput-object p3, v0, v1

    const-string v0, "days"

    .line 1138
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    .line 1139
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    .line 1140
    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Landroid/widget/Button;ILandroid/widget/Button;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1148
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1150
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    .line 1151
    iget p3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float p2, p2, p3

    sget p3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1153
    sget-object p3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result p3

    if-le p3, p2, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 1155
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 1158
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getRequiredTimeAndDateInSeconds(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1159
    sget-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result p1

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->helperVar:I

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 1163
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1164
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 1165
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getRequiredTimeAndDateInSeconds(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1166
    sget-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result p1

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->helperVar:I

    :cond_2
    :goto_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dialogDismissListener:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;

    if-eqz v0, :cond_0

    .line 1108
    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;->onDialogDismiss()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getCathUpEpg$25(JJJZ)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setPositionOfButton$22(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p0, 0x16

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setClickListeners()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$lvUiMHC3jyYlho7wD1Wd2N1024M;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$lvUiMHC3jyYlho7wD1Wd2N1024M;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$_C5WzjYB3RsI5L8VTvxn2eVjKMA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$_C5WzjYB3RsI5L8VTvxn2eVjKMA;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$7lhktEqixo5LkWxy-fYzPQ6m4os;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$7lhktEqixo5LkWxy-fYzPQ6m4os;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$HLKgT1mQOONq0SuES4zRSY_sKiQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$HLKgT1mQOONq0SuES4zRSY_sKiQ;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$PIxjQaLvCKR0DwBZBe2ly-hoB78;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$PIxjQaLvCKR0DwBZBe2ly-hoB78;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$WBGQseo-00z8CjZVB5dBNhcS1GE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$WBGQseo-00z8CjZVB5dBNhcS1GE;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$hX9LEWJFG1hctaok31fYN_mBfbc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$hX9LEWJFG1hctaok31fYN_mBfbc;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$nx-Gq-lxvze-ScGaFkxb4UvkMqE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$nx-Gq-lxvze-ScGaFkxb4UvkMqE;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$sjznNiI02SUrwDQRA0TFveUt1nU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$sjznNiI02SUrwDQRA0TFveUt1nU;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8UTxlE4L7U7UjeilvEEiRP6x-QA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8UTxlE4L7U7UjeilvEEiRP6x-QA;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v1, 0x7f0b0547

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    .line 279
    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$HRqN4BBuR_GGAZKDb_9ZNuo0IUg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$HRqN4BBuR_GGAZKDb_9ZNuo0IUg;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$NkrPhtPDkFKPpY-CgVnvAmXAY24;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$NkrPhtPDkFKPpY-CgVnvAmXAY24;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    .line 296
    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$li_EuH8f6gfv7QTJfqZfO8pbOHU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$li_EuH8f6gfv7QTJfqZfO8pbOHU;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$MJmshkEsfAH9WTUd_tlYvjvhVbU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$MJmshkEsfAH9WTUd_tlYvjvhVbU;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v1, 0x7f0b0548

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    .line 313
    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8Nv77j2A0gE496OngKlAyhndRWI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8Nv77j2A0gE496OngKlAyhndRWI;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$fsGP1zbL-W-05cbPRnPygRfQflU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$fsGP1zbL-W-05cbPRnPygRfQflU;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v1, 0x7f0b0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    .line 330
    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rluZfSboXmYut9EJ7Q4PJDEDB3s;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rluZfSboXmYut9EJ7Q4PJDEDB3s;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$uqr33O4sqo1a70ctaybbA2SNVpo;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$uqr33O4sqo1a70ctaybbA2SNVpo;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 345
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPause()V
    .locals 3

    const/4 v0, 0x0

    .line 1172
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->isPaused:Z

    .line 1173
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    const v2, 0x7f14031c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "day"
        }
    .end annotation

    .line 880
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p1, p1

    const/4 v1, 0x5

    .line 881
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x7

    .line 882
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140427

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 884
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140280

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 886
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140456

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 888
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 889
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14048b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 890
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 891
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140435

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 892
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 893
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1401c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 895
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140429

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCathUpEpg(IILandroid/widget/Button;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "dayNumber",
            "playingChannel",
            "focusButton"
        }
    .end annotation

    const-string v0, ""

    .line 547
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->linearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 549
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    .line 550
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    .line 551
    invoke-static {v2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "channelNumber"

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device_timezone"

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "day"

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/apiv2/channels/catchup_events"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    const-string p2, "http.agent"

    .line 556
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 557
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 558
    invoke-virtual {p1, v2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    const-string p2, "CatchUpEPG"

    .line 559
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/androidnetworking/common/Priority;->HIGH:Lcom/androidnetworking/common/Priority;

    .line 560
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    const p2, 0xa8c0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 561
    invoke-virtual {p1, p2, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$ApEg26U_f55Ea8xA6hoeks1JdVM;->INSTANCE:Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$ApEg26U_f55Ea8xA6hoeks1JdVM;

    .line 563
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest;->setAnalyticsListener(Lcom/androidnetworking/interfaces/AnalyticsListener;)Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;

    invoke-direct {p2, p0, p3}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Landroid/widget/Button;)V

    .line 565
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 646
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dismissProgressDialog()V

    :goto_0
    return-void
.end method

.method public getChangeMethod()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->daysLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFocused()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1015
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getHelperVar()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->helperVar:I

    return v0
.end method

.method public getProgramId(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1080
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1082
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getProgramName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1067
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1068
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1069
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getToday()Landroid/widget/Button;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    return-object v0
.end method

.method public getkTimer()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    return v0
.end method

.method public init()V
    .locals 5

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->handler:Landroid/os/Handler;

    .line 171
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->mInflater:Landroid/view/LayoutInflater;

    .line 173
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0e002a

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0e0029

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 180
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b0699

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    const-string v3, " Custom RelativeLayout"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0555

    .line 184
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    const v0, 0x7f0b039f

    .line 185
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->linearLayout:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b02e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b04e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    .line 189
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getPauseButtonVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->avenirHeavy:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01db

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01da

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01d9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01d7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01d6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    .line 198
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b066c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    const v3, 0x7f0b01dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->daysLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/Button;

    const/4 v3, 0x0

    .line 200
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    aput-object v4, v0, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pausedDayButtons:[Landroid/widget/Button;

    return-void
.end method

.method public synthetic lambda$dayListener$32$CatchUpRuler(Landroid/widget/Button;ILandroid/widget/Button;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    .line 1144
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getCathUpEpg(IILandroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$dayListener$33$CatchUpRuler(Landroid/widget/Button;ILandroid/widget/Button;)V
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rRxbWMX-ifhJ0jdkA7Dq2oJMLpo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rRxbWMX-ifhJ0jdkA7Dq2oJMLpo;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Landroid/widget/Button;ILandroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onEvent$26$CatchUpRuler()V
    .locals 3

    .line 670
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    if-eqz v0, :cond_0

    .line 671
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getCathUpEpg(IILandroid/widget/Button;)V

    goto :goto_0

    .line 675
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getCathUpEpg(IILandroid/widget/Button;)V

    .line 676
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onEvent$27$CatchUpRuler()V
    .locals 3

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    .line 666
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x1

    .line 667
    invoke-virtual {v0, v1, v2}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    .line 668
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$ReY58tfTLDKEtv7c3dJwulyGrr4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$ReY58tfTLDKEtv7c3dJwulyGrr4;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onEvent$28$CatchUpRuler()V
    .locals 1

    .line 664
    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$aumgxHaG2fJsvwAveTJG3CZL6F4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$aumgxHaG2fJsvwAveTJG3CZL6F4;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$29$CatchUpRuler(II)V
    .locals 13

    .line 709
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/KeyEvent;-><init>(II)V

    const v3, 0x54c563

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 710
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getFocused()Z

    move-result v0

    const/16 v1, 0x3b

    const/16 v3, 0x17

    const/16 v4, 0x18

    const/4 v5, 0x5

    const-string v6, ":0"

    const-string v7, "0"

    const/4 v8, 0x1

    const/16 v9, 0xa

    const-string v10, ":"

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->clicked:Z

    if-nez v0, :cond_5

    .line 713
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 714
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-ne p1, v4, :cond_0

    .line 717
    iput v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 718
    iput v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    .line 720
    :cond_0
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-lt p1, v9, :cond_2

    .line 721
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_1

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 724
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 727
    :cond_2
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_3

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 730
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrentTime()Ljava/lang/String;

    move-result-object p2

    .line 735
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 736
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v0, p2

    .line 739
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 740
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v1, p2

    .line 741
    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    if-nez p2, :cond_4

    if-ge v0, v1, :cond_4

    .line 742
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    goto :goto_1

    .line 744
    :cond_4
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_1
    iput-boolean v8, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->stopTimer:Z

    goto/16 :goto_6

    .line 746
    :cond_5
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var:Z

    const-wide/16 v11, 0x1f4

    if-eqz v0, :cond_7

    .line 747
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var1:Z

    if-eqz v0, :cond_6

    .line 748
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 749
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    .line 750
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$3;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$3;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, p2, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 757
    :cond_6
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$4;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$4;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, p2, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_6

    .line 764
    :cond_7
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->catchupPressed:Z

    if-nez v0, :cond_d

    .line 767
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 768
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-ne p1, v4, :cond_8

    .line 771
    iput v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 772
    iput v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    .line 774
    :cond_8
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-lt p1, v9, :cond_a

    .line 775
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_9

    .line 776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 778
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 781
    :cond_a
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_b

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 784
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 788
    :goto_2
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrentTime()Ljava/lang/String;

    move-result-object p2

    .line 789
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 790
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v0, p2

    .line 793
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 794
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v1, p2

    .line 795
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 796
    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    if-nez p2, :cond_c

    if-ge v0, v1, :cond_c

    .line 797
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    goto :goto_3

    .line 799
    :cond_c
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :goto_3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$5;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$5;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, p2, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_6

    .line 809
    :cond_d
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->firsTimeRunning:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->firsTimeRunning:I

    .line 810
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 811
    iput p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-ne p1, v4, :cond_e

    .line 814
    iput v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    .line 815
    iput v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    .line 818
    :cond_e
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    if-lt p1, v9, :cond_10

    .line 819
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_f

    .line 820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 822
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 825
    :cond_10
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    if-lt p1, v9, :cond_11

    .line 826
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 828
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 832
    :goto_4
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrentTime()Ljava/lang/String;

    move-result-object p2

    .line 833
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 834
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v0, p2

    .line 837
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 838
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    aget-object p2, p2, v8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v1, p2

    .line 840
    iget p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    if-nez p2, :cond_12

    if-ge v0, v1, :cond_12

    .line 841
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p2

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    .line 844
    :cond_12
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    .line 847
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float p2, p2, v0

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 849
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    if-le v0, p2, :cond_13

    goto :goto_5

    .line 852
    :cond_13
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFromScrollTimer:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->purge()I

    .line 853
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->requestFromScrollTimer:Ljava/util/Timer;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 866
    :goto_5
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$7;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$7;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, p2, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 872
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->cancelPause()V

    .line 873
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    :goto_6
    return-void
.end method

.method public synthetic lambda$setClickListeners$0$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$1$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 208
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$10$CatchUpRuler(Landroid/view/View;)V
    .locals 1

    const-string p1, "arrow"

    .line 280
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 281
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    .line 282
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$11$CatchUpRuler(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "arrow"

    .line 286
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 288
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$12$CatchUpRuler(Landroid/view/View;)Z
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$tto2Bh5esmXzTPHq73F1xlMz8zQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$tto2Bh5esmXzTPHq73F1xlMz8zQ;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$13$CatchUpRuler(Landroid/view/View;)V
    .locals 1

    const-string p1, "arrow"

    .line 297
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/high16 p1, -0x40800000    # -1.0f

    .line 298
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    .line 299
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$14$CatchUpRuler(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "arrow"

    .line 303
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 305
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$15$CatchUpRuler(Landroid/view/View;)Z
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left1:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$qY2AH05-BEA7cRCwqjLwtkLz1mI;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$qY2AH05-BEA7cRCwqjLwtkLz1mI;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$16$CatchUpRuler(Landroid/view/View;)V
    .locals 1

    const-string p1, "arrow"

    .line 314
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 315
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    .line 316
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$17$CatchUpRuler(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "arrow"

    .line 320
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    :cond_0
    const/high16 p1, 0x41f00000    # 30.0f

    .line 322
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$18$CatchUpRuler(Landroid/view/View;)Z
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right2:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$OG-nOgEtRh3ru0Aq-ZWIIAoBcww;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$OG-nOgEtRh3ru0Aq-ZWIIAoBcww;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$19$CatchUpRuler(Landroid/view/View;)V
    .locals 1

    const-string p1, "arrow"

    .line 331
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/high16 p1, -0x3e100000    # -30.0f

    .line 332
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    .line 333
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$2$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$20$CatchUpRuler(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "arrow"

    .line 337
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    const/16 p1, 0x17

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    :cond_0
    const/high16 p1, -0x3e100000    # -30.0f

    .line 339
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScroll(F)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$21$CatchUpRuler(Landroid/view/View;)Z
    .locals 1

    .line 336
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->left2:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8C6YAEdiZ2Ti2gVtaa8hGrpeab0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8C6YAEdiZ2Ti2gVtaa8hGrpeab0;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setClickListeners$3$CatchUpRuler(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$4$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$5$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$6$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$7$CatchUpRuler(Landroid/view/View;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-direct {p0, v1, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$setClickListeners$8$CatchUpRuler(Landroid/view/View;)V
    .locals 3

    .line 223
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->isPaused:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 224
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pausedDayButtons:[Landroid/widget/Button;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-object v0, v1, v0

    invoke-direct {p0, p1, v2, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayListener(ILandroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_0

    .line 226
    :cond_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->isPaused:Z

    .line 227
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    const v2, 0x7f140333

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 229
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;-><init>(Z)V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 230
    sget-object p1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->helperVar:I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setClickListeners$9$CatchUpRuler(Landroid/view/View;)V
    .locals 3

    .line 236
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 237
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float p1, p1, v0

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 238
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0xa

    .line 240
    div-int v2, p1, v1

    .line 241
    rem-int v1, p1, v1

    div-int/lit8 v0, v0, 0x6

    div-int/2addr v1, v0

    const/16 v0, 0x18

    if-ne v2, v0, :cond_0

    const/16 v2, 0x17

    const/16 v1, 0x3b

    :cond_0
    const/16 v0, 0xa

    .line 264
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    check-cast p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->catch_up_osd:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setVisibility(I)V

    const/4 p1, 0x0

    .line 266
    sput-boolean p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->osdCatchp:Z

    const-string v0, "OSD"

    .line 267
    sput-object v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    check-cast v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->toggleOSD(Z)V

    goto :goto_0

    .line 270
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 271
    iget p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    check-cast v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const-string v1, "Catchup"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setAccessWay(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    check-cast v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setPositionOfButton$23$CatchUpRuler(IIFLandroid/view/View;)V
    .locals 2

    .line 497
    iget-boolean p4, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    sget-object p4, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {p4}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result p4

    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int v1, v1

    sub-int/2addr p1, v1

    if-ne p4, p1, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->cancelPause()V

    .line 499
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;

    iget p4, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getRequiredTimeAndDateInSeconds(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 500
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    .line 501
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->durationTimer:Ljava/util/Timer;

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit16 p2, p2, 0x4e20

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->durationTimer:Ljava/util/Timer;

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 508
    :cond_1
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    if-nez p1, :cond_2

    const-string p1, "EPG"

    .line 509
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    goto :goto_0

    .line 511
    :cond_2
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    :goto_0
    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->clicked:Z

    .line 513
    iget p4, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    if-ne p4, p1, :cond_3

    const/4 p1, 0x0

    .line 514
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p3, p1

    .line 516
    invoke-static {p3}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    .line 518
    :goto_1
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 519
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->durationTimer:Ljava/util/Timer;

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit16 p2, p2, 0x4e20

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 521
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->durationTimer:Ljava/util/Timer;

    new-instance p3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$setPositionOfButton$24$CatchUpRuler(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z
    .locals 9

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->newInstance(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    .line 529
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->setCancelable(Z)V

    .line 531
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "check_parental_control_frag"

    invoke-virtual {p1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$updatetv$30$CatchUpRuler()V
    .locals 3

    .line 967
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->playingChannel:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getCathUpEpg(IILandroid/widget/Button;)V

    .line 968
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 969
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 971
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 973
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 975
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 977
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 979
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 981
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    goto :goto_0

    .line 983
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myDay:Landroid/widget/Button;

    .line 984
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTimer()V

    .line 985
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var1:Z

    return-void
.end method

.method public synthetic lambda$updatetv$31$CatchUpRuler()V
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$CPNO4ndRWbN1Kp9BzxDQ3F7KTrs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$CPNO4ndRWbN1Kp9BzxDQ3F7KTrs;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEvent(Lcom/magoware/magoware/webtv/players/catchup/EventCatchUp;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 652
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->linearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 654
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setFocusClicked(Landroid/widget/Button;)V

    .line 663
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 664
    new-instance v0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$xjpJJ1-vFeHPNgcdIZpQ_Jsl6D0;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$xjpJJ1-vFeHPNgcdIZpQ_Jsl6D0;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 685
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 686
    iput-object p0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->completeCatchUpRuler:Landroid/view/View;

    .line 687
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->thisActivity:Landroid/app/Activity;

    const v0, 0x7f0b031c

    .line 688
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    const/4 v1, 0x2

    .line 689
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->setOverScrollMode(I)V

    .line 690
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setHorizontalScrollView(Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;)V

    .line 692
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$2;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->setOnScrollListener(Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;)V

    .line 706
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$Yr4124t2DQ2EsKKXgGpvvpSJ8Ak;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$Yr4124t2DQ2EsKKXgGpvvpSJ8Ak;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->onChangedListener(Lcom/magoware/magoware/webtv/players/catchup/RuleView$onChangedListener;)V

    return-void
.end method

.method public requestFocusPauseButton()V
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->pauseAndPlay:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setChangeMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeMethod"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->changeMethod:Ljava/lang/String;

    return-void
.end method

.method public setDialogDismissListener(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogDismissListener"
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dialogDismissListener:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$DialogDismissListener;

    return-void
.end method

.method public setFocusClicked(Landroid/widget/Button;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedButton"
        }
    .end annotation

    const/4 v0, 0x1

    .line 909
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    const/16 v1, 0x8

    new-array v2, v1, [Landroid/widget/Button;

    .line 910
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day1:Landroid/widget/Button;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day2:Landroid/widget/Button;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day3:Landroid/widget/Button;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day4:Landroid/widget/Button;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day5:Landroid/widget/Button;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day6:Landroid/widget/Button;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->day7:Landroid/widget/Button;

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    if-eq v3, p1, :cond_0

    .line 912
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setActivated(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFocusClicked(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clickedButton",
            "othersButton"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 901
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    const/4 p1, 0x0

    .line 904
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setActivated(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusedButton()Z
    .locals 6

    .line 1024
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1025
    sget v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->width:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 1026
    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->maxValue:I

    sget v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    float-to-int v3, v3

    mul-int v2, v2, v3

    .line 1027
    sget-object v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    return v5

    .line 1032
    :cond_1
    sget-object v3, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return v5

    :cond_2
    const/4 v2, 0x0

    .line 1037
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1038
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 1040
    :cond_3
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v4

    .line 1046
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    .line 1047
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v0, :cond_7

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_7

    .line 1048
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return v5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1053
    :cond_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1054
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->right1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return v5

    .line 1057
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return v5
.end method

.method public setPositionOfButton(Ljava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "name",
            "startHours",
            "startMins",
            "endHours",
            "endMins",
            "id",
            "duration",
            "description",
            "firstProgramStartDate"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const v6, 0x7f0b039f

    .line 384
    invoke-virtual {v0, v6}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->rl:Landroid/widget/RelativeLayout;

    .line 387
    iget v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v8, 0x5

    .line 390
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 392
    iget-boolean v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    const/high16 v9, 0x41200000    # 10.0f

    const/16 v10, 0x18

    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v8, :cond_2

    .line 394
    iget-object v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 396
    iget-object v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-ne v4, v10, :cond_0

    if-nez v5, :cond_0

    rsub-int/lit8 v8, v2, 0x17

    rsub-int/lit8 v13, v3, 0x3c

    .line 402
    iget v14, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    int-to-float v8, v8

    iget v15, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v8, v8, v15

    mul-float v8, v8, v9

    sub-float v8, v14, v8

    int-to-float v9, v13

    mul-float v9, v9, v12

    div-float/2addr v9, v11

    mul-float v9, v9, v15

    sub-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_1

    :cond_0
    rsub-int/lit8 v8, v2, 0x17

    rsub-int/lit8 v13, v3, 0x3c

    .line 408
    iget v14, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    int-to-float v8, v8

    iget v15, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v8, v8, v15

    mul-float v8, v8, v9

    sub-float v8, v14, v8

    int-to-float v13, v13

    mul-float v13, v13, v12

    div-float/2addr v13, v11

    mul-float v13, v13, v15

    sub-float/2addr v8, v13

    float-to-int v8, v8

    if-ne v4, v10, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v13, v4

    mul-float v13, v13, v15

    mul-float v13, v13, v9

    add-float/2addr v14, v13

    :goto_0
    int-to-float v9, v5

    mul-float v9, v9, v12

    div-float/2addr v9, v11

    mul-float v9, v9, v15

    add-float/2addr v14, v9

    :goto_1
    float-to-int v9, v14

    goto :goto_5

    :cond_2
    if-ne v2, v10, :cond_5

    .line 419
    iget v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    iget v13, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-ne v8, v13, :cond_3

    .line 420
    iget v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    int-to-float v13, v2

    iget v14, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v13, v13, v14

    mul-float v13, v13, v9

    add-float/2addr v13, v8

    int-to-float v15, v3

    mul-float v15, v15, v12

    div-float/2addr v15, v11

    mul-float v15, v15, v14

    add-float/2addr v13, v15

    float-to-int v13, v13

    if-eq v4, v10, :cond_4

    add-int/lit8 v15, v4, 0x18

    int-to-float v15, v15

    goto :goto_2

    .line 427
    :cond_3
    iget v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    int-to-float v13, v3

    mul-float v13, v13, v12

    div-float/2addr v13, v11

    iget v14, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v13, v13, v14

    add-float/2addr v13, v8

    float-to-int v13, v13

    if-ne v4, v10, :cond_4

    goto :goto_3

    :cond_4
    int-to-float v15, v4

    :goto_2
    mul-float v15, v15, v14

    mul-float v15, v15, v9

    add-float/2addr v8, v15

    :goto_3
    int-to-float v9, v5

    mul-float v9, v9, v12

    div-float/2addr v9, v11

    mul-float v9, v9, v14

    add-float/2addr v8, v9

    goto :goto_4

    .line 436
    :cond_5
    iget v8, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    int-to-float v13, v2

    iget v14, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v13, v13, v14

    mul-float v13, v13, v9

    add-float/2addr v13, v8

    int-to-float v15, v3

    mul-float v15, v15, v12

    div-float/2addr v15, v11

    mul-float v15, v15, v14

    add-float/2addr v13, v15

    float-to-int v13, v13

    .line 437
    iget v15, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    iget v7, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-ne v15, v7, :cond_6

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float v14, v14, v7

    mul-float v14, v14, v9

    add-float/2addr v8, v14

    goto :goto_4

    :cond_6
    int-to-float v7, v4

    mul-float v7, v7, v14

    mul-float v7, v7, v9

    add-float/2addr v8, v7

    int-to-float v7, v5

    mul-float v7, v7, v12

    div-float/2addr v7, v11

    mul-float v7, v7, v14

    add-float/2addr v8, v7

    :goto_4
    float-to-int v9, v8

    move v8, v13

    .line 445
    :goto_5
    iget-boolean v7, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    if-nez v7, :cond_7

    move/from16 v11, p9

    if-eq v11, v6, :cond_7

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    const/high16 v6, 0x42700000    # 60.0f

    if-ne v2, v10, :cond_8

    .line 447
    iget v11, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    iget v13, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-eq v11, v13, :cond_8

    int-to-float v3, v3

    div-float/2addr v3, v6

    goto :goto_6

    .line 449
    :cond_8
    iget v11, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    iget v13, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-ne v11, v13, :cond_9

    if-ne v2, v10, :cond_9

    const v3, 0x41bfddde

    goto :goto_6

    :cond_9
    int-to-float v11, v2

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v3, v11

    :goto_6
    if-nez v7, :cond_a

    if-ne v4, v10, :cond_a

    if-eqz v5, :cond_b

    .line 455
    :cond_a
    iget v4, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    iget v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-ne v4, v5, :cond_c

    if-ne v2, v10, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 456
    iput-boolean v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    goto/16 :goto_8

    :cond_c
    const/4 v2, 0x1

    .line 458
    iput-boolean v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    .line 459
    new-instance v2, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 461
    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v4}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v4

    const v5, 0x7f0800a1

    if-eqz v4, :cond_d

    .line 462
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08011a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 465
    :cond_d
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v4, "#CCFFFFFF"

    .line 466
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 469
    :goto_7
    invoke-static {}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->getCurrerntTimeInFloat()F

    move-result v4

    sub-float/2addr v4, v12

    .line 470
    iget v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->programButtonWidth:F

    mul-float v4, v4, v5

    sget v5, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    .line 471
    iget v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 472
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 474
    iget-object v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v5, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070386

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 479
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v6, v9, v8

    add-int/lit8 v6, v6, -0x9

    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f07008e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 480
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v6, 0x7

    .line 481
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 482
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_e

    if-le v8, v4, :cond_e

    const/4 v6, 0x0

    .line 484
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 486
    :cond_e
    iget-object v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_f

    if-le v9, v4, :cond_f

    .line 487
    sget-object v6, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$gtarTjqjcnxW6Azzr7V1CKhtokY;->INSTANCE:Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$gtarTjqjcnxW6Azzr7V1CKhtokY;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_f
    move/from16 v6, p6

    .line 491
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setId(I)V

    const/4 v6, 0x1

    .line 492
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 493
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLines(I)V

    .line 495
    iget-object v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->today:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_10

    if-gt v8, v4, :cond_11

    .line 496
    :cond_10
    new-instance v4, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rRwq9bXMC2cwgblI_ajc5ye1Eao;

    move/from16 v6, p7

    invoke-direct {v4, v0, v8, v6, v3}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$rRwq9bXMC2cwgblI_ajc5ye1Eao;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_11
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 527
    new-instance v3, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$IyqMZGw48xfJKx3IEWSZgJfWlVA;

    move-object/from16 v4, p8

    invoke-direct {v3, v0, v1, v4}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$IyqMZGw48xfJKx3IEWSZgJfWlVA;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 535
    :cond_12
    invoke-virtual {v2}, Landroid/widget/Button;->destroyDrawingCache()V

    .line 536
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->v:Landroid/view/View;

    if-eqz v1, :cond_14

    .line 539
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dismissProgressDialog()V

    :cond_14
    :goto_8
    return-void
.end method

.method public setkTimer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kTimer"
        }
    .end annotation

    .line 378
    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    return-void
.end method

.method public startCatchupLoadTimer()V
    .locals 2

    .line 924
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->CatchUpStartTime:J

    return-void
.end method

.method public startLogCatchupTimer(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerName"
        }
    .end annotation

    .line 928
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myPlayer:Ljava/lang/String;

    .line 929
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 930
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->channelName:Ljava/lang/String;

    .line 931
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->logCatchupChangeStartTime:J

    return-void
.end method

.method public startTimer()V
    .locals 2

    const/4 v0, 0x0

    .line 918
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->shouldUpdate:I

    .line 919
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->stopTimer:Z

    .line 920
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTime:J

    return-void
.end method

.method public updatetv()V
    .locals 7

    .line 944
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->stopTimer:Z

    if-nez v0, :cond_5

    .line 947
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->difference:J

    .line 948
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->difference:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 949
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->difference:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 951
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->isPaused:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->shouldUpdate:I

    if-eq v0, v2, :cond_5

    .line 953
    iput v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->shouldUpdate:I

    .line 954
    iget v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->minutes:I

    add-int/2addr v2, v0

    .line 955
    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->hoursNum:I

    add-int/2addr v0, v1

    const/16 v1, 0x3b

    if-le v2, v1, :cond_0

    .line 957
    div-int/lit8 v1, v2, 0x3c

    add-int/2addr v0, v1

    .line 958
    rem-int/lit8 v2, v2, 0x3c

    :cond_0
    const/16 v1, 0x17

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 962
    rem-int/lit8 v0, v0, 0x18

    .line 963
    iget v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->dayNumber:I

    .line 964
    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8YSTFGQ-ZfY5BAEWMVZ5797oc9I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$8YSTFGQ-ZfY5BAEWMVZ5797oc9I;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    int-to-float v1, v0

    int-to-float v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    const-string v4, "0"

    const/16 v5, 0xa

    if-lt v2, v5, :cond_3

    const-string v6, ":"

    if-lt v0, v5, :cond_2

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v6, ":0"

    if-lt v0, v5, :cond_4

    .line 1001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1003
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    :goto_0
    iput-boolean v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->var:Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 1008
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScaleScrollByTime(F)V

    .line 1009
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
