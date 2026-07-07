.class public Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuLayer1Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$MyOnKeyListener;,
        Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;,
        Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;,
        Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private itemSelectedListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;

.field private mClickListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private myOnKeyListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$MyOnKeyListener;

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "screen_width"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "MenuLayer1Adapter "

    .line 35
    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    .line 42
    iput p3, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->screenWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mClickListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->itemSelectedListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method getItem(I)Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
            "position"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->title:Ljava/lang/String;

    .line 63
    iget-object v1, p1, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->myTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const v1, 0x7f080347

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 66
    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->myImageView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->icon:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 71
    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->myImageView:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_0
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

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;
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

    .line 49
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e00db

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0153

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    iget p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->screenWidth:I

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    div-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 55
    :goto_0
    new-instance p2, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setClickListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemClickListener"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->mClickListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

    return-void
.end method

.method setMyOnKeyListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$MyOnKeyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myOnKeyListener"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->myOnKeyListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$MyOnKeyListener;

    return-void
.end method

.method setSelectListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSelectedListener"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->itemSelectedListener:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;

    return-void
.end method
