.class public abstract Landroidx/leanback/widget/ObjectAdapter;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ObjectAdapter$DataObservable;,
        Landroidx/leanback/widget/ObjectAdapter$DataObserver;
    }
.end annotation


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

.field private mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/Presenter;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    .line 6
    new-instance v0, Landroidx/leanback/widget/SinglePresenterSelector;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/SinglePresenterSelector;-><init>(Landroidx/leanback/widget/Presenter;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Presenter selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public final hasObserver()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->hasObserver()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return-void
.end method

.method public final setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->notifyChanged()V

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Presenter selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract size()I
.end method

.method public final unregisterAllObservers()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/database/Observable;->unregisterAll()V

    return-void
.end method

.method public final unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
