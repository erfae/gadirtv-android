.class public Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LiveSortRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public category_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
.method public static synthetic $r8$lambda$9GehWK7oaAXfG_L1DhhZ8E8LzNo(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uN9FvNO0E7a0DQJwuxmkopvGp6Y(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    iput-object p2, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->category_data:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->checked_pos:I

    .line 4
    iput-object p4, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->checked_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->checked_pos:I

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p2, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->checked_pos:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f080193

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f060085

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->category_data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
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
    check-cast p1, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;I)V
    .locals 3
    .param p1    # Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;
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
    iget-object v0, p1, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->category_data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget v0, p0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->checked_pos:I

    if-ne v0, p2, :cond_0

    .line 4
    iget-object v0, p1, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 7
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;

    const v0, 0x7f0e0077

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;-><init>(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
