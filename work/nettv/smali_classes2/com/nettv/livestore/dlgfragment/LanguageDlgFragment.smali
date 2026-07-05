.class public Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LanguageDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;
    }
.end annotation


# instance fields
.field public adapter:Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;

.field public btn_cancel:Landroid/widget/Button;

.field public btn_ok:Landroid/widget/Button;

.field public context:Landroid/content/Context;

.field public formatStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;

.field public recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

.field public selected_position:I

.field public txt_header:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$NNeg-evyApruG7syNV3IsRPtzLo(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QS98yEqR1VNwT_WQklenGCJUQUw(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$et_pxFeTexGW3k0SYVaczlIoavo(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->lambda$onCreateView$3(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h7wBLNEdEWDEyY2ugXyHHzxPHnE(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    invoke-interface {p1, v0}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;->onItemPosition(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x15

    const/4 p3, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_ok:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/List;ILcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;I",
            "Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;",
            ")",
            "Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->formatStrings:Ljava/util/List;

    .line 4
    iput p2, v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    .line 5
    iput-object p3, v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$ItemPositionListener;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    .locals 5

    const p3, 0x7f0e0061

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const p2, 0x7f0b0096

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_ok:Landroid/widget/Button;

    const p2, 0x7f0b0089

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_cancel:Landroid/widget/Button;

    const p2, 0x7f0b03d8

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->txt_header:Landroid/widget/TextView;

    const p2, 0x7f0b02e9

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_ok:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_cancel:Landroid/widget/Button;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->txt_header:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/WordModels;->getChange_language()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p2, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->formatStrings:Ljava/util/List;

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    new-instance v3, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-direct {p2, p3, v1, v2, v3}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->adapter:Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 13
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->adapter:Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->selected_position:I

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->recyclerTimes:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_ok:Landroid/widget/Button;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/LanguageDlgFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v4}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
