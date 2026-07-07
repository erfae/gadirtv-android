.class public Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerSeriesHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
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
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$48ks0EMwxWTYEk5s-dlOqJfGpV4(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lBJXGbKRZkuoUA1Ao6iST7IM1dI(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->lambda$onBindViewHolder$2(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pwUo4NEQtQQbn6S4mCBbVl5KdC0(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Lcom/nettv/livestore/models/SeriesModel;ILcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/SeriesModel;ILcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/SeriesModel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->models:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/SeriesModel;ILcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V
    .registers 6

    if-eqz p5, :cond_16

    .line 1
    iget-object p4, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1, p2, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1e

    .line 3
    :cond_16
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0801e9

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1e
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)V
    .registers 5

    iget-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    const v0, 0x7f0801e9

    const/4 v1, 0x3

    if-ne p4, v1, :cond_f

    .line 2
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    :cond_f
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    const/4 v1, 0x1

    if-nez p4, :cond_1f

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return v1

    .line 5
    :cond_1f
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    if-ne p4, v1, :cond_35

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->models:Ljava/util/List;

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
    check-cast p1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/SeriesModel;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->image_movie:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->image_logo:Landroid/widget/ImageView;

    const v5, 0x7f0800aa

    invoke-static {v1, v2, v3, v5, v4}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 5
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lio/realm/RealmObject;II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;

    const v0, 0x7f0e0079

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;-><init>(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Landroid/view/View;)V

    return-object p2
.end method
