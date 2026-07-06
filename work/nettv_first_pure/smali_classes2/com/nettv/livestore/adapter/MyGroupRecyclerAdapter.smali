.class public Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyGroupRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickeListenerFunction:Lkotlin/jvm/functions/Function3;
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

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private selected_pos:I


# direct methods
.method public static synthetic $r8$lambda$uBeM9StgotAtEy1memOYGb5vF4Y(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wsb_HD2e7QfsZIOocTFgJ_mJQy4(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;",
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

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->selected_pos:I

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->datas:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f080193

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0602f5

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->clickeListenerFunction:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CategoryModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;I)V
    .locals 3
    .param p1    # Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;->access$000(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p2, v2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->selected_pos:I

    if-ne v0, p2, :cond_0

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;

    const v0, 0x7f0e007d

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;-><init>(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
