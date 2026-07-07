.class public Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;
.super Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;
.source "SeriesRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;,
        Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter<",
        "Lcom/nettv/livestore/models/SeriesModel;",
        "Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public is_grid:Z

.field public mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$VTfeXno090f1P6IOGbFj2HQSa1M(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;ILcom/nettv/livestore/models/SeriesModel;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/SeriesModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XrAj3FKmcxgGoss_QLNrPO0C5GY(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;ILandroid/view/View;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQWsf5AugcVQK6tGszF80IEJEDI(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->lambda$onBindViewHolder$2(Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/realm/RealmResults;Z)V
    .registers 5
    .param p2    # Lio/realm/RealmResults;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p2, v0, v0}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;-><init>(Lio/realm/OrderedRealmCollection;ZZ)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->selected_pos:I

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    .line 4
    iput-boolean p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->is_grid:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/SeriesModel;Landroid/view/View;)V
    .registers 4

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    invoke-interface {p3, p2, p1}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;->onItemClick(Lcom/nettv/livestore/models/SeriesModel;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;ILandroid/view/View;Z)V
    .registers 6

    if-eqz p4, :cond_2c

    .line 1
    iget-object p3, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f060022

    .line 2
    invoke-static {p4, v0, p3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 3
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p4, 0x7f08015d

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p3, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleX(F)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    invoke-interface {p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;->onFocusPosition(I)V

    goto :goto_51

    .line 8
    :cond_2c
    iget-object p2, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    const p4, 0x7f0602f7

    .line 9
    invoke-static {p3, p4, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 10
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f08015b

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x3f733333    # 0.95f

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 12
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 13
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_51
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SeriesModel;->isIs_favorite()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 2
    iget-object p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    invoke-interface {p3, p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;->onUnFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V

    goto :goto_11

    .line 3
    :cond_c
    iget-object p3, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    invoke-interface {p3, p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;->onFavClick(Lcom/nettv/livestore/models/SeriesModel;I)V

    :goto_11
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;I)V
    .registers 10
    .param p1    # Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/adapter/RealmRecyclerViewAdapter;->getItem(I)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/SeriesModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->isIs_favorite()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 5
    iget-object v1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->image_fav:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_23

    .line 6
    :cond_1c
    iget-object v1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->image_fav:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_23
    iget-object v1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800a9

    iget-object v6, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->image_logo:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v1, v3, v4, v5, v6}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v4, 0x11

    invoke-direct {v3, p0, p2, v0, v4}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;

    const/4 v4, 0x6

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v0, p2, v4}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 11
    iget v0, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_83

    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    iget-object v0, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 14
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 15
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 16
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060022

    .line 17
    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    invoke-interface {p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;->onFocusPosition(I)V

    goto :goto_a7

    .line 19
    :cond_83
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f08015b

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 21
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 22
    iget-object p2, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 23
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0602f7

    .line 24
    invoke-static {p2, v0, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_a7
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-boolean p2, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->is_grid:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 3
    new-instance p2, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;

    const v1, 0x7f0e0085

    .line 4
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;-><init>(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_12
    new-instance p2, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;

    const v1, 0x7f0e0083

    .line 7
    invoke-static {p1, v1, p1, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;-><init>(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$ItemClickListener;

    return-void
.end method
