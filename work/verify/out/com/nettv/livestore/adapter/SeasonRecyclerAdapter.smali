.class public Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SeasonRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/Season;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public seasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation
.end field

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$a6aDQ3T_mR6bcMlTEt52E_SR4ss(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kptpWsuMXmtnMtPEbXkmv5XWPXo(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/Season;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->selected_pos:I

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setSelectedItem(I)V

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/Season;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBackgroundColor(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;IZ)V
    .registers 7

    if-eqz p3, :cond_1e

    .line 1
    iget-object p3, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/Season;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p3, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f060085

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_26

    .line 4
    :cond_1e
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0602f5

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    :goto_26
    iget p3, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->selected_pos:I

    if-ne p2, p3, :cond_35

    .line 6
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;->txt_season:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0602f8

    .line 7
    invoke-static {p2, p3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_3f

    .line 8
    :cond_35
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;->txt_season:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0602f7

    .line 9
    invoke-static {p2, p3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

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
    check-cast p1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;I)V
    .registers 6
    .param p1    # Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/Season;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;->txt_season:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/Season;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->setBackgroundColor(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;IZ)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;

    const v0, 0x7f0e007f

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;-><init>(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setFocusDisable(IZ)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setSeasonList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->seasonList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItem(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->selected_pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
