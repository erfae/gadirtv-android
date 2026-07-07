.class public Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AddCategoryRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clickListenerFunction:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$-KO6qif-Oid-9yEOB-ilNxXk6_U(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;ILjava/lang/String;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->lambda$onBindViewHolder$1(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_nrDeXWOon84_B7YHfRHTiDYLw(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;Ljava/lang/String;ILandroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->lambda$onBindViewHolder$2(Ljava/lang/String;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tRLOWZGQIRegxECQG95dXYjVwK0(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLkotlin/jvm/functions/Function4;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->selected_pos:I

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->categoryModels:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILjava/lang/String;Landroid/view/View;)V
    .registers 6

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setSelectedItem(IZ)V

    .line 2
    iget-object p3, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p1, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/lang/String;ILandroid/view/View;)Z
    .registers 6

    iget-object p3, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function4;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private setBackgroundColor(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;IZ)V
    .registers 6

    if-eqz p3, :cond_1e

    .line 1
    iget-object p3, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->categoryModels:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function4;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p3, p2, v1, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080193

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_26

    .line 4
    :cond_1e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f060085

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_26
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->categoryModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
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
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;I)V
    .registers 7
    .param p1    # Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;
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
            "SetTextI18n"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->categoryModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;->category_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;IZ)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    iget v0, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_46

    if-eqz p2, :cond_46

    .line 9
    iget-object p1, p1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;->category_name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0602f8

    .line 10
    invoke-static {p2, v0, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_50

    .line 11
    :cond_46
    iget-object p1, p1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;->category_name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0602f7

    .line 12
    invoke-static {p2, v0, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_50
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;

    const v0, 0x7f0e007a

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;-><init>(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->categoryModels:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->selected_pos:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
