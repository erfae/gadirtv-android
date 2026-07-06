.class public Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerLiveChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveChannelViewHolder"
.end annotation


# instance fields
.field public image_catch:Landroid/widget/ImageView;

.field public image_channel:Landroid/widget/ImageView;

.field public image_fav:Landroid/widget/ImageView;

.field public image_lock:Landroid/widget/ImageView;

.field public image_logo:Landroid/widget/ImageView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03e4

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03e8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->txt_num:Landroid/widget/TextView;

    const v0, 0x7f0b01cc

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_channel:Landroid/widget/ImageView;

    const v0, 0x7f0b01dd

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_logo:Landroid/widget/ImageView;

    const v0, 0x7f0b01d6

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_fav:Landroid/widget/ImageView;

    const v0, 0x7f0b01ca

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_catch:Landroid/widget/ImageView;

    const v0, 0x7f0b01dc

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;->image_lock:Landroid/widget/ImageView;

    return-void
.end method
