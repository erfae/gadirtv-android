.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;
.super Landroid/view/ViewGroup;
.source "EPG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;
    }
.end annotation


# static fields
.field public static final DAYS_BACK_MILLIS:I = 0x7b98a00

.field public static final DAYS_FORWARD_MILLIS:I = 0x7b98a00

.field public static final TIME_LABEL_SPACING_MILLIS:I = 0x1b7740

.field private static final programImage:Landroid/widget/ImageView;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field public HOURS_IN_VIEWPORT_MILLIS:I

.field public final TAG:Ljava/lang/String;

.field private final avenirHeavy:Landroid/graphics/Typeface;

.field private final avenirLight:Landroid/graphics/Typeface;

.field private final avenirMedium:Landroid/graphics/Typeface;

.field private final avenirRoman:Landroid/graphics/Typeface;

.field private channelListSize:I

.field private channelsBottom:I

.field private closeEpg:Z

.field private currentChannelPosition:I

.field private currentEventLongDescription:Landroid/widget/TextView;

.field private currentEventTextView:Landroid/widget/TextView;

.field private currentEventTimeTextView:Landroid/widget/TextView;

.field private epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

.field private epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

.field private epgViewHours:I

.field private keysDisabled:Z

.field private lastSelectedEventId:Ljava/lang/String;

.field private final mChannelImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelImageTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelLayoutBackground:I

.field private final mChannelLayoutHeight:I

.field private final mChannelLayoutMargin:I

.field private final mChannelLayoutPadding:I

.field private final mChannelLayoutWidth:I

.field private mClickListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

.field private final mClipRect:Landroid/graphics/Rect;

.field private final mDrawingRect:Landroid/graphics/Rect;

.field private final mEPGBackground:I

.field private final mEventLayoutBackground:I

.field private final mEventLayoutBackgroundCurrent:I

.field private final mEventLayoutBackgroundSelected:I

.field private final mEventLayoutTextColor:I

.field private final mEventLayoutTextColorDay:I

.field private final mEventLayoutTextSize:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mMargin:J

.field private mMaxHorizontalScroll:I

.field private mMaxVerticalScroll:I

.field private final mMeasuringRect:Landroid/graphics/Rect;

.field private mMillisPerPixel:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mResetButtonIcon:Landroid/graphics/Bitmap;

.field private final mResetButtonMargin:I

.field private final mResetButtonSize:I

.field private final mScroller:Landroid/widget/Scroller;

.field private final mTimeBarHeight:I

.field private final mTimeBarLineColor:I

.field private final mTimeBarLineWidth:I

.field private final mTimeBarTextSize:I

.field private mTimeLowerBoundary:J

.field private mTimeOffset:J

.field private mTimeUpperBoundary:J

.field private orientation:I

.field private final programTimeFormat:Ljava/text/SimpleDateFormat;

.field private final programTimeFormatLong:Ljava/text/SimpleDateFormat;

