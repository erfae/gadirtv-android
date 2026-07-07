.class public Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SearchChannelDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;
    }
.end annotation


# instance fields
.field public addChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

.field public btn_back:Landroid/widget/ImageButton;

.field public categoryModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_pos:I

.field public channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public checkedItems:[Z

.field public epgChannels:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public et_search:Landroid/widget/EditText;

.field public handler:Landroid/os/Handler;

.field public is_m3u:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;

.field public ly_all:Landroid/widget/LinearLayout;

.field public ly_clear:Landroid/widget/LinearLayout;

.field public ly_complete:Landroid/widget/LinearLayout;

.field public myChannelNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public searchTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

.field public search_time:I

.field public str_clear:Landroid/widget/TextView;

.field public str_complete:Landroid/widget/TextView;

.field public txt_add:Landroid/widget/TextView;

.field public txt_category:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$_F0hbgr7h7HSTvMdwWNTuKy9jx0(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->lambda$searchTimer$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$cMV4AJwbd6Fkcg9TfVGZW0k_2mU(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fR1PqB6CQmuQ0d0VtDCnb08aqFs(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->lambda$onCreateView$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->is_m3u:Z

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->search_time:I

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchTimer()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b0231

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_all:Landroid/widget/LinearLayout;

    const v0, 0x7f0b023b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_clear:Landroid/widget/LinearLayout;

    const v0, 0x7f0b023c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_complete:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0088

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->btn_back:Landroid/widget/ImageButton;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_all:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_clear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->ly_complete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b012d

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0b00bb

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b03b7

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->txt_add:Landroid/widget/TextView;

    const v0, 0x7f0b03c0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->txt_category:Landroid/widget/TextView;

    const v0, 0x7f0b035a

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->str_clear:Landroid/widget/TextView;

    const v0, 0x7f0b035b

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->str_complete:Landroid/widget/TextView;

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->txt_add:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->txt_category:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSelect_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->str_clear:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getClear_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->str_complete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_confirm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 4
    :cond_1c
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_19

    const/16 p1, 0x13

    if-ne p2, p1, :cond_19

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$searchTimer$2()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->search_time:I

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchChannels()V

    return-void

    .line 3
    :cond_8
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->runNextTicker()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;Ljava/util/List;I)Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->categoryModelList:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    .line 4
    iput p2, v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->category_pos:I

    return-object v0
.end method

.method private runNextTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->search_time:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->search_time:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private searchChannels()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->categoryModelList:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->category_pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget-boolean v3, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->is_m3u:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    .line 4
    :goto_2d
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_50

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 6
    :cond_50
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->addChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {v0, v1, v2}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    return-void
.end method

.method private searchTimer()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->searchTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 2
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;->run()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_90

    goto/16 :goto_8e

    .line 2
    :sswitch_a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8e

    .line 3
    :goto_12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_33

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 6
    :cond_33
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->addChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    goto :goto_8e

    .line 7
    :sswitch_3d
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8e

    const/4 p1, 0x0

    .line 8
    :goto_46
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7a

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    aput-boolean v0, v1, p1

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 11
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    .line 12
    :cond_7a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->addChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->epgChannels:Ljava/util/AbstractList;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    goto :goto_8e

    .line 13
    :sswitch_84
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;->onSearchChannelNames(Ljava/util/List;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_8e
    :goto_8e
    return-void

    nop

    :sswitch_data_90
    .sparse-switch
        0x7f0b0088 -> :sswitch_84
        0x7f0b0231 -> :sswitch_3d
        0x7f0b023b -> :sswitch_a
        0x7f0b023c -> :sswitch_84
    .end sparse-switch
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

    const p3, 0x7f0e006b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    iput-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->is_m3u:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->initView(Landroid/view/View;)V

    new-array p2, v0, [Z

    .line 6
    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    .line 7
    new-instance p2, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->checkedItems:[Z

    new-instance v3, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/activities/LiveActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, v1, v2, v3}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[ZLkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->addChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    .line 8
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p2, p3, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p3, p2, v0

    .line 13
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$1;

    invoke-direct {v0, p2}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$1;-><init>([Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_7e

    .line 14
    :cond_70
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    :goto_7e
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->et_search:Landroid/widget/EditText;

    new-instance p3, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;

    invoke-direct {p3, p0}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$2;-><init>(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->et_search:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setOnSearchChannelListener(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;

    return-void
.end method
