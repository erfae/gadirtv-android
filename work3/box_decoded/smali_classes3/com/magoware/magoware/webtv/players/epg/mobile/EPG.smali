.class public Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;
.super Landroid/view/ViewGroup;
.source "EPG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$OnGestureListener;
    }
.end annotation


# static fields
.field public static final DAYS_BACK_MILLIS:I = 0x2932e00

.field public static final DAYS_FORWARD_MILLIS:I = 0x2932e00

.field public static final HOURS_4_IN_MILLIS:I = 0xdbba00

.field public static final HOURS_8_IN_MILLIS:I = 0x1b77400

.field public static final HOURS_IN_VIEWPORT_MILLIS:I = 0x6ddd00

.field public static final TIME_LABEL_SPACING_MILLIS:I = 0x1b7740

.field private static programImage:Landroid/widget/ImageView;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field private currentEventLongDescription:Landroid/widget/TextView;

.field private currentEventTextView:Landroid/widget/TextView;

.field private currentEventTimeTextView:Landroid/widget/TextView;

.field private epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

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

.field private mClickListener:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;

.field private final mClipRect:Landroid/graphics/Rect;

.field private final mDrawingRect:Landroid/graphics/Rect;

.field private final mEPGBackground:I

.field private final mEventLayoutBackground:I

.field private final mEventLayoutBackgroundCurrent:I

.field private final mEventLayoutBackgroundSelected:I

.field private final mEventLayoutTextColor:I

.field private final mEventLayoutTextSize:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mMargin:J

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

.field private programTimeFormat:Ljava/text/SimpleDateFormat;

.field private programTimeFormatLong:Ljava/text/SimpleDateFormat;

.field private selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;


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

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->TAG:Ljava/lang/String;

    .line 61
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "dd MMM, EEEE  HH:mm"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->programTimeFormatLong:Ljava/text/SimpleDateFormat;

    .line 62
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "HH:mm"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->programTimeFormat:Ljava/text/SimpleDateFormat;

    const-wide/32 p2, 0x30d40

    .line 103
    iput-wide p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    const/4 p2, 0x0

    .line 105
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    .line 106
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const/4 p3, 0x0

    .line 129
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setWillNotDraw(Z)V

    .line 131
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->resetBoundaries()V

    .line 133
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mDrawingRect:Landroid/graphics/Rect;

    .line 134
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    .line 135
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    .line 136
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    .line 137
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$OnGestureListener;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$OnGestureListener;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mGestureDetector:Landroid/view/GestureDetector;

    .line 138
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageCache:Ljava/util/Map;

    .line 139
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    .line 142
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    const p1, 0x3e4ccccd    # 0.2f

    .line 143
    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 145
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const p2, 0x7f0601ef

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEPGBackground:I

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600e3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEPGBackground:I

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07011b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    .line 151
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07011d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070119

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07011f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    .line 156
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutBackground:I

    .line 158
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060046

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackground:I

    .line 159
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundCurrent:I

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0601f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundSelected:I

    .line 161
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060086

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextColor:I

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutBackground:I

    .line 165
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackground:I

    .line 166
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundCurrent:I

    .line 167
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundSelected:I

    .line 168
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600e9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextColor:I

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070121

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextSize:I

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070129

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    .line 175
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarTextSize:I

    .line 176
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07012b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineWidth:I

    .line 177
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineColor:I

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineColor:I

    .line 182
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070127

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    .line 183
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070125

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    .line 185
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 187
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 188
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f080386

    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;IJ)I
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramPosition(IJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMaxHorizontalScroll:I

    return p0
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMaxVerticalScroll:I

    return p0
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Landroid/widget/Scroller;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;I)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getChannelPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClickListener:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateResetButtonHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateChannelsHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Landroid/graphics/Rect;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateProgramsHitArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;I)J
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private calculateChannelsHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 647
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    .line 648
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 649
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 650
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 651
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateMaxHorizontalScroll()V
    .locals 4

    .line 607
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    const-wide/32 v2, 0x4b87f00

    div-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMaxHorizontalScroll:I

    return-void
.end method

.method private calculateMaxVerticalScroll()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTopFrom(I)I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    add-int/2addr v0, v1

    .line 612
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMaxVerticalScroll:I

    return-void
.end method

