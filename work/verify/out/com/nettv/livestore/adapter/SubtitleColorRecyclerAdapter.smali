.class public Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SubtitleColorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public colorArray:[Ljava/lang/String;

.field public selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$Aj9UnZRtCQnwc8FdDGLtsqoVq_g(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$h9HSmLiGRDLtljv1yE0apXXUlag(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->colorArray:[Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->selected_pos:I

    .line 4
    iput-object p3, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->selected_pos:I

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->selected_pos:I

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p2, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->selected_pos:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_b

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0801e5

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_13

    .line 2
    :cond_b
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0602f5

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->colorArray:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
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

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;I)V
    .registers 6
    .param p1    # Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;
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
    iget-object v0, p1, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;->image_color:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->colorArray:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    iget v0, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_2e

    .line 6
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;->image_check:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_35

    .line 7
    :cond_2e
    iget-object p1, p1, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;->image_check:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_35
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;

    const v0, 0x7f0e0082

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;-><init>(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
