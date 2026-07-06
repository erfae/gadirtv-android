.class public Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpgRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EpgViewHolder"
.end annotation


# instance fields
.field public txt_name:Landroid/widget/TextView;

.field public txt_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b03fe

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_time:Landroid/widget/TextView;

    const p1, 0x7f0b03e4

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_name:Landroid/widget/TextView;

    return-void
.end method