.method private calculateMillisPerPixel()J
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v0, v1

    const v1, 0x6ddd00

    div-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method private calculateProgramsHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 656
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    .line 657
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 658
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 659
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 660
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateResetButtonHitArea()Landroid/graphics/Rect;
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 665
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 666
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 667
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 668
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculatedBaseLine()J
    .locals 2

    .line 576
    invoke-static {}, Lorg/joda/time/LocalDateTime;->now()Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    const v1, 0x2932e00

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->minusMillis(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
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

    .line 497
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 498
    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTopFrom(I)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 499
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 500
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 503
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannel(I)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getImageURL()Ljava/lang/String;

    move-result-object p2

    .line 505
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 507
    invoke-direct {p0, p3, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getDrawingRectForChannelImage(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p3

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 510
    :cond_0
    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    iget p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 512
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 513
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageTargetCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    invoke-static {p3, p2, p1, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->loadImageInto(Landroid/content/Context;Ljava/lang/String;IILcom/squareup/picasso/Target;)V

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

    .line 480
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 481
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 482
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 483
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 485
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 488
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getFirstVisibleChannelPosition()I

    move-result v0

    .line 489
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getLastVisibleChannelPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_0

    .line 492
    invoke-direct {p0, p1, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawChannelItem(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawEvent(Landroid/graphics/Canvas;ILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Landroid/graphics/Rect;)V
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

    .line 428
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v4

    move-object v0, p0

    move v1, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setEventDrawingRectangle(IJJLandroid/graphics/Rect;)V

    .line 431
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 432
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundSelected:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->isCurrent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 434
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackgroundCurrent:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutBackground:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 441
    iget p2, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    add-int/lit8 v0, v0, 0x10

    add-int/2addr p2, v0

    iput p2, p4, Landroid/graphics/Rect;->left:I

    .line 442
    iget p2, p4, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    sub-int/2addr p2, v0

    iput p2, p4, Landroid/graphics/Rect;->right:I

    .line 445
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 449
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 450
    iget p2, p4, Landroid/graphics/Rect;->top:I

    .line 451
    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMeasuringRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 453
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    iget v4, p4, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 459
    iget v3, p4, Landroid/graphics/Rect;->left:I

    iget v4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v3, p2, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 462
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    :cond_2
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    .line 466
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    sub-float/2addr p3, p2

    .line 468
    iget p2, p4, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

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

    .line 393
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getFirstVisibleChannelPosition()I

    move-result v0

    .line 394
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getLastVisibleChannelPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_3

    .line 399
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 400
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTopFrom(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 401
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 402
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v3, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object v3

    .line 412
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 413
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->isEventVisible(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawEvent(Landroid/graphics/Canvas;ILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 421
    :cond_2
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

    .line 285
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    int-to-long v0, p2

    .line 286
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXPositionStart()I

    move-result p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v2, v0

    if-lez p2, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateResetButtonHitArea()Landroid/graphics/Rect;

    move-result-object p2

    .line 288
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 291
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    .line 289
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 294
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 295
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 296
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 297
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonMargin:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 298
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mResetButtonIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTimeLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
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

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->shouldDrawTimeLine(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXFrom(J)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 378
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 379
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 380
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 382
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

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

    .line 314
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 315
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 316
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 317
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 319
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 320
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 321
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 322
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 325
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 328
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 337
    iget-wide v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    const v3, 0x1b7740

    mul-int v3, v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0xdbba0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    div-long/2addr v1, v3

    mul-long v1, v1, v3

    .line 341
    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->getShortTime(J)Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-direct {p0, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXFrom(J)I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarTextSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    .line 341
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawTimebarDayIndicator(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawTimebarBottomStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

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

    .line 303
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 304
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 305
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 306
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 309
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEPGBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

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

    .line 353
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 354
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 355
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 356
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 359
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 363
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mEventLayoutTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 365
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 366
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->getEPGdayName(J)Ljava/lang/String;

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

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarTextSize:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    int-to-float p2, v2

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 370
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private getChannelAreaWidth()I
    .locals 2

    .line 215
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

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

    .line 672
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    sub-int/2addr p1, v0

    .line 673
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    add-int/2addr v1, v0

    div-int/2addr p1, v1

    .line 676
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

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

    .line 539
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 540
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 541
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 542
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 544
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 545
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 548
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 549
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v0, p2, :cond_0

    int-to-float p2, v3

    int-to-float v0, v2

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 553
    div-int/lit8 p2, p2, 0x2

    .line 554
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 555
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

    .line 557
    div-int/lit8 p2, p2, 0x2

    .line 558
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 559
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getFirstVisibleChannelPosition()I
    .locals 3

    .line 580
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    .line 582
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    add-int/2addr v2, v1

    div-int/2addr v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getLastVisibleChannelPosition()I
    .locals 5

    .line 592
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v0

    .line 593
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

    move-result v1

    .line 594
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 595
    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

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

.method private getProgramAreaWidth()I
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getChannelAreaWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getProgramAtTime(IJ)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 11
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

    .line 696
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 704
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 705
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 707
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-gtz v10, :cond_0

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-ltz v10, :cond_0

    return-object v7

    .line 710
    :cond_0
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-ltz v10, :cond_1

    .line 712
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v2

    sub-long/2addr v2, p2

    move v5, v4

    .line 714
    :cond_1
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-gtz v10, :cond_2

    .line 716
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v0

    sub-long v0, p2, v0

    move v6, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    .line 720
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object p1

    .line 722
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getProgramPosition(IJ)I
    .locals 5
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

    .line 680
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getEvents(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 684
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 685
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 687
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-ltz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
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

    .line 627
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeOffset:J

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

    .line 621
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v0, v1

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

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

    .line 616
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeOffset:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr p2, p1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutWidth:I

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method private getXPositionStart()I
    .locals 4

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXFrom(J)I

    move-result v0

    return v0
.end method

.method private gotoNextDay(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
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

.method private gotoPreviousDay(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
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

    .line 570
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    :cond_0
    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    cmp-long v4, p3, v2

    if-lez v4, :cond_2

    :cond_1
    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    iget-wide p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

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

.method private loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgEvent"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventLongDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getlongDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventTimeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->programTimeFormatLong:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->programTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private mergeEPGData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldData",
            "newData"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 749
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 750
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 753
    :goto_1
    invoke-interface {p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannelCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 754
    invoke-interface {p2, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getChannel(I)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getOrCreateChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v3

    const/4 v4, 0x0

    .line 756
    :goto_2
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 757
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 758
    invoke-virtual {v3, v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 764
    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not merge EPG data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p1
.end method

.method private resetBoundaries()V
    .locals 2

    .line 639
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMillisPerPixel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    .line 640
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculatedBaseLine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeOffset:J

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 642
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    return-void
.end method

.method private selectEvent()V
    .locals 0

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

    .line 472
    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXFrom(J)I

    move-result p2

    iput p2, p6, Landroid/graphics/Rect;->left:I

    .line 473
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTopFrom(I)I

    move-result p1

    iput p1, p6, Landroid/graphics/Rect;->top:I

    .line 474
    invoke-direct {p0, p4, p5}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXFrom(J)I

    move-result p1

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Rect;->right:I

    .line 475
    iget p1, p6, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

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

    .line 566
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static updateImageCropping(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 924
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 925
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 926
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 927
    sget v3, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->screenWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 928
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v2, v2, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v2, v2, v1

    const/4 v1, 0x0

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 930
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public clearEPGImageCache()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelImageCache:Ljava/util/Map;

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

.method public getSelectedEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object v0
.end method

.method public initialRecalculateAndRedraw()V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->resetBoundaries()V

    .line 833
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxVerticalScroll()V

    .line 834
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxHorizontalScroll()V

    .line 849
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 227
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 229
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mDrawingRect:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 231
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 232
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 233
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawChannelListItems(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawEvents(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawTimebar(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawTimeLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawResetButton(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 242
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->scrollTo(II)V

    :cond_0
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

    .line 274
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
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

    .line 938
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 939
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 941
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto/16 :goto_2

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    if-eqz v0, :cond_b

    .line 944
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 945
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getNextEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 946
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    iput-boolean v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 947
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getNextEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 948
    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 949
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto/16 :goto_1

    .line 951
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    .line 952
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 953
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    iput-boolean v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 954
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 955
    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 956
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto/16 :goto_1

    .line 958
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    const-wide/16 v4, 0x2

    if-ne v0, v2, :cond_4

    .line 960
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 961
    iget-wide v6, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 962
    iget-wide v8, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 963
    div-long/2addr v6, v4

    .line 964
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getChannelID()I

    move-result v0

    invoke-direct {p0, v0, v6, v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramAtTime(IJ)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 967
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    iput-boolean v3, v2, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 968
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 969
    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 971
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto/16 :goto_1

    .line 973
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_6

    .line 975
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getNextChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 976
    iget-wide v6, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 977
    iget-wide v8, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 978
    div-long/2addr v6, v4

    .line 979
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getNextChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getChannelID()I

    move-result v0

    invoke-direct {p0, v0, v6, v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramAtTime(IJ)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 981
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    iput-boolean v3, v2, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 982
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 983
    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto :goto_1

    .line 987
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 989
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_a

    .line 990
    :cond_8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->gotoPreviousDay(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    goto :goto_1

    .line 988
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->gotoNextDay(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 993
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 994
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    .line 996
    :cond_b
    :goto_2
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

    .line 205
    instance-of v0, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 209
    :cond_0
    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;

    .line 210
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->getCurrentEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;-><init>(Landroid/os/Parcelable;)V

    .line 198
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->setCurrentEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

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

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 251
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

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

    .line 256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V
    .locals 15
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

    move-object v0, p0

    .line 1015
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v1

    .line 1016
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1018
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getChannelID()I

    move-result v3

    .line 1019
    iget v4, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeBarHeight:I

    iget v5, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutHeight:I

    iget v6, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mChannelLayoutMargin:I

    add-int/2addr v6, v5

    mul-int v3, v3, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v3

    const/4 v6, 0x0

    if-ge v3, v1, :cond_0

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    :goto_0
    move v11, v3

    goto :goto_1

    :cond_0
    if-le v5, v2, :cond_1

    sub-int v3, v5, v2

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1029
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 1030
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramAreaWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 1031
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    const-wide/16 v7, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 1033
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-wide v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    sub-long/2addr v3, v1

    mul-long v3, v3, v7

    .line 1034
    iget-wide v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr v3, v1

    long-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1036
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 1037
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 1038
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v2

    iget-object v4, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xdbba00

    const-wide/16 v9, 0x6

    const-wide/32 v12, 0x1b77400

    cmp-long v14, v2, v4

    if-ltz v14, :cond_3

    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v2

    iget-object v4, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v12

    if-gtz v4, :cond_3

    .line 1039
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v1

    iget-object v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    mul-long v3, v3, v9

    add-long/2addr v1, v3

    .line 1040
    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1042
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 1043
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 1044
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v2

    iget-object v4, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v12

    if-lez v4, :cond_4

    .line 1045
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v1

    iget-object v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x8

    iget-wide v12, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    mul-long v12, v12, v3

    sub-long/2addr v1, v12

    .line 1046
    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1048
    :cond_4
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 1049
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 1050
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    cmp-long v12, v2, v4

    if-gez v12, :cond_5

    .line 1052
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    mul-long v3, v3, v9

    sub-long/2addr v1, v3

    .line 1053
    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1055
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    .line 1056
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no epg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1058
    iget-wide v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeUpperBoundary:J

    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getEnd()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    sub-long/2addr v1, v3

    mul-long v1, v1, v7

    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getStart()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mTimeLowerBoundary:J

    sub-long/2addr v3, v7

    iget-wide v7, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMargin:J

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 1059
    iget-wide v3, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mMillisPerPixel:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_6
    move v10, v1

    if-nez v10, :cond_7

    if-eqz v11, :cond_9

    .line 1063
    :cond_7
    iget-object v7, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getScrollY()I

    move-result v9

    if-eqz p2, :cond_8

    const/16 v6, 0x258

    const/16 v12, 0x258

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_9
    return-void
.end method

.method public recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedEvent",
            "withAnimation"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->resetBoundaries()V

    .line 780
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxVerticalScroll()V

    .line 781
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxHorizontalScroll()V

    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getXPositionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getTimeFrom(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramPosition(IJ)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    .line 797
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    :cond_1
    return-void
.end method

.method public recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;ZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedEvent",
            "withAnimation",
            "currentChannelPosition",
            "redraw"
        }
    .end annotation

    .line 804
    iget-object p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->hasData()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->resetBoundaries()V

    .line 807
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxVerticalScroll()V

    .line 808
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->calculateMaxHorizontalScroll()V

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->getProgramPosition(IJ)I

    move-result p4

    invoke-interface {p1, p3, p4}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;->getEvent(II)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    .line 824
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    :cond_1
    return-void
.end method

.method public redraw()V
    .locals 0

    .line 859
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->invalidate()V

    .line 860
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->requestLayout()V

    return-void
.end method

.method public selectEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V
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

    if-eqz p1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 885
    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    :cond_0
    const/4 v0, 0x1

    .line 887
    iput-boolean v0, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    .line 888
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->selectedEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 889
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->optimizeVisibility(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    .line 890
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->loadProgramDetails(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 894
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    :cond_1
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

    .line 912
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventLongDescription:Landroid/widget/TextView;

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

    .line 904
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventTextView:Landroid/widget/TextView;

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

    .line 908
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->currentEventTimeTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setEPGClickListener(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgClickListener"
        }
    .end annotation

    .line 733
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mClickListener:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;

    return-void
.end method

.method public setEPGData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgData"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->mergeEPGData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->epgData:Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    return-void
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

    .line 917
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->orientation:I

    .line 918
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 919
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->screenWidth:I

    .line 920
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->screenHeight:I

    return-void
.end method

.method public setProgramImageView(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aProgramImage"
        }
    .end annotation

    .line 899
    sput-object p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->programImage:Landroid/widget/ImageView;

    .line 900
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->updateImageCropping(Landroid/widget/ImageView;)V

    return-void
.end method
