.class public Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EpisodeRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public episodeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public season_name:Ljava/lang/String;

.field public series_name:Ljava/lang/String;

.field public sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;


# direct methods
.method public static synthetic $r8$lambda$JVc4KL2dyXv-NbzXqfuMkXCcVHE(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YNHGdPgWqUKbK52v0XdFFTgIUAk(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;Landroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->episodeModels:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->series_name:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    .line 7
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    return-void
.end method

.method private getCurrentProgress(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->sharedPreferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesResumeModel()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeModel;

    .line 3
    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4
    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getPro()I

    move-result p1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;Landroid/view/View;Z)V
    .registers 7

    const/4 p4, 0x0

    if-eqz p5, :cond_3c

    .line 1
    iget-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p5, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p5, 0x7f080193

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->series_name:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->getCurrentProgress(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_71

    .line 4
    iget-object p1, p3, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_71

    .line 5
    :cond_3c
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p5, 0x7f060085

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->series_name:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->getCurrentProgress(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6a

    .line 7
    iget-object p1, p3, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_71

    .line 8
    :cond_6a
    iget-object p1, p3, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_71
    :goto_71
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/EpisodeModel;ILandroid/view/View;)V
    .registers 5

    iget-object p3, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->episodeModels:Ljava/util/List;

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
    check-cast p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->episodeModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_num:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getEpisode_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 6
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getPlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2d
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    const v2, 0x7f0800b3

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getInfo()Lcom/nettv/livestore/models/EpisodeInfoModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 11
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->image_logo:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_8b

    .line 13
    :cond_72
    iget-object v1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->image_logo:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 17
    :goto_8b
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->series_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->getCurrentProgress(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->series_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->getCurrentProgress(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d5

    .line 19
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_dc

    .line 20
    :cond_d5
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_dc
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;

    const v0, 0x7f0e0075

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;-><init>(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEpisodeModels(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->episodeModels:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->season_name:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
