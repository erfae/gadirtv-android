.class public Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MyChannelRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelHolder"
.end annotation


# instance fields
.field public image_channel:Landroid/widget/ImageView;

.field public image_delete:Landroid/widget/ImageView;

.field public image_logo:Landroid/widget/ImageView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;Landroid/view/View;)V
    .registers 3
    .param p1    # Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b03e8

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_num:Landroid/widget/TextView;

    const p1, 0x7f0b03e4

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->txt_name:Landroid/widget/TextView;

    const p1, 0x7f0b01cc

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_channel:Landroid/widget/ImageView;

    const p1, 0x7f0b01d1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_delete:Landroid/widget/ImageView;

    const p1, 0x7f0b01e6

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p1, 0x7f0b01cd

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p1, 0x7f0b01dd

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;->image_logo:Landroid/widget/ImageView;

    return-void
.end method
