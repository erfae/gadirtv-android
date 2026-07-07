.class public Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HotelOrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private hotelOrdersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;",
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
            "hotelOrdersList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

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

    .line 17
    check-cast p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;I)V
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

    .line 48
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->dateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->getDatetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->hotelOrdersList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "canceled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "complete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "pending"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const p2, 0x7f06008b

    packed-switch v1, :pswitch_data_0

    .line 63
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 57
    :pswitch_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f06008c

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 54
    :pswitch_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 60
    :pswitch_2
    iget-object p1, p1, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f06008d

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28af7669 -> :sswitch_2
        -0x23bacec7 -> :sswitch_1
        -0x7577b67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;
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

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00dc

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/account/adapter/HotelOrdersAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
