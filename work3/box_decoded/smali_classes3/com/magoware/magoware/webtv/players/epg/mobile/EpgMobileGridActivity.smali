.class public Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "EpgMobileGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;
    }
.end annotation


# static fields
.field public static ScreenSize:Landroid/graphics/Point; = null

.field public static channel_icon2:Ljava/lang/String; = null

.field public static clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject; = null

.field static currentChannelPosition:I = 0x0

.field public static current_category_id:I = 0x0

.field private static dateFormat:Ljava/text/SimpleDateFormat; = null

.field static epgDataListener:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener; = null

.field public static is_adult_content:Z = true

.field private static nowFormat:Ljava/text/SimpleDateFormat;

.field public static openCatchUp:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private channelNumbers:[I

.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannelNumber:I

.field private currentEventLongDescription:Landroid/widget/TextView;

.field private currentEventTextView:Landroid/widget/TextView;

.field private currentEventTimeTextView:Landroid/widget/TextView;

.field private currentTimeFormat:Ljava/text/SimpleDateFormat;

.field private currentTimeTextView:Landroid/widget/TextView;

.field private devEnterCounter:I

.field private devMode:Z

.field dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

.field private epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

.field private epgService:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

.field private filter_epg_by_channels:Z

.field public genre:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public has_catchup:Ljava/lang/String;

.field private id_stream:Ljava/lang/String;

.field private isEpgClicked:Z

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mobileEpgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

.field private periodicTaskHandler:Landroid/os/Handler;

.field private playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private programImage:Landroid/widget/ImageView;

.field public program_ID:Ljava/lang/String;

.field public program_description:Ljava/lang/String;

.field public program_scheduled:Ljava/lang/String;

.field public program_status:Ljava/lang/String;

.field public program_title:Ljava/lang/String;

.field private progress_dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->nowFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devEnterCounter:I

    .line 70
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devMode:Z

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->filter_epg_by_channels:Z

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->handler:Landroid/os/Handler;

    .line 91
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentChannelNumber:I

    const-string v1, "EpgMobileGridActivity "

    .line 93
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->TAG:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->isEpgClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->isEpgClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->isEpgClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->mobileEpgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->mobileEpgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->id_stream:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->id_stream:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->progress_dialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->updateTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->periodicTaskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getProgramImageView()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b0511

    .line 129
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private initView()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channelNumbers:[I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    aput v3, v2, v1

    .line 292
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentChannelNumber:I

    if-ne v2, v3, :cond_0

    .line 293
    sput v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentChannelPosition:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->filter_epg_by_channels:Z

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgService:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    sget-object v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channelNumbers:[I

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->getDataInitial(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V

    .line 298
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgService:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    sget-object v5, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    const/4 v6, 0x0

    const/16 v7, -0x78

    const/16 v8, 0x78

    iget-object v10, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channelNumbers:[I

    sget v11, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentChannelPosition:I

    const-string v9, "100,200,201,250,254"

    invoke-virtual/range {v4 .. v11}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->getData(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIILjava/lang/String;[II)V

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->setLayout(I)V

    .line 301
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->updateTime()V

    return-void
.end method

.method private setLayout(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setOrientation(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventLongDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 313
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 314
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v9, 0x3fa999999999999aL    # 0.05

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 315
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {p1, v4, v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v7, 0x3fdeb851eb851eb8L    # 0.48

    mul-double v3, v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 319
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-double v7, v4

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 320
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {p1, v7, v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 322
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventLongDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double v1, v1, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateImageCropping(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 136
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 137
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 139
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v2, v2, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v2, v2, v1

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 124
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 261
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$newEventCondition$0$EpgMobileGridActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 404
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 405
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->mobileEpgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    iget-boolean v0, p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->scheduled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setScheduled(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f140053

    .line 407
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public newEventCondition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventCondition",
            "epgId"
        }
    .end annotation

    const-string v0, "live"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 400
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setVisibility(I)V

    .line 401
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "future"

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->id_stream:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->scheduleProgramObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$3EmLFEc4a3q4nhowKyFmQrnuX1I;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$3EmLFEc4a3q4nhowKyFmQrnuX1I;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const-string v0, "catchup"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 411
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setVisibility(I)V

    const/4 p1, 0x1

    .line 412
    sput-boolean p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->openCatchUp:Z

    .line 413
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "programId"

    .line 414
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    sget-object p2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget p2, p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    const-string v0, "channelNumberCatchup"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 416
    invoke-virtual {p0, p2, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 417
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 266
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->setLayout(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 150
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CURRENT_CHANNEL_NUMBER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentChannelNumber:I

    .line 151
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->CURRENT_CATEGORY_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->current_category_id:I

    .line 152
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    const-class v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sput-boolean v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->openCatchUp:Z

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->requestWindowFeature(I)Z

    .line 155
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 156
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f0e002c

    .line 157
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->setContentView(I)V

    .line 158
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->ScreenSize:Landroid/graphics/Point;

    .line 159
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->ScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->ScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->ScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 162
    sget v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->current_category_id:I

    if-nez v0, :cond_0

    .line 163
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->is_adult_content:Z

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_0
    sget-boolean v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->is_adult_content:Z

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channels:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->channelNumbers:[I

    const v0, 0x7f0b023e

    .line 166
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    .line 167
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    .line 168
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getProgramImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->programImage:Landroid/widget/ImageView;

    .line 169
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setProgramImageView(Landroid/widget/ImageView;)V

    const v0, 0x7f0b01bc

    .line 171
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f0b01b8

    .line 172
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTextView:Landroid/widget/TextView;

    const v0, 0x7f0b01ba

    .line 173
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f0b01b9

    .line 174
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventLongDescription:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setCurrentEventTextView(Landroid/widget/TextView;)V

    .line 176
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setCurrentEventTimeTextView(Landroid/widget/TextView;)V

    .line 177
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->currentEventLongDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setCurrentEventLongDescription(Landroid/widget/TextView;)V

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->periodicTaskHandler:Landroid/os/Handler;

    .line 180
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setEPGClickListener(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;)V

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADULT_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->is_adult_content:Z

    .line 231
    new-instance p1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    sget v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->current_category_id:I

    invoke-direct {p1, p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgService:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    .line 233
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->initView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->clearEPGImageCache()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epgService:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->activityFinish()V

    .line 339
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
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

    .line 100
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->updateTime()V

    .line 101
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 105
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devEnterCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devEnterCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 107
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devMode:Z

    .line 108
    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devEnterCounter:I

    goto :goto_0

    .line 111
    :cond_1
    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devEnterCounter:I

    .line 114
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->devMode:Z

    if-eqz v0, :cond_3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 120
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0098

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 238
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    const/4 v0, 0x0

    .line 239
    sput-boolean v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->defaultOrExo:Z

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 247
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStart()V

    .line 248
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->periodicTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$TaskRunnable;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;)V

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->setLayout(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    .line 256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->periodicTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 272
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public showProgramInfoDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "genre",
            "desc",
            "displayButton",
            "scheduled",
            "has_catchup",
            "ID"
        }
    .end annotation

    move-object v0, p0

    move-object v6, p4

    move-object/from16 v1, p5

    const-string v2, "future"

    .line 360
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "true"

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 361
    sput-object v2, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->clicked_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    const-string v2, "false"

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v7, p6

    goto :goto_2

    .line 364
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p6

    goto :goto_1

    :cond_2
    const-string v1, "catchup"

    .line 368
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v7, p6

    .line 369
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f140397

    .line 370
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, ""

    goto :goto_2

    :cond_4
    move-object/from16 v7, p6

    const v1, 0x7f140399

    .line 373
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .line 376
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 378
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 379
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->newInstance(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    .line 380
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-nez v1, :cond_6

    .line 381
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->setCancelable(Z)V

    .line 382
    :cond_6
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    const-string v2, "check_parental_control_frag"

    invoke-virtual {v1, v10, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
