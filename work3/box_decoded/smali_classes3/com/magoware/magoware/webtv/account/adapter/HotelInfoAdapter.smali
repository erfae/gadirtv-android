.class public Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HotelInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private hotelInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hotelInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->hotelInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->hotelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

    .line 16
    check-cast p1, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;I)V
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

    .line 46
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->hotelInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->hotelInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;
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

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00d9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/account/adapter/HotelInfoAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
