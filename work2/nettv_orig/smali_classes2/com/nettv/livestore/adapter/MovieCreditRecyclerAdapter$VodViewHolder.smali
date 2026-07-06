.class public Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MovieCreditRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodViewHolder"
.end annotation


# instance fields
.field public image_logo:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public seekBar:Landroid/widget/ProgressBar;

.field public txt_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b01f0

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->image_vod:Lcom/makeramen/roundedimageview/RoundedImageView;

    const p1, 0x7f0b01dd

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->image_logo:Lcom/makeramen/roundedimageview/RoundedImageView;

    const p1, 0x7f0b03e4

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->txt_name:Landroid/widget/TextView;

    const p1, 0x7f0b01d6

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p1, 0x7f0b0327

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;->seekBar:Landroid/widget/ProgressBar;

    return-void
.end method
