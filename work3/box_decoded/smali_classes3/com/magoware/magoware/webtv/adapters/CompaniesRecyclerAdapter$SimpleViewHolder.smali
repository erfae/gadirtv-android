.class Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CompaniesRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleViewHolder"
.end annotation


# instance fields
.field companyConstraint:Landroidx/constraintlayout/widget/ConstraintLayout;

.field onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

.field textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b018e

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->companyConstraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b018f

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->textView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setOnRecyclerItemClickListener(Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRecyclerItemClickListener"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    return-void
.end method
