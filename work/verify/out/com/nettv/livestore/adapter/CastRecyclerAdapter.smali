.class public Lcom/nettv/livestore/adapter/CastRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CastRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickListenerFunction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CastModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$INOlJWMzCUgFKkEamP75tPnObq0(Lcom/nettv/livestore/adapter/CastRecyclerAdapter;Lcom/nettv/livestore/models/CastModel;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/CastModel;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fX_ZNiMf35-cC9PVpu4wuW1UZx8(Lcom/nettv/livestore/adapter/CastRecyclerAdapter;Lcom/nettv/livestore/models/CastModel;ILcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;Landroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CastModel;ILcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CastModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->datas:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CastModel;ILcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;Landroid/view/View;Z)V
    .registers 6

    if-eqz p5, :cond_22

    .line 1
    iget-object p4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, p2, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 4
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0801de

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_37

    .line 5
    :cond_22
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x3f733333    # 0.95f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 6
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 7
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0602f5

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_37
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/CastModel;ILandroid/view/View;)V
    .registers 5

    iget-object p3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->clickListenerFunction:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
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

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CastModel;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08008b

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nettv/livestore/apps/Constants;->IMDB_IMAGE_PREF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Lcom/nettv/livestore/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 7
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;->image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 8
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_61

    .line 9
    :cond_4e
    iget-object v1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;->image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 10
    :goto_61
    iget-object v1, p1, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CastModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;

    const v0, 0x7f0e0071

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;-><init>(Lcom/nettv/livestore/adapter/CastRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setMovieData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->datas:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
