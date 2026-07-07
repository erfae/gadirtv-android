.class public Lcom/magoware/magoware/webtv/players/OsdBox;
.super Landroid/widget/LinearLayout;
.source "OsdBox.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private avenirBlack:Landroid/graphics/Typeface;

.field private avenirMedium:Landroid/graphics/Typeface;

.field private catchupLinear:Landroid/widget/LinearLayout;

.field private channelText:Landroid/widget/TextView;

.field private channel_icon:Landroid/widget/ImageView;

.field private channel_menu_btn:Landroid/widget/Button;

.field private channel_name:Landroid/widget/TextView;

.field private channel_number:Landroid/widget/TextView;

.field private currentProgramId:I

.field private current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private current_program:Ljava/lang/String;

.field private current_txt:Landroid/widget/TextView;

.field public description_linear_layout:Landroid/widget/LinearLayout;

.field public elapsedMillis:I

.field private epgLinear:Landroid/widget/LinearLayout;

.field private epgText:Landroid/widget/TextView;

.field public favoriteButton:Landroid/widget/Button;

.field private favoriteText:Landroid/widget/TextView;

.field private fromCall:Z

.field public handler:Landroid/os/Handler;

.field public info_button:Landroid/widget/Button;

.field public liveEpg:Ljava/lang/String;

.field private logChannel:Ljava/lang/String;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private next_txt:Landroid/widget/TextView;

.field private osd:Landroid/widget/LinearLayout;

.field public osd_buttons:Landroid/widget/LinearLayout;

.field private play_pause_:Landroid/widget/TextView;

.field public play_pause_btn:Landroid/widget/Button;

.field private programIdLog:Ljava/lang/String;

.field public program_description:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

.field private time:Landroid/widget/TextView;

.field private year:Landroid/widget/TextView;


# direct methods
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

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Black.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    const-string v0, "OsdBox "

    .line 82
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->TAG:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->initializeViews(Landroid/content/Context;)V

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

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Black.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v0, "fonts/Avenir-Medium.ttf"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    const-string p2, ""

    .line 77
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    const-string p2, "OsdBox "

    .line 82
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->TAG:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->initializeViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/Avenir-Black.ttf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/Avenir-Medium.ttf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    const-string p2, ""

    .line 77
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    const-string p2, "OsdBox "

    .line 82
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->TAG:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/OsdBox;->initializeViews(Landroid/content/Context;)V

    return-void
.end method

