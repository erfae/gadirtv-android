.class public Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CompaniesRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompaniesAdapter"


# instance fields
.field private companies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Company;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "companies",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Company;",
            ">;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->companies:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->listener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->companies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 61
    iget-object v0, p1, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->companies:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->companies:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->listener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;->setOnRecyclerItemClickListener(Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00e1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter$SimpleViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
