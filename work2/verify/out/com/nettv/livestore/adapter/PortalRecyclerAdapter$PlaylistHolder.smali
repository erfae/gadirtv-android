.class Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PortalRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistHolder"
.end annotation


# instance fields
.field public txt_connected:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_url:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;Landroid/view/View;)V
    .registers 3
    .param p1    # Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;
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

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_name:Landroid/widget/TextView;

    const p1, 0x7f0b0400

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_url:Landroid/widget/TextView;

    const p1, 0x7f0b03c5

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$PlaylistHolder;->txt_connected:Landroid/widget/TextView;

    return-void
.end method