.method public static calculateProgressBarForCurrentProgram(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentProgramStart",
            "currentProgramEnd"
        }
    .end annotation

    .line 516
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v2, p0

    long-to-double p0, v2

    long-to-double v0, v0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private getChannelInfo()V
    .locals 10

    .line 399
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 404
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 405
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelInfoObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v7

    iget-object v8, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v9, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    invoke-virtual {v7, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getChannelOSDInfo()V
    .locals 10

    .line 296
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v3, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "GMT"

    .line 297
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 303
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelOSDObservable(I)Landroidx/lifecycle/LiveData;

    move-result-object v7

    iget-object v8, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v9, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$lmR9WPcw13Wd33F16dQUe4o5NQ4;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$lmR9WPcw13Wd33F16dQUe4o5NQ4;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    invoke-virtual {v7, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initializeViews(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "layout_inflater"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e019a

    .line 103
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private saveFavorite()V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->isFavoriteChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 492
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->updateFavoriteChannelObservable(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v3, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;

    invoke-direct {v3, p0, v0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$Z5e7wrfPFxufCDMWEeQJPitF96Y;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;I)V

    .line 493
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public checkAsFavorite()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->saveFavorite()V

    return-void
.end method

.method public getCurrentProgram()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProgramId()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->currentProgramId:I

    return v0
.end method

.method public synthetic lambda$getChannelInfo$7$OsdBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 420
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->title:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 419
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    .line 422
    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->id:I

    iput p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->currentProgramId:I

    return-void
.end method

.method public synthetic lambda$getChannelInfo$8$OsdBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    iget-object p2, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->title:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 450
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$getChannelInfo$9$OsdBox(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-eqz v12, :cond_9

    .line 407
    invoke-virtual/range {p6 .. p6}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_a

    .line 408
    iget-object v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 409
    iget-wide v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v3, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 411
    :try_start_0
    iget-object v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programstart:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 412
    iget-object v3, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programend:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 413
    iget-object v2, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->calculateProgressBarForCurrentProgram(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v14, 0xb

    .line 414
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "0"

    const/16 v7, 0xa

    const-string v6, ""

    if-ge v2, v7, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 415
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    const/16 v4, 0xc

    .line 416
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 417
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 418
    iget-object v2, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$dxDhYEi03UY0xV1f1m8cfIa975A;

    move-object/from16 p1, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object/from16 v2, p0

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v6, v16

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$dxDhYEi03UY0xV1f1m8cfIa975A;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    invoke-virtual {v14, v1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 439
    iget-object v1, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_a

    iget-object v1, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 440
    iget-object v1, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programstart:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 442
    iget-object v1, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programend:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    .line 444
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    const/16 v2, 0xb

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 445
    :goto_5
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    const/16 v1, 0xc

    .line 447
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 448
    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 450
    :goto_9
    iget-object v9, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v10, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    invoke-virtual {v9, v10}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_a

    .line 457
    :cond_8
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v1, 0x7f14030c

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_a

    .line 463
    :cond_9
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 464
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v3, 0x7f140309

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v7, 0x7f14034d

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v6, v5, v13

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {v1, v3}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {v4, v7}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v2, v3, v13

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :cond_a
    :goto_a
    return-void
.end method

.method public synthetic lambda$getChannelOSDInfo$3$OsdBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 317
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_program:Ljava/lang/String;

    .line 320
    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-wide p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->id:J

    long-to-int p2, p1

    iput p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->currentProgramId:I

    .line 321
    iget-object p1, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->liveEpg:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$getChannelOSDInfo$4$OsdBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    iget-object p2, p5, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 349
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 348
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$getChannelOSDInfo$5$OsdBox()V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14034d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string v3, "%s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 360
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->programIdLog:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$getChannelOSDInfo$6$OsdBox(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v15, 0x0

    const-string v6, ""

    if-eqz v12, :cond_a

    .line 305
    invoke-virtual/range {p6 .. p6}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b

    .line 306
    iget-object v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 307
    iget-wide v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v2, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 309
    :try_start_0
    iget-object v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 310
    iget-object v2, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    iget-object v2, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/OsdBox;->calculateProgressBarForCurrentProgram(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v5, 0xb

    .line 312
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 313
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    const/16 v2, 0xc

    .line 314
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v5, v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v5, v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 316
    iget-object v5, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$i6ExaI5Bj11YoJkr3VlkpyCoABI;

    move-object/from16 p1, v1

    move-object/from16 v1, p1

    const/16 v13, 0xc

    move-object/from16 v2, p0

    const/16 v14, 0xa

    move-object v3, v7

    move-object v7, v4

    move-object v4, v0

    move-object v0, v5

    const/16 v13, 0xb

    move-object v5, v15

    move-object v15, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v7

    const/4 v14, 0x1

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$i6ExaI5Bj11YoJkr3VlkpyCoABI;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v14, :cond_8

    iget-object v0, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 339
    iget-object v0, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 340
    iget-object v0, v12, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 342
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    move-object/from16 v1, v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 343
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/16 v0, 0xc

    .line 345
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const/16 v2, 0xc

    goto :goto_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 346
    :goto_7
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 348
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v9, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$sGUS6tcIRvzUEKHRxfYJh79yzII;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$sGUS6tcIRvzUEKHRxfYJh79yzII;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    invoke-virtual {v0, v9}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 351
    :cond_8
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14034d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_9

    .line 357
    :cond_9
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$NG470fDh9r81xTH-7ja7hlDmoCc;

    invoke-direct {v1, v8}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$NG470fDh9r81xTH-7ja7hlDmoCc;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_a
    move-object v15, v6

    const/4 v14, 0x1

    .line 377
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v2, 0x7f140309

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v5, 0x7f14034d

    invoke-virtual {v3, v5}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    iget-object v3, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v3, v4, v14

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const v4, 0x7f14034d

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->liveEpg:Ljava/lang/String;

    .line 381
    iput-object v15, v8, Lcom/magoware/magoware/webtv/players/OsdBox;->programIdLog:Ljava/lang/String;

    :cond_b
    :goto_9
    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$OsdBox(Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$OsdBox(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->checkAsFavorite()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$OsdBox(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06008e

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteText:Landroid/widget/TextView;

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$saveFavorite$10$OsdBox(ILcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p2, p2, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 497
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget p2, p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->updateFavoriteChannel(II)V

    .line 499
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->favorite_channel:Ljava/lang/String;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 502
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    const p2, 0x7f080282

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 503
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const p2, 0x7f1403b6

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    const p2, 0x7f080281

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 506
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const p2, 0x7f14036d

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const-string p2, "Can\'t make favorite"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public loadChannelIcon()V
    .locals 3

    .line 225
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 226
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f080347

    .line 227
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 229
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_icon:Landroid/widget/ImageView;

    .line 232
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 110
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/activities/CustomActivity;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    .line 111
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->handler:Landroid/os/Handler;

    .line 115
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b050f

    .line 116
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    .line 117
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b04ca

    .line 119
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd:Landroid/widget/LinearLayout;

    const v0, 0x7f0b015d

    .line 120
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_name:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b015f

    .line 122
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_number:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b01be

    .line 124
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b04ab

    .line 126
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b0162

    .line 128
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0158

    .line 129
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_icon:Landroid/widget/ImageView;

    const v0, 0x7f0b065d

    .line 130
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->time:Landroid/widget/TextView;

    const v0, 0x7f0b070c

    .line 131
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->year:Landroid/widget/TextView;

    const v0, 0x7f0b04cc

    .line 132
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0291

    .line 133
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    const v0, 0x7f0b04fc

    .line 134
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$ezqkOYGhnUPupcrong9cqqrnZAM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$ezqkOYGhnUPupcrong9cqqrnZAM;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01ec

    .line 136
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0352

    .line 137
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->info_button:Landroid/widget/Button;

    goto/16 :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01d3

    .line 141
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    const v0, 0x7f0b04c9

    .line 143
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd:Landroid/widget/LinearLayout;

    const v0, 0x7f0b015c

    .line 144
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_name:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b015e

    .line 146
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_number:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirBlack:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b01bd

    .line 148
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b04aa

    .line 150
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b0161

    .line 152
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0156

    .line 153
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_icon:Landroid/widget/ImageView;

    const v0, 0x7f0b065c

    .line 154
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->time:Landroid/widget/TextView;

    const v0, 0x7f0b070b

    .line 155
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->year:Landroid/widget/TextView;

    const v0, 0x7f0b04fa

    .line 156
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_:Landroid/widget/TextView;

    const v0, 0x7f0b0246

    .line 157
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->epgText:Landroid/widget/TextView;

    const v0, 0x7f0b0163

    .line 158
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channelText:Landroid/widget/TextView;

    const v0, 0x7f0b0292

    .line 159
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteText:Landroid/widget/TextView;

    const v0, 0x7f0b04cb

    .line 160
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0290

    .line 161
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    const v0, 0x7f0b04fb

    .line 162
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    const v0, 0x7f0b0353

    .line 163
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->info_button:Landroid/widget/Button;

    const v0, 0x7f0b0510

    .line 164
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->program_description:Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b01ed

    .line 166
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->description_linear_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b015a

    .line 167
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_menu_btn:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$wmoZM55iaGtSK1GIl4o1giiYtME;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$wmoZM55iaGtSK1GIl4o1giiYtME;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$b2Y-pA6mU4SvL8hQvd4LSUg1zwI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$b2Y-pA6mU4SvL8hQvd4LSUg1zwI;-><init>(Lcom/magoware/magoware/webtv/players/OsdBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0143

    .line 177
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->catchupLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0243

    .line 178
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->epgLinear:Landroid/widget/LinearLayout;

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->setupVisibilities()V

    return-void
.end method

.method public setCurrent_playing_channel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_playing_channel"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-void
.end method

.method public setElapsedMillis(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMillis"
        }
    .end annotation

    .line 203
    iput p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->elapsedMillis:I

    return-void
.end method

.method public setFromCall(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromCall"
        }
    .end annotation

    .line 191
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->fromCall:Z

    return-void
.end method

.method public setLogChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logChannel"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->logChannel:Ljava/lang/String;

    return-void
.end method

.method public setupOsdData(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "with_osd_buttons"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v0, :cond_8

    .line 238
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->loadChannelIcon()V

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_txt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->next_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->initUtil()V

    .line 245
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->time:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->year:Landroid/widget/TextView;

    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->dd_MMM_yyy:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getChannelOSDInfo()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getChannelInfo()V

    :goto_0
    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 252
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_mode:Ljava/lang/String;

    const-string v2, "live"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-nez p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 261
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-nez p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->current_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->isFavoriteChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080282

    goto :goto_2

    :cond_3
    const v0, 0x7f080281

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 268
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->thisActivity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 273
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 274
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->play_pause_:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 275
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->catchupLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_3

    .line 277
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->epgText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    .line 278
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->epgLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_3

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->osd_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setupVisibilities()V
    .locals 6

    .line 207
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VIALA:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VIALA:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteButton:Landroid/widget/Button;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteText:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 211
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->favoriteText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_menu_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channelText:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/16 v3, 0x8

    .line 215
    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channelText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_7
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channel_menu_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/OsdBox;->channelText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method
