.class public Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "EpisodeDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;
    }
.end annotation


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;

.field public btn_close:Landroid/widget/ImageButton;

.field public episodeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public episode_pos:I

.field public listener:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;

.field public recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

.field public season_pos:I

.field public str_episodes:Landroid/widget/TextView;

.field public txt_see_all:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$3s1Cd4n0q-aU3V-bneJ6ShQo6r4(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->lambda$initView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q_TNe1QWn9OOYEuWQLGy5g0xMCk(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->lambda$initView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WxLEqQ_ER9X79rFMNvWK-zefMIc(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->lambda$onCreateView$0(Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eJGtsOsI6I6aUM7QQmiqSJdKUoQ(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0b0360

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->str_episodes:Landroid/widget/TextView;

    const v0, 0x7f0b03f6

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    const v0, 0x7f0b008b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->btn_close:Landroid/widget/ImageButton;

    const v0, 0x7f0b02ef

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->str_episodes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_more_episodes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSee_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->btn_close:Landroid/widget/ImageButton;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const v0, 0x7f0602f5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->btn_close:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2f

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->btn_close:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060084

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return v1

    .line 5
    :cond_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_45

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->btn_close:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$initView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const v0, 0x7f06007f

    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2f

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060084

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return v1

    .line 5
    :cond_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_4a

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->txt_see_all:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;->OnSeeAllEpisodes()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_4a
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreateView$0(Lcom/nettv/livestore/models/EpisodeModel;Ljava/lang/Integer;)Lkotlin/Unit;
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;->OnEpisodeSelected(Lcom/nettv/livestore/models/EpisodeModel;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_12

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Ljava/util/List;II)Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;II)",
            "Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->episodeModels:Ljava/util/List;

    .line 3
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->season_pos:I

    .line 4
    iput p2, v0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->episode_pos:I

    return-object v0
.end method


# virtual methods
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
    .registers 11

    const p3, 0x7f0e005c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 3
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->initView(Landroid/view/View;)V

    .line 4
    new-instance p2, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->episodeModels:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->season_pos:I

    iget v5, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->episode_pos:I

    new-instance v6, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IILkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->adapter:Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->adapter:Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    iget p3, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->episode_pos:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->recycler_episodes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setOnEpisodeItemListener(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;

    return-void
.end method
