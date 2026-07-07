.class public Lcom/nettv/livestore/adapter/DateRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DateRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public catchupModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            ">;"
        }
    .end annotation
.end field

.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public disabled_pos:I

.field public is_disable:Z

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$ZTOKIhPjhKGI_tUVm30cuXOqkyQ(Lcom/nettv/livestore/adapter/DateRecyclerAdapter;Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxqFpxI1X_Kbj0FEnnnyEWGryu0(Lcom/nettv/livestore/adapter/DateRecyclerAdapter;ILcom/nettv/livestore/models/CatchupModel;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CatchupModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->disabled_pos:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->is_disable:Z

    .line 4
    iput v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    .line 5
    iput-object p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->catchupModels:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CatchupModel;Landroid/view/View;)V
    .registers 5

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_a

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    :cond_a
    iget p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBackgroundColor(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->catchupModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CatchupModel;

    const v1, 0x7f060085

    if-eqz p3, :cond_24

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->is_disable:Z

    const/4 p3, -0x1

    .line 3
    iput p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->disabled_pos:I

    .line 4
    iget-object p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2f

    .line 6
    :cond_24
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "#00FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    :goto_2f
    iget p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    if-ne p2, p3, :cond_3e

    .line 8
    iget-object p3, p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0602f8

    .line 9
    invoke-static {v0, v2, p3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_48

    .line 10
    :cond_3e
    iget-object p3, p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0602f7

    .line 11
    invoke-static {v0, v2, p3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 12
    :goto_48
    iget p3, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->disabled_pos:I

    if-ne p2, p3, :cond_64

    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->is_disable:Z

    if-eqz p2, :cond_64

    .line 13
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#CC33253C"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_64
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->catchupModels:Ljava/util/List;

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

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;I)V
    .registers 7
    .param p1    # Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->catchupModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CatchupModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_week:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchupModel;->getDayofweek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchupModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;IZ)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;

    const v0, 0x7f0e0073

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;-><init>(Lcom/nettv/livestore/adapter/DateRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCatchupModels(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchupModel;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->catchupModels:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFocusDisable(IZ)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->disabled_pos:I

    .line 2
    iput-boolean p2, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->is_disable:Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
