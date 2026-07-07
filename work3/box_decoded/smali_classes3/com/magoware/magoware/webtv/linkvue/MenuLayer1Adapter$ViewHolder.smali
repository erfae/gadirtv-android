.class public Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MenuLayer1Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imageLinearLayout:Landroid/widget/LinearLayout;

.field myImageView:Landroid/widget/ImageView;

.field myTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    .line 89
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b03ff

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->myTextView:Landroid/widget/TextView;

    const p1, 0x7f0b03f9

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->myImageView:Landroid/widget/ImageView;

    const/16 v0, 0x15e

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 99
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->imageLinearLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$000(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$000(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$100(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menucode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;->onItemClick(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$200(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$200(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$100(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;->onItemSelect(Landroid/view/View;II)V

    .line 119
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$000(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->access$100(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menucode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;->onItemClick(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
