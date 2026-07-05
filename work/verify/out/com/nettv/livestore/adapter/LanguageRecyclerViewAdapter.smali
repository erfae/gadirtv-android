.class public Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LanguageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public category_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field public checked_pos:I

.field public clickFunctionListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iyi8w1t_mISOT-4vJGIGX0pKJ3Y(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBlgCWunYRJeGY6JQiHZZ7GF1AQ(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->category_data:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    .line 4
    iput-object p4, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p2, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_b

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f080193

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_13

    .line 2
    :cond_b
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f060085

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->category_data:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;I)V
    .registers 6
    .param p1    # Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->category_data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/LanguageModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/LanguageModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    iget v1, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    if-ne v1, p2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6
    iget v0, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->checked_pos:I

    if-ne v0, p2, :cond_3c

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;

    const v0, 0x7f0e0077

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;-><init>(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
