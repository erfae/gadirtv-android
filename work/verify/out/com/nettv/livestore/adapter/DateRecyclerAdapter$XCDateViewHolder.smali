.class public Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DateRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/DateRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XCDateViewHolder"
.end annotation


# instance fields
.field public txt_date:Landroid/widget/TextView;

.field public txt_week:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/DateRecyclerAdapter;Landroid/view/View;)V
    .registers 3
    .param p1    # Lcom/nettv/livestore/adapter/DateRecyclerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0404

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_week:Landroid/widget/TextView;

    const p1, 0x7f0b03ca

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;->txt_date:Landroid/widget/TextView;

    return-void
.end method
