.class public Lcom/nettv/livestore/activities/CatchUpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CatchUpActivity.java"


# instance fields
.field public catchUpEpgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field public catchupModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            ">;"
        }
    .end annotation
.end field

.field public channel_image:Landroid/widget/ImageView;

.field public channel_name:Landroid/widget/TextView;

.field public currentEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field public dateAdapter:Lcom/nettv/livestore/adapter/DateRecyclerAdapter;

.field public date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public date_pos:I

.field public epg_focus_pos:I

.field public epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public image_back:Landroid/widget/ImageButton;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

.field public program_pos:I

.field public progressBar:Landroid/widget/ProgressBar;

.field public selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

.field public simpleDateFormat:Ljava/text/SimpleDateFormat;

.field public txt_catch:Landroid/widget/TextView;

.field public weekFormat:Ljava/text/SimpleDateFormat;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$-kLwupHMoXPTqXjXmdSc_7oi9W4(Lcom/nettv/livestore/activities/CatchUpActivity;Lcom/nettv/livestore/models/CatchUpEpg;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CatchUpActivity;->lambda$onCreate$1(Lcom/nettv/livestore/models/CatchUpEpg;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KKQj--nZJVn3Ks3VtOL16ZSnA1Q(Lcom/nettv/livestore/activities/CatchUpActivity;Lcom/nettv/livestore/models/CatchupModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CatchUpActivity;->lambda$onCreate$0(Lcom/nettv/livestore/models/CatchupModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_7yd2hphTj6Wp35t1VdJO_FPJ_I(Lcom/nettv/livestore/activities/CatchUpActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpActivity;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_focus_pos:I

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->weekFormat:Ljava/text/SimpleDateFormat;

    .line 5
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/CatchUpActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpActivity;->getCatchupModels(Ljava/util/List;)V

    return-void
.end method

.method private getCatchupModels(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nettv/livestore/models/CatchUpEpg;

    add-int/2addr v5, v7

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 5
    invoke-virtual {v6}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    iget-object v8, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->weekFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 9
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 10
    new-instance v9, Lcom/nettv/livestore/models/CatchupModel;

    invoke-direct {v9}, Lcom/nettv/livestore/models/CatchupModel;-><init>()V

    .line 11
    invoke-virtual {v9, v2}, Lcom/nettv/livestore/models/CatchupModel;->setName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v9, v4}, Lcom/nettv/livestore/models/CatchupModel;->setDayofweek(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v9, v0}, Lcom/nettv/livestore/models/CatchupModel;->setEpgEvents(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->weekFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    move-object v0, v2

    move-object v2, v8

    .line 17
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 19
    new-instance v4, Lcom/nettv/livestore/models/CatchupModel;

    invoke-direct {v4}, Lcom/nettv/livestore/models/CatchupModel;-><init>()V

    .line 20
    invoke-virtual {v4, v2}, Lcom/nettv/livestore/models/CatchupModel;->setName(Ljava/lang/String;)V

    .line 21
    iget-object v6, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->weekFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v4, v6}, Lcom/nettv/livestore/models/CatchupModel;->setDayofweek(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v0}, Lcom/nettv/livestore/models/CatchupModel;->setEpgEvents(Ljava/util/List;)V

    .line 24
    iget-object v7, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    goto/16 :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpActivity;->getCurrentDatePosition(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->dateAdapter:Lcom/nettv/livestore/adapter/DateRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->setCatchupModels(Ljava/util/List;I)V

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchupModels:Ljava/util/ArrayList;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchupModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchupModel;->getEpgEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 31
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CatchUpEpg;->getNow_playing()I

    move-result v2

    if-ne v2, v7, :cond_4

    move v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-ne v1, p1, :cond_6

    .line 32
    iput v3, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    goto :goto_2

    .line 33
    :cond_6
    iput v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    .line 34
    :goto_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setProgramList(Ljava/util/List;)V

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 36
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    invoke-virtual {p1, v0, v3}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setFocusDisable(IZ)V

    .line 37
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setCurrentProgramPosition(I)V

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 39
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    goto :goto_3

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method

.method private getCurrentDatePosition(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/CatchupModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/CatchupModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getEpg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nettv/livestore/remote/RetroClass;->getAPIService(Ljava/lang/String;)Lcom/nettv/livestore/remote/APIService;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/nettv/livestore/remote/APIService;->get_full_epg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/nettv/livestore/activities/CatchUpActivity$1;

    invoke-direct {v2, p0}, Lcom/nettv/livestore/activities/CatchUpActivity$1;-><init>(Lcom/nettv/livestore/activities/CatchUpActivity;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->catchUpEpgList:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void
.end method

.method private goToLivePage()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_changed"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0b00ba

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0b00bc

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->channel_name:Landroid/widget/TextView;

    const v0, 0x7f0b00e5

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0124

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b03bf

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->txt_catch:Landroid/widget/TextView;

    const v0, 0x7f0b017b

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b02e2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01c5

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    new-instance v2, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array v0, v3, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 15
    iget-object v4, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v5, Lcom/nettv/livestore/activities/CatchUpActivity$2;

    invoke-direct {v5, v0}, Lcom/nettv/livestore/activities/CatchUpActivity$2;-><init>([Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    new-array v0, v3, [Landroid/view/View;

    aput-object v2, v0, v1

    .line 19
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Lcom/nettv/livestore/activities/CatchUpActivity$3;

    invoke-direct {v2, v0}, Lcom/nettv/livestore/activities/CatchUpActivity$3;-><init>([Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->txt_catch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getCatch_up()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpActivity;->goToLivePage()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/nettv/livestore/models/CatchupModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchupModel;->getEpgEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    const/4 p1, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CatchUpEpg;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/CatchUpEpg;->getNow_playing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    .line 5
    iput p3, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    goto :goto_1

    .line 6
    :cond_2
    iput v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setProgramList(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->program_pos:I

    invoke-virtual {p1, v0, p3}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setFocusDisable(IZ)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->setCurrentProgramPosition(I)V

    .line 11
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreate$1(Lcom/nettv/livestore/models/CatchUpEpg;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpg;->getHas_archive()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "position"

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "stream_id"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "epg_model"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p3, "This program can not be play"

    .line 8
    invoke-static {p0, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_focus_pos:I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_pos:I

    if-nez v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_focus_pos:I

    if-nez v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->currentEventList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpActivity;->goToLivePage()V

    return v2

    .line 17
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001d

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpActivity;->initView()V

    .line 7
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->channelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getEpgChannelByName(Ljava/lang/String;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->channel_name:Landroid/widget/TextView;

    const-string v0, ""

    .line 9
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f08010b

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->selectedChannel:Lcom/nettv/livestore/models/EPGChannel;

    .line 12
    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->channel_image:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->channel_image:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 19
    :goto_0
    new-instance p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/CatchUpActivity;I)V

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->dateAdapter:Lcom/nettv/livestore/adapter/DateRecyclerAdapter;

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->date_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    new-instance p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/CatchUpActivity;I)V

    invoke-direct {p1, p0, v0, v1}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->programAdapter:Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity;->epg_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpActivity;->getEpg()V

    return-void
.end method
