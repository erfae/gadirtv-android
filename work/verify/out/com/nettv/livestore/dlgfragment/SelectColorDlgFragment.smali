.class public Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SelectColorDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;
    }
.end annotation


# instance fields
.field public backgroundColors:[Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public is_subtitle_color:Z

.field public listener:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public selected_position:I

.field public subtitleColors:[Ljava/lang/String;

.field public txt_header:Landroid/widget/TextView;

.field public txt_subtitle:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$IzzBo4rYkx6K62w5e-574GjM4S0(Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wPmw53y3EvMORqfXTLalru89X6E(Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->lambda$onCreateView$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->selected_position:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

    .line 4
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 6

    const v0, 0x7f0b03d8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_header:Landroid/widget/TextView;

    const v0, 0x7f0b03fc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    const v0, 0x7f0b02ed

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p1, :cond_4b

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p1, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$1;

    invoke-direct {v1, p1}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$1;-><init>([Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_5c

    .line 9
    :cond_4b
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 11
    :goto_5c
    iget-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

    if-eqz p1, :cond_6c

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_header:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitel_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_77

    .line 13
    :cond_6c
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_header:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitel_background()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_77
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->selected_position:I

    .line 3
    iget-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

    if-eqz p2, :cond_2f

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->subtitleColors:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->subtitleColors:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleColor(Ljava/lang/String;)V

    goto :goto_4d

    .line 6
    :cond_2f
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->backgroundColors:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->backgroundColors:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleBgColor(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
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
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;

    invoke-interface {p1}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;->onChangeColor()V

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance(Landroid/content/Context;Z)Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    .line 3
    iput-boolean p1, v0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

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
    .registers 7

    const p3, 0x7f0e006c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->initView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030002

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->subtitleColors:[Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030001

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->backgroundColors:[Ljava/lang/String;

    .line 7
    iget-boolean p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

    if-eqz p3, :cond_45

    .line 8
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->subtitleColors:[Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getSubtitleColorPosition(Landroid/content/Context;[Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->selected_position:I

    goto :goto_4d

    .line 9
    :cond_45
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->context:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getSubtitleBgColorPosition(Landroid/content/Context;[Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->selected_position:I

    .line 10
    :goto_4d
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->txt_subtitle:Landroid/widget/TextView;

    const/4 p3, 0x3

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    new-instance p2, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;

    iget-boolean p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->is_subtitle_color:Z

    if-eqz p3, :cond_81

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->subtitleColors:[Ljava/lang/String;

    goto :goto_83

    :cond_81
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->backgroundColors:[Ljava/lang/String;

    :goto_83
    iget v0, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->selected_position:I

    new-instance v1, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-direct {p2, p3, v0, v1}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;-><init>([Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    .line 14
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->recycler_colors:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p3, p0, v0}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public setOnChangeColorListener(Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;

    return-void
.end method
