.class public Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LanguageRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideCategoryViewHolder"
.end annotation


# instance fields
.field public txt_name:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b03e4

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;->txt_name:Landroid/widget/CheckedTextView;

    return-void
.end method
