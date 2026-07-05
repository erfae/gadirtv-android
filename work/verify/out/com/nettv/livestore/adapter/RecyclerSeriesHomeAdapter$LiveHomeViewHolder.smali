.class public Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerSeriesHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveHomeViewHolder"
.end annotation


# instance fields
.field public image_logo:Landroid/widget/ImageView;

.field public image_movie:Landroid/widget/ImageView;

.field public txt_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Landroid/view/View;)V
    .registers 3
    .param p1    # Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b03e4

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    const p1, 0x7f0b01cc

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->image_movie:Landroid/widget/ImageView;

    const p1, 0x7f0b01dd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;->image_logo:Landroid/widget/ImageView;

    return-void
.end method
