.class public Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpisodeRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XCEpisodeViewHolder"
.end annotation


# instance fields
.field public image_logo:Landroid/widget/ImageView;

.field public seekbar:Landroid/widget/ProgressBar;

.field public txt_description:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b01dd

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->image_logo:Landroid/widget/ImageView;

    const p1, 0x7f0b03e4

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_name:Landroid/widget/TextView;

    const p1, 0x7f0b03e8

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_num:Landroid/widget/TextView;

    const p1, 0x7f0b03cb

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->txt_description:Landroid/widget/TextView;

    const p1, 0x7f0b0328

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;->seekbar:Landroid/widget/ProgressBar;

    return-void
.end method
