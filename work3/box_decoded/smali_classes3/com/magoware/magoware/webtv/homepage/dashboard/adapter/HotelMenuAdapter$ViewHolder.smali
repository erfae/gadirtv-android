.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HotelMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field hotel_linear_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field hotel_menu_icon:Landroid/widget/ImageView;

.field hotel_menu_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0329

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_linear_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b032e

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_menu_title:Landroid/widget/TextView;

    const v0, 0x7f0b032c

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/HotelMenuAdapter$ViewHolder;->hotel_menu_icon:Landroid/widget/ImageView;

    return-void
.end method
