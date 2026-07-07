.class public abstract Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "AbstractCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/leanback/widget/BaseCardView;",
        ">",
        "Landroidx/leanback/widget/Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractCardPresenter"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/leanback/supportleanbackshowcase/models/Card;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 52
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/BaseCardView;

    invoke-virtual {p0, p2, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V

    return-void
.end method

.method protected abstract onCreateView()Landroidx/leanback/widget/BaseCardView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;->onCreateView()Landroidx/leanback/widget/BaseCardView;

    move-result-object p1

    .line 47
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/BaseCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 56
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroidx/leanback/widget/BaseCardView;

    invoke-virtual {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;->onUnbindViewHolder(Landroidx/leanback/widget/BaseCardView;)V

    return-void
.end method
