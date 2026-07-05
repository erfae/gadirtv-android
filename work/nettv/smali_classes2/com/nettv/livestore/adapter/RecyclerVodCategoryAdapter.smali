.class public Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerVodCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public categoryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public is_grid:Z

.field public is_m3u:Z

.field public is_movie:Z

.field public selected_position:I


# direct methods
.method public static synthetic $r8$lambda$2diBBUuWGMd9yy9AVNH2NWdwRAo(Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0XbSB99W4Xvyj2mFFskhYUrpOs(Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;Lcom/nettv/livestore/models/CategoryModel;ILcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CategoryModel;ILcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZZZLkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;IZZZ",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->categoryModels:Ljava/util/List;

    .line 4
    iput-object p7, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    .line 5
    iput p3, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->selected_position:I

    .line 6
    iput-boolean p4, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    .line 7
    iput-boolean p6, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_movie:Z

    .line 8
    iput-boolean p5, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_m3u:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CategoryModel;ILcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V
    .locals 0

    if-eqz p5, :cond_1

    .line 1
    iget-object p4, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, p2, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080193

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080156

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f060085

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILcom/nettv/livestore/models/CategoryModel;Landroid/view/View;)V
    .locals 1

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->selected_position:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->selected_position:I

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p3, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->selected_position:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->categoryModels:Ljava/util/List;

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

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;I)V
    .locals 9
    .param p1    # Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;
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

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->categoryModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean v1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_movie:Z

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    iget-boolean v4, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_m3u:Z

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/nettv/livestore/helper/RealmController;->getMovieModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v1

    .line 6
    iget-boolean v2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " movies"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    .line 9
    invoke-static {v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    iget-boolean v4, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_m3u:Z

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/nettv/livestore/helper/RealmController;->getSeriesModelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object v1

    .line 12
    iget-boolean v2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " series"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    .line 15
    invoke-static {v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v6, 0x9

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 18
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xf

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->selected_position:I

    if-ne v0, p2, :cond_3

    .line 20
    iget-object p2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f8

    .line 21
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 22
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->context:Landroid/content/Context;

    .line 23
    invoke-static {p2, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object p2, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f7

    .line 25
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 26
    iget-object p1, p1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->context:Landroid/content/Context;

    .line 27
    invoke-static {p2, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->is_grid:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;

    const v1, 0x7f0e007b

    .line 4
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_0
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;

    const v1, 0x7f0e007a

    .line 7
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p2, p1}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