.field private selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " view"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->TAG:Ljava/lang/String;

    .line 97
    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgViewHours:I

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    .line 98
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "dd MMM, EEEE  HH:mm"

    invoke-direct {p2, v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->programTimeFormatLong:Ljava/text/SimpleDateFormat;

    .line 99
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "HH:mm"

    invoke-direct {p2, v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->programTimeFormat:Ljava/text/SimpleDateFormat;

    const-wide/32 p2, 0x30d40

    .line 108
    iput-wide p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMargin:J

    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    .line 111
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    const/4 p3, 0x0

    .line 112
    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelsBottom:I

    .line 118
    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->closeEpg:Z

    const/16 v0, 0x8

    .line 119
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelListSize:I

    const-string v0, "-1"

    .line 120
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->lastSelectedEventId:Ljava/lang/String;

    .line 121
    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    .line 134
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateHoursViewPort()V

    .line 135
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setWillNotDraw(Z)V

    .line 137
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->resetBoundaries()V

    .line 139
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mDrawingRect:Landroid/graphics/Rect;

    .line 140
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    .line 141
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    .line 142
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    .line 143
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$OnGestureListener;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$1;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mGestureDetector:Landroid/view/GestureDetector;

    .line 144
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageCache:Ljava/util/Map;

    .line 145
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    .line 147
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    const p1, 0x3e4ccccd    # 0.2f

    .line 148
    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 150
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEPGBackground:I

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07011c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    .line 153
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07011e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    .line 154
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07011a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    .line 155
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070120

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    .line 156
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutBackground:I

    .line 158
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackground:I

    .line 159
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackgroundCurrent:I

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackgroundSelected:I

    .line 161
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextColor:I

    .line 162
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextColorDay:I

    .line 163
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070122

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextSize:I

    .line 165
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/avenir-light.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirLight:Landroid/graphics/Typeface;

    .line 166
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Avenir-Heavy.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirHeavy:Landroid/graphics/Typeface;

    .line 167
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Avenir-Roman.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirRoman:Landroid/graphics/Typeface;

    .line 168
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Avenir-Medium.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirMedium:Landroid/graphics/Typeface;

    .line 170
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    .line 171
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarTextSize:I

    .line 172
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineWidth:I

    .line 173
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineColor:I

    .line 175
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070128

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    .line 176
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070126

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    .line 178
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 180
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 181
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f080386

    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;IJ)I
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionOnGivenTime(IJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMaxHorizontalScroll:I

    return p0
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMaxVerticalScroll:I

    return p0
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/widget/Scroller;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;I)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClickListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateResetButtonHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateChannelsHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateProgramsHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;I)J
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private calculateChannelsHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 757
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    .line 758
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 759
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 760
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 761
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateHoursViewPort()V
    .locals 1

    .line 186
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgViewHours:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    return-void
.end method

.method private calculateMaxHorizontalScroll()V
    .locals 4

    .line 719
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    const v1, 0xf731400

    sub-int/2addr v1, v0

    int-to-long v0, v1

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMaxHorizontalScroll:I

    return-void
.end method

.method private calculateMaxVerticalScroll()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTopFrom(I)I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v0, v1

    .line 724
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMaxVerticalScroll:I

    return-void
.end method

