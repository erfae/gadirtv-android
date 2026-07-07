.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private menuObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "menuObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->menuObjects:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$showFocus$1(Landroid/view/View;Z)V
    .locals 1

    .line 77
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 80
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showFocus(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 76
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$Z0PTNHQc3DlaL-6vx4frSB-bijE;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$Z0PTNHQc3DlaL-6vx4frSB-bijE;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->menuObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$MenuAdapter(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->context:Landroid/content/Context;

    check-cast p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuRecyclerListener(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->menuObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 44
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_image:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 50
    iget-object p2, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    if-nez p2, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->showFocus(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0152

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;Landroid/view/View;)V

    return-object p2
.end method
