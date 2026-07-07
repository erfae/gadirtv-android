.class public Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ClearHistoryDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

.field public btn_all:Landroid/widget/Button;

.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public checkedItems:[Z

.field public context:Landroid/content/Context;

.field public id:I

.field public recent_names:[Ljava/lang/String;

.field public recentlyNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

.field public resumeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeModel;",
            ">;"
        }
    .end annotation
.end field

.field public resumeSeriesModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeSeriesModel;",
            ">;"
        }
    .end annotation
.end field

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public txt_header:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$D0iLD9AzNJDnHH5elBqmmWjmG9Y()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->lambda$setRecentSeries$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$i67O_pLHaWizcwRi4VupWgwWRMs(Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oKFqblKpA821WZcH9kGyTU9D_uA()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->lambda$clearRecentSeriesFromRealm$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qif78BeycSwakey_pVw61Ev8Vbw()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->lambda$setProToVod$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$sutT_Uo-Lqy-u0KbhyAtA2GL9iY()V
    .registers 0

    invoke-static {}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->lambda$clearRecentMoviesFromRealm$1()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private clearRecentMoviesFromRealm()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeModel;

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$25:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual/range {v2 .. v9}, Lcom/nettv/livestore/helper/RealmController;->addPositionToMovies(Ljava/lang/String;Ljava/lang/String;ZJILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_6

    :cond_28
    return-void
.end method

.method private clearRecentSeriesFromRealm()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeSeriesModel;

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$27:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual/range {v2 .. v7}, Lcom/nettv/livestore/helper/RealmController;->addToRecentSeries(Ljava/lang/String;ZIILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_6

    :cond_23
    return-void
.end method

.method private getSeriesResumeModels()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeSeriesModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/ResumeSeriesModel;

    .line 4
    invoke-virtual {v4}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_37
    return-object v0
.end method

.method private getVodResumeModels()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/ResumeModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/ResumeModel;

    .line 4
    invoke-virtual {v4}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_37
    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b03d8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->txt_header:Landroid/widget/TextView;

    const v0, 0x7f0b02e9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0096

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_ok:Landroid/widget/Button;

    const v0, 0x7f0b0089

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    const v0, 0x7f0b0086

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_all:Landroid/widget/Button;

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_all:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$clearRecentMoviesFromRealm$1()V
    .registers 0

    return-void
.end method

.method private static synthetic lambda$clearRecentSeriesFromRealm$2()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_45

    .line 4
    :cond_28
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$setProToVod$3()V
    .registers 0

    return-void
.end method

.method private static synthetic lambda$setRecentSeries$4()V
    .registers 0

    return-void
.end method

.method public static newInstance(Landroid/content/Context;I)Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->id:I

    return-object v0
.end method

.method private setProToVod()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceResumeModel()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeModel;

    .line 4
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getLast_position()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getPro()I

    move-result v8

    sget-object v9, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$24:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual/range {v2 .. v9}, Lcom/nettv/livestore/helper/RealmController;->addPositionToMovies(Ljava/lang/String;Ljava/lang/String;ZJILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_10

    :cond_37
    return-void
.end method

.method private setRecentSeries()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceRecentSeriesNames()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeSeriesModel;

    .line 3
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getSeason_pos()I

    move-result v5

    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getEpisode_pos()I

    move-result v6

    sget-object v7, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$26:Lio/realm/Realm$$ExternalSyntheticLambda0;

    invoke-virtual/range {v2 .. v7}, Lcom/nettv/livestore/helper/RealmController;->addToRecentSeries(Ljava/lang/String;ZIILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_a

    :cond_2d
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0086

    const/4 v1, 0x1

    if-eq p1, v0, :cond_44

    const v0, 0x7f0b0089

    if-eq p1, v0, :cond_40

    const v0, 0x7f0b0096

    if-eq p1, v0, :cond_15

    goto :goto_6d

    .line 2
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->id:I

    if-eq p1, v1, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    goto :goto_6d

    .line 4
    :cond_20
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->getSeriesResumeModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceRecentSeriesNames(Ljava/util/List;)V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->clearRecentSeriesFromRealm()V

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->setRecentSeries()V

    goto :goto_6d

    .line 7
    :cond_30
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->getVodResumeModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceResumeModel(Ljava/util/List;)V

    .line 8
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->clearRecentMoviesFromRealm()V

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->setProToVod()V

    goto :goto_6d

    .line 10
    :cond_40
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_6d

    .line 11
    :cond_44
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_5c

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;->allChecked(Z)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    goto :goto_6d

    .line 14
    :cond_5c
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;->allChecked(Z)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const p3, 0x7f0e0060

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 5
    iget p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->id:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p3, :cond_3b

    if-eq p3, v1, :cond_31

    if-eq p3, v2, :cond_27

    goto :goto_44

    .line 6
    :cond_27
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->txt_header:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getClear_series_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 7
    :cond_31
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->txt_header:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getClear_movie_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 8
    :cond_3b
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->txt_header:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getClear_channel_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_44
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_all:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getSelect_all()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->id:I

    if-eq p2, v1, :cond_c1

    if-eq p2, v2, :cond_6d

    goto/16 :goto_115

    .line 13
    :cond_6d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceRecentSeriesNames()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->checkedItems:[Z

    .line 18
    :goto_95
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_115

    .line 19
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeSeriesModels:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/ResumeSeriesModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 21
    :cond_c1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    .line 23
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceResumeModel()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    .line 25
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->checkedItems:[Z

    .line 26
    :goto_e9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_115

    .line 27
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recentlyNames:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/ResumeModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->resumeModels:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/ResumeModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    .line 29
    :cond_115
    :goto_115
    new-instance p2, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recent_names:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->checkedItems:[Z

    new-instance v4, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-direct {p2, p3, v0, v3, v4}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[ZLkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    .line 30
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 32
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->recyclerGroups:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/ClearHistoryDlgFragment;->adapter:Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method
