.class public Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "MultiCompanyDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiCompanyDialog"


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

.field private onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->companies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00b8

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b018d

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    new-instance p3, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->companies:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    invoke-direct {p3, v0, v1}, Lcom/magoware/magoware/webtv/adapters/CompaniesRecyclerAdapter;-><init>(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V

    .line 37
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p2, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->companies:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0b046b

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f14014f

    .line 41
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method public setCompanies(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "companies",
            "onRecyclerItemClickListener"
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

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->companies:Ljava/util/ArrayList;

    .line 28
    iput-object p2, p0, Lcom/magoware/magoware/webtv/custom_views/MultiCompanyDialog;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    return-void
.end method
