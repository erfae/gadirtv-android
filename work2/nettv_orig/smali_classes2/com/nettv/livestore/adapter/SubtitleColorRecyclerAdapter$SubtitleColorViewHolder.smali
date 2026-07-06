.class public Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubtitleColorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubtitleColorViewHolder"
.end annotation


# instance fields
.field public image_check:Landroid/widget/ImageView;

.field public image_color:Lcom/makeramen/roundedimageview/RoundedImageView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b01ce

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;->image_color:Lcom/makeramen/roundedimageview/RoundedImageView;

    const p1, 0x7f0b01cd

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;->image_check:Landroid/widget/ImageView;

    return-void
.end method
