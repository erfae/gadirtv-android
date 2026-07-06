.class public Lcom/nettv/livestore/view/CustomSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "CustomSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;

.field private mOpenInitiated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return-void
.end method


# virtual methods
.method public hasBeenFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/view/CustomSpinner;->hasBeenFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nettv/livestore/view/CustomSpinner;->performCloseEvent()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/view/CustomSpinner;->listener:Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;->onPopupWindowOpened(Landroid/widget/Spinner;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public performCloseEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/nettv/livestore/view/CustomSpinner;->mOpenInitiated:Z

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/view/CustomSpinner;->listener:Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;->onPopupWindowClosed(Landroid/widget/Spinner;)V

    :cond_0
    return-void
.end method

.method public setSpinnerEventsListener(Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/view/CustomSpinner;->listener:Lcom/nettv/livestore/view/CustomSpinner$OnSpinnerEventsListener;

    return-void
.end method
