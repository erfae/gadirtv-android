.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HotelMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->menuObjects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->menuObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$HotelMenuAdapter(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menuRecyclerListener(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->menuObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    .line 53
    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_menu_title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->menuObjects:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_menu_icon:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 59
    iget-object p2, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_linear_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$HotelMenuAdapter$Ccja2JUFbbThhGPjNkxAOOArqGk;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$HotelMenuAdapter$Ccja2JUFbbThhGPjNkxAOOArqGk;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
            "viewGroup",
            "i"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00db

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
