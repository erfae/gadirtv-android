.class public Lpl/droidsonroids/gif/MultiCallback;
.super Ljava/lang/Object;
.source "MultiCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseViewInvalidate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/MultiCallback;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput-boolean p1, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    return-void
.end method


# virtual methods
.method public addView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 2
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-nez v2, :cond_1e

    .line 4
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_21
    iget-object v0, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    invoke-direct {v1, p1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 2
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_2b

    .line 4
    iget-boolean v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mUseViewInvalidate:Z

    if-eqz v1, :cond_27

    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_27

    .line 5
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_30

    .line 6
    :cond_27
    invoke-interface {v2, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_30

    .line 7
    :cond_2b
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void
.end method

.method public removeView(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1b

    if-ne v2, p1, :cond_20

    .line 4
    :cond_1b
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 8
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 2
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1d

    .line 4
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_22

    .line 5
    :cond_1d
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 2
    iget-object v1, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_1d

    .line 4
    invoke-interface {v2, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_22

    .line 5
    :cond_1d
    iget-object v2, p0, Lpl/droidsonroids/gif/MultiCallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method