.method private calculateMillisPerPixel()J
    .locals 3

    .line 740
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method private calculateProgramsHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 766
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    .line 767
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 768
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 769
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 770
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateResetButtonHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 775
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 776
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 777
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 778
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculatedBaseLine()J
    .locals 2

    .line 688
    invoke-static {}, Lorg/joda/time/LocalDateTime;->now()Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    const v1, 0x7b98a00

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->minusMillis(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private drawBottomBlueSpace(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 293
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelsBottom:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 294
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 295
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 297
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawChannelItem(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "position",
            "drawingRect"
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 597
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTopFrom(I)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 598
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 599
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 602
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannel(I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    .line 604
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 606
    invoke-direct {p0, p3, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getDrawingRectForChannelImage(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p3

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 609
    :cond_0
    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 611
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 612
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$1;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    invoke-static {p3, p2, p1, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGUtil;->loadImageInto(Landroid/content/Context;Ljava/lang/String;IILcom/squareup/picasso/Target;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawChannelListItems(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 580
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 581
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 582
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 584
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 587
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getFirstVisibleChannelPosition()I

    move-result v0

    .line 588
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLastVisibleChannelPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_0

    .line 591
    invoke-direct {p0, p1, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawChannelItem(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawEvent(Landroid/graphics/Canvas;ILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "canvas",
            "channelPosition",
            "event",
            "drawingRect"
        }
    .end annotation

    .line 517
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 518
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    move-object v0, p0

    move v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 519
    :cond_0
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 520
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v4

    move-object v0, p0

    move v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 522
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    move-object v0, p0

    move v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v4

    move-object v0, p0

    move v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V

    .line 528
    :goto_0
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackgroundSelected:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 530
    :cond_3
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackgroundCurrent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 538
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 539
    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    sub-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 542
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 544
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 547
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirLight:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 550
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 551
    iget v0, p4, Landroid/graphics/Rect;->top:I

    .line 552
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 554
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    iget v5, p4, Landroid/graphics/Rect;->right:I

    iget v6, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 558
    iget v3, p4, Landroid/graphics/Rect;->left:I

    iget v4, p4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1e

    add-int/lit8 v5, v0, 0x1e

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 566
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    sub-float/2addr v2, v0

    .line 567
    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawEvents(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 483
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getFirstVisibleChannelPosition()I

    move-result v0

    .line 484
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLastVisibleChannelPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_3

    .line 489
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 490
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTopFrom(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 491
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 492
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    .line 500
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v3, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object v3

    .line 502
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 503
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventVisible(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawEvent(Landroid/graphics/Canvas;ILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 510
    :cond_2
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelsBottom:I

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawResetButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    int-to-long v0, p2

    .line 336
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXPositionStart()I

    move-result p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v2, v0

    if-lez p2, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateResetButtonHitArea()Landroid/graphics/Rect;

    move-result-object p2

    .line 338
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 341
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    .line 339
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 345
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 346
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 347
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonMargin:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mResetButtonIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawShader(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 472
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 473
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 474
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 475
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 476
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 477
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 479
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTimeLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 428
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->shouldDrawTimeLine(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXFrom(J)I

    move-result v0

    .line 430
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineWidth:I

    mul-int/lit16 v1, v1, 0xb4

    sub-int v1, v0, v1

    .line 432
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 433
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 434
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineWidth:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 435
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 437
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawTriangle(Landroid/graphics/Canvas;II)V

    .line 442
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 443
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 445
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isDisplayShaderEPG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawShader(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private drawTimebar(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 365
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 366
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 367
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 369
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 370
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 371
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 372
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 378
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirRoman:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 386
    :goto_0
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    const v2, 0x1b7740

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 388
    iget-wide v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    mul-int v2, v2, v0

    int-to-long v1, v2

    add-long/2addr v3, v1

    const-wide/32 v1, 0xdbba0

    add-long/2addr v3, v1

    const-wide/32 v1, 0x1b7740

    div-long/2addr v3, v1

    mul-long v3, v3, v1

    .line 392
    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGUtil;->getShortTime(J)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-direct {p0, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXFrom(J)I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarTextSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    .line 392
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawTimebarDayIndicator(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawTimebarBottomStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawTimebarBottomStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 354
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 355
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 356
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 359
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEPGBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTimebarDayIndicator(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawingRect"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 405
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 406
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 407
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 410
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 414
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mEventLayoutTextColorDay:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 416
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->avenirHeavy:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 417
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 418
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGUtil;->getEPGdayName(J)Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarTextSize:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    int-to-float p2, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 422
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "xPos",
            "yTopPos"
        }
    .end annotation

    .line 458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 459
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    int-to-float v2, p2

    add-int/lit8 v3, p3, 0xf

    int-to-float v3, v3

    .line 462
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v4, p2, -0xa

    int-to-float v4, v4

    int-to-float p3, p3

    .line 463
    invoke-virtual {v1, v4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0xa

    int-to-float p2, p2

    .line 464
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 468
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getChannelAreaWidth()I
    .locals 2

    .line 251
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getChannelPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 782
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    sub-int/2addr p1, v0

    .line 783
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v1, v0

    div-int/2addr p1, v1

    .line 786
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method private getDrawingRectForChannelImage(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawingRect",
            "image"
        }
    .end annotation

    .line 638
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 639
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 640
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 641
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 643
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 644
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 647
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 648
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v0, p2, :cond_0

    int-to-float p2, v3

    int-to-float v0, v2

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 652
    div-int/lit8 p2, p2, 0x2

    .line 653
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 654
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    if-gt v0, p2, :cond_1

    int-to-float p2, v2

    int-to-float v0, v3

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 656
    div-int/lit8 p2, p2, 0x2

    .line 657
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 658
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getEventPositionCloserToGivenTime(IJ)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "time"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object p1

    .line 811
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>()V

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 816
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 817
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 818
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v5

    cmp-long v7, v5, p2

    if-gtz v7, :cond_1

    move v3, v2

    move-object v0, v4

    goto :goto_1

    .line 821
    :cond_1
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v5

    cmp-long v7, v5, p2

    if-ltz v7, :cond_3

    .line 822
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v4

    sub-long/2addr v4, p2

    sub-long/2addr v0, v4

    const-wide/16 p1, 0x0

    cmp-long p3, v0, p1

    if-gez p3, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private getEventPositionOnGivenTime(IJ)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "time"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object v0

    .line 793
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-ltz v3, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v1

    add-long/2addr p2, v1

    const-wide/16 v1, 0x2

    div-long/2addr p2, v1

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 798
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 799
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 801
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gtz v5, :cond_1

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-ltz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionCloserToGivenTime(IJ)I

    move-result p1

    return p1
.end method

.method private getFirstVisibleChannelPosition()I
    .locals 3

    .line 692
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v0

    .line 694
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v2, v1

    div-int/2addr v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getLastVisibleChannelPosition()I
    .locals 5

    .line 704
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v0

    .line 705
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v1

    .line 706
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 707
    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_0

    move v2, v1

    :cond_0
    mul-int v4, v4, v2

    if-le v0, v4, :cond_1

    if-ge v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    return v2
.end method

.method private getLiveNowEventPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelPosition"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 832
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 833
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 835
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventLiveNow(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getProgramAreaWidth()I
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelAreaWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTimeFrom(I)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    int-to-long v0, p1

    .line 736
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getTopFrom(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 732
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getXFrom(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 728
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeOffset:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr p2, p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method private getXPositionStart()I
    .locals 4

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->HOURS_IN_VIEWPORT_MILLIS:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXFrom(J)I

    move-result v0

    return v0
.end method

.method private gotoNextDay(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEvent"
        }
    .end annotation

    return-void
.end method

.method private gotoPreviousDay(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEvent"
        }
    .end annotation

    return-void
.end method

.method private isEventFullyVisible(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->getStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->getEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEventPartiallyOnFuture(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 679
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEventPartiallyOnPast(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEventVisible(JJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 669
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    :cond_0
    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, p3, v2

    if-lez v4, :cond_2

    :cond_1
    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    iget-wide p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v0, p3, p1

    if-ltz v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetBoundaries()V
    .locals 2

    .line 749
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateMillisPerPixel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    .line 750
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculatedBaseLine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeOffset:J

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 752
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    return-void
.end method

.method private setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "channelPosition",
            "start",
            "end",
            "drawingRect"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXFrom(J)I

    move-result p2

    iput p2, p6, Landroid/graphics/Rect;->left:I

    .line 572
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTopFrom(I)I

    move-result p1

    iput p1, p6, Landroid/graphics/Rect;->top:I

    .line 573
    invoke-direct {p0, p4, p5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getXFrom(J)I

    move-result p1

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->right:I

    .line 574
    iget p1, p6, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private shouldDrawTimeLine(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 665
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clearEPGImageCache()V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelImageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getChannelListSize()I
    .locals 1

    .line 1240
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelListSize:I

    return v0
.end method

.method public getEpgViewHours()I
    .locals 1

    .line 1248
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgViewHours:I

    return v0
.end method

.method public getNextFocusedEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1099
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 1100
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getNextChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result p1

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    .line 1102
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1105
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventLiveNow(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    goto :goto_1

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 1109
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1108
    invoke-direct {p0, p1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionOnGivenTime(IJ)I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    :goto_1
    return-void
.end method

.method public getTimeDifferenceHours(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeMillis1",
            "timeMillis2"
        }
    .end annotation

    sub-int/2addr p1, p2

    const p2, 0x36ee80

    .line 1256
    div-int/2addr p1, p2

    return p1
.end method

.method public getTimeFromMillies(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliseconds"
        }
    .end annotation

    .line 1264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1265
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    .line 1266
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 1267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xb

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isEventLiveNow(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1115
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgEvent"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventTimeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->programTimeFormatLong:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->programTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventLongDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getLongDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 263
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 265
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mDrawingRect:Landroid/graphics/Rect;

    .line 266
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 267
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 268
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 269
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawChannelListItems(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawEvents(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawTimebar(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawTimeLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawResetButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->drawBottomBlueSpace(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 279
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    const-wide/32 v1, 0x1b7740

    iget-wide v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr p1, v2

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->scrollTo(II)V

    .line 281
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->closeEpg:Z

    goto :goto_0

    .line 283
    :cond_0
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->closeEpg:Z

    if-eqz p1, :cond_1

    .line 284
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->closeEpg:Z

    .line 285
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->closeEpg()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 326
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1012
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    aput-object v5, v0, v1

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->checkForNullParams([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1015
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 1016
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->closeEpg()V

    :cond_1
    return v1

    .line 1021
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 1022
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 1024
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1025
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1026
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->closeEpg()V

    goto/16 :goto_4

    .line 1028
    :cond_3
    iput-boolean v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->closeEpg:Z

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p0, v0, v4, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    goto/16 :goto_4

    .line 1031
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    if-eqz v0, :cond_15

    .line 1032
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_8

    .line 1033
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getNextEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1034
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnFuture(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0, v4, p2, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 1036
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnFuture(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1037
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 1038
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getNextEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 1039
    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 1041
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    int-to-long v2, v2

    iget-wide v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    mul-long v2, v2, v5

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventVisible(JJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1042
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0, v4, p2, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;Z)V

    goto/16 :goto_3

    .line 1044
    :cond_7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    goto/16 :goto_3

    .line 1046
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    if-ne v0, v3, :cond_a

    .line 1047
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1048
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnPast(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1049
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0, v4, p2, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;Z)V

    goto/16 :goto_3

    .line 1050
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnPast(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1051
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 1052
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 1053
    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 1054
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventVisible(JJ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1055
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0, v4, p2, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;Z)V

    goto/16 :goto_3

    .line 1058
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_c

    .line 1059
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1060
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getNextFocusedEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_3

    .line 1062
    :cond_b
    iput-boolean v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    .line 1063
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {v0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->loadMoreChannels(Landroid/view/KeyEvent;)V

    goto/16 :goto_3

    .line 1065
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_e

    .line 1066
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getNextChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1067
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getNextFocusedEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_3

    .line 1069
    :cond_d
    iput-boolean v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    .line 1070
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {v0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->loadMoreChannels(Landroid/view/KeyEvent;)V

    goto :goto_3

    .line 1072
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_f

    goto :goto_2

    .line 1074
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_10

    goto :goto_1

    .line 1076
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_14

    .line 1077
    :cond_11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->gotoPreviousDay(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_3

    .line 1075
    :cond_12
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->gotoNextDay(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_3

    .line 1073
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClickListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v4

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getDurationSeconds()I

    move-result v6

    div-int/2addr v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionOnGivenTime(IJ)I

    move-result v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-interface {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;->onEventClicked(IILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 1080
    :cond_14
    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 1081
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    .line 1083
    :cond_15
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
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

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 193
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateHoursViewPort()V

    .line 196
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelListSize:I

    mul-int v0, v0, v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x64

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 209
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    if-ne v2, v4, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    .line 217
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 241
    instance-of v0, p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;

    if-nez v0, :cond_0

    .line 242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 245
    :cond_0
    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;

    .line 246
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 247
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->getCurrentEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 232
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;-><init>(Landroid/os/Parcelable;)V

    .line 234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->setCurrentEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 304
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgEvent",
            "withAnimation"
        }
    .end annotation

    .line 1134
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventVisible(JJ)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1141
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result p2

    .line 1142
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 1144
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result v1

    .line 1145
    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v4, v3

    mul-int v1, v1, v4

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge v1, p2, :cond_0

    sub-int/2addr v1, p2

    sub-int/2addr v1, v2

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_0
    if-le v3, v0, :cond_1

    sub-int v1, v3, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 1156
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 1157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getProgramAreaWidth()I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 1158
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    const-wide/32 v5, 0x30d40

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 1160
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    sub-long/2addr v2, v0

    sub-long/2addr v2, v5

    const-wide/16 v0, -0x1

    mul-long v2, v2, v0

    .line 1161
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr v2, v0

    long-to-float p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 1164
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 1165
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    .line 1167
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    sub-long/2addr p1, v0

    sub-long/2addr p1, v5

    .line 1168
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v8, p1

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    if-nez v8, :cond_4

    if-eqz v9, :cond_5

    .line 1172
    :cond_4
    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_5
    return-void
.end method

.method public optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "epgEvent",
            "optimize",
            "event",
            "withAnimation"
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result p2

    .line 1189
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    .line 1191
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelPosition()I

    move-result v0

    .line 1192
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeBarHeight:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutHeight:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    add-int/2addr v3, v2

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    if-ge v0, p2, :cond_0

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    if-le v2, p4, :cond_1

    sub-int v0, v2, p4

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 1203
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 1204
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result p2

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getProgramAreaWidth()I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 1205
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    const/16 p2, 0x26f6

    const/16 p4, 0x15

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    .line 1207
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x30d40

    sub-long/2addr v4, v0

    const-wide/16 v0, -0x1

    mul-long v4, v4, v0

    .line 1208
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mMillisPerPixel:J

    div-long/2addr v4, v0

    long-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1210
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, p4, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v0, v1

    neg-int v3, v0

    goto :goto_2

    :cond_2
    if-eq v3, p2, :cond_3

    .line 1214
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int v3, v0, v1

    .line 1217
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    .line 1218
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    .line 1219
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_5

    .line 1221
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    .line 1225
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, p4, :cond_4

    .line 1226
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr p1, p2

    neg-int p1, p1

    :goto_3
    move v7, p1

    goto :goto_4

    :cond_4
    if-eq v3, p2, :cond_5

    .line 1229
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutWidth:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mChannelLayoutMargin:I

    sub-int/2addr p1, p2

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_4
    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    .line 1235
    :cond_6
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getScrollY()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_7
    return-void
.end method

.method public recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedEvent",
            "withAnimation",
            "event"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 870
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->closeEpg()V

    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 874
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->resetBoundaries()V

    .line 875
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateMaxVerticalScroll()V

    .line 876
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateMaxHorizontalScroll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 879
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    goto/16 :goto_0

    :cond_1
    const-wide/16 v1, 0x2

    if-eqz p3, :cond_2

    .line 880
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v3, 0x13

    if-ne p1, v3, :cond_2

    .line 881
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 882
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v3

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v5

    add-long/2addr v3, v5

    div-long/2addr v3, v1

    invoke-direct {p0, p1, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionOnGivenTime(IJ)I

    move-result v1

    invoke-interface {p3, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 883
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    .line 884
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v3

    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v5

    add-long/2addr v3, v5

    div-long/2addr v3, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionOnGivenTime(IJ)I

    move-result p3

    invoke-interface {p1, v0, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    goto :goto_0

    .line 886
    :cond_3
    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentChannelPosition:I

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelListSize:I

    rem-int/2addr p1, p2

    invoke-virtual {p0, p1, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectInitialEvent(ILandroid/view/KeyEvent;)V

    .line 888
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    .line 889
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    :cond_4
    return-void
.end method

.method public recalculateAndRedrawAndGoToLiveNow(Landroid/view/KeyEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->resetBoundaries()V

    .line 900
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateMaxVerticalScroll()V

    .line 901
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->calculateMaxHorizontalScroll()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 903
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    .line 904
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-interface {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getChannelCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 905
    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 906
    invoke-virtual {p0, v0, v2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    return-void

    .line 909
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-direct {p0, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 910
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->hasData()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    .line 911
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 912
    invoke-virtual {p0, v0, v2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    return-void

    .line 915
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    .line 917
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    .line 918
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    :cond_4
    return-void
.end method

.method public redraw()V
    .locals 0

    .line 926
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->invalidate()V

    .line 927
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->requestLayout()V

    return-void
.end method

.method public releaseKeys()V
    .locals 1

    const/4 v0, 0x0

    .line 1260
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->keysDisabled:Z

    return-void
.end method

.method public selectEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgEvent",
            "withAnimation"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 949
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 951
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 952
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 953
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    .line 954
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 957
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    return-void
.end method

.method public selectEventWithoutScroll(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgEvent",
            "withAnimation"
        }
    .end annotation

    .line 961
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 962
    invoke-virtual {p2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    :cond_0
    const/4 p2, 0x1

    .line 964
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setSelected(Z)V

    .line 965
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    .line 966
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 969
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->redraw()V

    return-void
.end method

.method public selectInitialEvent(ILandroid/view/KeyEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "event"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    .line 975
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 976
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getLiveNowEventPosition(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getEventPositionCloserToGivenTime(IJ)I

    move-result v1

    .line 974
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    move-result-object p1

    .line 977
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v0

    .line 979
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->lastSelectedEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->lastSelectedEventId:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 980
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;->closeEpg()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 982
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 983
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->lastSelectedEventId:Ljava/lang/String;

    :cond_2
    const/4 p2, 0x1

    .line 986
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    return-void
.end method

.method public setChannelListSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1244
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->channelListSize:I

    return-void
.end method

.method public setCurrentChannelPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 226
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentChannelPosition:I

    return-void
.end method

.method public setCurrentEventLongDescription(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEventLongDescription"
        }
    .end annotation

    .line 998
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventLongDescription:Landroid/widget/TextView;

    return-void
.end method

.method public setCurrentEventTextView(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEventTextView"
        }
    .end annotation

    .line 990
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setCurrentEventTimeTextView(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEventTimeTextView"
        }
    .end annotation

    .line 994
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->currentEventTimeTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setEPGClickListener(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgClickListener"
        }
    .end annotation

    .line 849
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mClickListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;

    return-void
.end method

.method public setEPGData(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgData"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    return-void
.end method

.method public setEpgLoadMoreListener(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgLoadMoreListener"
        }
    .end annotation

    .line 1119
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgLoadMoreListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;

    return-void
.end method

.method public setEpgViewHours(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hours"
        }
    .end annotation

    .line 1252
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->epgViewHours:I

    return-void
.end method

.method public setNextFocusedEventTime()J
    .locals 9

    .line 1087
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getDurationSeconds()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnFuture(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v7

    sub-long/2addr v5, v7

    div-long/2addr v5, v1

    :goto_0
    add-long/2addr v3, v5

    return-wide v3

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->isEventPartiallyOnPast(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    iget-wide v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    sub-long/2addr v5, v7

    div-long/2addr v5, v1

    goto :goto_0

    .line 1094
    :cond_2
    iget-wide v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeLowerBoundary:J

    iget-wide v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->mTimeUpperBoundary:J

    sub-long/2addr v5, v3

    div-long/2addr v5, v1

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1003
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->orientation:I

    .line 1004
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1005
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->screenWidth:I

    .line 1006
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->screenHeight:I

    return-void
.end method
