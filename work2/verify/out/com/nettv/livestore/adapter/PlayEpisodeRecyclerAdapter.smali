.class public Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayEpisodeRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public season_pos:I

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$4-4CIUx8l-eTmH34M35FbBsEEm8(Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;II",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->models:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->season_pos:I

    .line 5
    iput p4, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->selected_pos:I

    .line 6
    iput-object p5, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .registers 4

    iget-object p3, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->models:Ljava/util/List;

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
    check-cast p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;I)V
    .registers 10
    .param p1    # Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->season_pos:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "S%d .E%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v1, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v2, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 6
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    .line 7
    :cond_3b
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 8
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    .line 9
    :cond_4a
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_4e
    iget-object v2, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;->image_episode:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v4, 0x7f0800b3

    iget-object v6, p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;->image_logo:Landroid/widget/ImageView;

    invoke-static {v2, v3, v1, v4, v6}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 11
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget v0, p0, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_80

    .line 13
    iget-object p2, p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f080133

    invoke-virtual {p2, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 14
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f08015a

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8d

    .line 16
    :cond_80
    iget-object p2, p1, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p2, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f080159

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_8d
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;

    const v0, 0x7f0e0076

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter$EpisodeViewHolder;-><init>(Lcom/nettv/livestore/adapter/PlayEpisodeRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
