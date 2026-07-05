.class public Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MovieCreditRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;,
        Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public mItemClickListener:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;

.field public models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieCreditModel;",
            ">;"
        }
    .end annotation
.end field

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$FLV7Ad1HlTUg8ZSup_88f7KGL-M(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;ILcom/nettv/livestore/models/MovieCreditModel;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/MovieCreditModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n-wG2C6aBsv7vJ85ZQsIYdpKX3w(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;Lcom/nettv/livestore/models/MovieCreditModel;ILandroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;Lcom/nettv/livestore/models/MovieCreditModel;ILandroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieCreditModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->models:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/nettv/livestore/models/MovieCreditModel;Landroid/view/View;)V
    .registers 4

    .line 1
    iget p3, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p3, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p3, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;

    invoke-interface {p3, p2, p1}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;->onItemClick(Lcom/nettv/livestore/models/MovieCreditModel;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;Lcom/nettv/livestore/models/MovieCreditModel;ILandroid/view/View;Z)V
    .registers 7

    if-eqz p5, :cond_2c

    .line 1
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p5, 0x7f08015d

    invoke-virtual {p4, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    iget-object p4, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p4, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f060022

    .line 4
    invoke-static {p5, v0, p4}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 5
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Landroid/view/View;->setScaleX(F)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleY(F)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;

    invoke-interface {p1, p2, p3}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;->onFocusPosition(Lcom/nettv/livestore/models/MovieCreditModel;I)V

    goto :goto_51

    .line 8
    :cond_2c
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f08015b

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    iget-object p2, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    const p4, 0x7f0602f7

    .line 10
    invoke-static {p3, p4, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 11
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x3f733333    # 0.95f

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 12
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 13
    iget-object p1, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_51
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->models:Ljava/util/List;

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/MovieCreditModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->seekBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nettv/livestore/apps/Constants;->IMDB_IMAGE_PREF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->image_logo:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v5, 0x7f0800a9

    invoke-static {v1, v2, v3, v5, v4}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p2, v0, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 8
    iget v1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    if-ne v1, p2, :cond_82

    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f08015d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f060022

    .line 11
    invoke-static {v2, v3, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 12
    iget-object v1, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;

    invoke-interface {p1, v0, p2}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;->onFocusPosition(Lcom/nettv/livestore/models/MovieCreditModel;I)V

    goto :goto_a1

    .line 16
    :cond_82
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f08015b

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    iget-object p2, p1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f7

    .line 18
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 19
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :goto_a1
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;

    const v0, 0x7f0e0084

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;-><init>(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->mItemClickListener:Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$ItemClickListener;

    return-void
.end method

.method public setMovieCreditModels(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieCreditModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->models:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->selected_pos:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
