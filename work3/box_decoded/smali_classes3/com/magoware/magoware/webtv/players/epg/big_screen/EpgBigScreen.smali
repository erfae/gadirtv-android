.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "EpgBigScreen.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;
    }
.end annotation


# static fields
.field private static final CHANNEL_LIST_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "EpgBigScreen"


# instance fields
.field private bus:Lde/greenrobot/event/EventBus;

.field private channelNumbers:[I

.field private clicked_channel:I

.field private currentChannelPosition:I

.field private currentTimeFormat:Ljava/text/SimpleDateFormat;

.field private currentTimeTextView:Landroid/widget/TextView;

.field private current_category_id:I

.field private current_channel_nr:I

.field private devEnterCounter:I

.field private devMode:Z

.field dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

.field private epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

.field epgDataListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

.field private firstShownChannelPosition:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private periodicTaskHandler:Landroid/os/Handler;

.field private programImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devEnterCounter:I

    .line 50
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devMode:Z

    .line 52
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentChannelPosition:I

    .line 53
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    .line 54
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_category_id:I

    const/4 v1, 0x1

    .line 55
    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_channel_nr:I

    .line 56
    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->clicked_channel:I

    .line 57
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->bus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->periodicTaskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getProgramImageView()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0b0511

    .line 85
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private scheduleEpgEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->scheduleProgramObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$HQYGi51IRPiPSe4GBJ63D3UmGXA;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$HQYGi51IRPiPSe4GBJ63D3UmGXA;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setLayout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setOrientation(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setUpInitialVariables()V
    .locals 4

    .line 162
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->CURRENT_CATEGORY_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_category_id:I

    .line 163
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_CHANNEL_NUMBER"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_channel_nr:I

    .line 165
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_category_id:I

    invoke-static {v0, v3}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllChannelNumbers(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 167
    iget v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->current_channel_nr:I

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    .line 168
    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentChannelPosition:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    .line 89
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 92
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 94
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v2, v2, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v2, v2, v1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public closeEpg()V
    .locals 4

    .line 253
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BACKPRESSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->finish()V

    return-void
.end method

.method public synthetic lambda$scheduleEpgEvent$1$EpgBigScreen(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 326
    iget p2, p2, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isScheduled()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setScheduled(Z)V

    .line 328
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p2, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->selectEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Z)V

    .line 329
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isScheduled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setScheduled(Z)V

    .line 330
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    .line 331
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->updateTime()V

    .line 332
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isScheduled()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f14039b

    .line 333
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const p1, 0x7f14045f

    .line 335
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const p1, 0x7f140053

    .line 337
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showEventInfo$0$EpgBigScreen(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 16

    move-object/from16 v0, p2

    if-eqz v0, :cond_5

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/Server;->imagesServer:Ljava/lang/String;

    const-string v3, "~"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->channel_icon:Ljava/lang/String;

    .line 275
    iget-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    iget-object v1, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->status:Ljava/lang/String;

    .line 277
    iget-object v3, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->genre:Ljava/lang/String;

    .line 278
    iget-object v4, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_title:Ljava/lang/String;

    .line 279
    iget-object v5, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_description:Ljava/lang/String;

    .line 280
    iget-object v6, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->scheduled:Ljava/lang/String;

    .line 281
    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    iget-object v2, v0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->has_catchup:Ljava/lang/String;

    move-object v12, v1

    move-object v14, v2

    move-object v9, v4

    move-object v11, v5

    goto :goto_0

    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v9, v6

    move-object v11, v9

    move-object v12, v11

    move-object v14, v12

    .line 285
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual/range {p0 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->onEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_1

    :cond_1
    if-eqz v12, :cond_5

    const-string v0, "catchup"

    .line 289
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v10, v3

    move-object v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->showProgramInfoDialog(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "future"

    .line 291
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v10, v3

    move-object v13, v6

    invoke-virtual/range {v7 .. v15}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->showProgramInfoDialog(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isCurrent()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "live"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getLongDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v8

    const-string v5, "live"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v14

    invoke-virtual/range {v0 .. v8}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->showProgramInfoDialog(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public loadMoreChannels(Landroid/view/KeyEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-string v1, ","

    const/4 v2, 0x1

    const-string v3, ""

    const/16 v4, 0x14

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_0

    .line 232
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    :goto_0
    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v4, 0x13

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    if-lez v0, :cond_2

    .line 236
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    :goto_1
    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    if-ltz v0, :cond_1

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    aget v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;-><init>(Landroid/app/Activity;)V

    .line 244
    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->setGoToLiveNowEvent(Z)V

    .line 245
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->requestByChannels(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_2

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->releaseKeys()V

    :goto_2
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

    .line 188
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setLayout(I)V

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

    .line 101
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0096

    .line 102
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setContentView(I)V

    .line 104
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/magoware/magoware/webtv/global/Global;->shouldShowEPG:Z

    if-nez p1, :cond_0

    const p1, 0x7f140337

    const/4 v0, 0x1

    .line 105
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 106
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->finish()V

    .line 108
    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setUpInitialVariables()V

    const p1, 0x7f0b023e

    .line 111
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    .line 112
    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEpgLoadMoreListener(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGMethodsListener;)V

    .line 113
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEpgViewHours(I)V

    .line 114
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setChannelListSize(I)V

    .line 115
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getProgramImageView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->programImage:Landroid/widget/ImageView;

    .line 116
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentChannelPosition:I

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setCurrentChannelPosition(I)V

    const p1, 0x7f0b01bc

    .line 118
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentTimeTextView:Landroid/widget/TextView;

    const p1, 0x7f0b01b8

    .line 119
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0b01ba

    .line 120
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01b9

    .line 121
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setCurrentEventTextView(Landroid/widget/TextView;)V

    .line 124
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setCurrentEventTimeTextView(Landroid/widget/TextView;)V

    .line 125
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setCurrentEventLongDescription(Landroid/widget/TextView;)V

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->periodicTaskHandler:Landroid/os/Handler;

    .line 129
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;)V

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEPGClickListener(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setUpInitialEpgView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->clearEPGImageCache()V

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelNumber()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->finish()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 349
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelNumber()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 351
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->finish()V

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->scheduleEpgEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 356
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->program_ID:Ljava/lang/String;

    .line 358
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelNumber()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->openCatchupFromEpg()V

    :cond_4
    :goto_0
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

    .line 62
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->updateTime()V

    .line 64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    .line 65
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devEnterCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devEnterCounter:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devMode:Z

    .line 68
    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devEnterCounter:I

    goto :goto_0

    .line 71
    :cond_0
    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->devEnterCounter:I

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 76
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 174
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->periodicTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$TaskRunnable;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen$1;)V

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setLayout(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->bus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->periodicTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public openCatchupFromEpg()V
    .locals 4

    .line 258
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CATCHUP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->finish()V

    return-void
.end method

.method public setUpInitialEpgView()V
    .locals 5

    .line 194
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    .line 198
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->currentChannelPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    .line 199
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    const-string v1, ""

    :goto_0
    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->firstShownChannelPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->getChannelListSize()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->channelNumbers:[I

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->epgDataListener:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->requestByChannels(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 204
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->setLayout(I)V

    .line 205
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->updateTime()V

    return-void
.end method

.method public showEventInfo(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getEpgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getPopupProgramInfoObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public showProgramInfoDialog(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
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

    move-object/from16 v6, p5

    move-object/from16 v1, p6

    const-string v2, "future"

    .line 303
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "true"

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 304
    iput v2, v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->clicked_channel:I

    const-string v2, "false"

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v7, p7

    goto :goto_2

    .line 307
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p7

    goto :goto_1

    :cond_2
    const-string v1, "catchup"

    .line 311
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v7, p7

    .line 312
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f140397

    .line 313
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, ""

    goto :goto_2

    :cond_4
    move-object/from16 v7, p7

    const v1, 0x7f140399

    .line 316
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .line 318
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p1

    invoke-static/range {v1 .. v9}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->newInstance(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->dialog:Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;

    const-string v2, "check_parental_control_frag"

    .line 320
    invoke-virtual {v1, v10, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
