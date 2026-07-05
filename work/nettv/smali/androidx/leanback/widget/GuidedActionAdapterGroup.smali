.class public Landroidx/leanback/widget/GuidedActionAdapterGroup;
.super Ljava/lang/Object;
.source "GuidedActionAdapterGroup.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_EDIT:Z = false

.field private static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field public mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroidx/leanback/widget/GuidedActionAdapter;",
            "Landroidx/leanback/widget/GuidedActionAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

.field private mImeOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, p1, :cond_3

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdpter(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 2
    iput-object p0, p1, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iput-object p0, p2, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    :cond_1
    return-void
.end method

.method public closeIme(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p1}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onImeClose()V

    :cond_0
    return-void
.end method

.method public fillAndGoNext(Landroidx/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 12

    .line 1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v3, v0, v4, v5}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    const-wide/16 v6, -0x3

    cmp-long v3, v1, v6

    if-eqz v3, :cond_7

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-eqz v3, :cond_7

    .line 8
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    const-wide/16 v6, -0x2

    cmp-long v8, v1, v6

    if-nez v8, :cond_1

    .line 9
    invoke-virtual {p1, v3}, Landroidx/leanback/widget/GuidedActionAdapter;->indexOf(Landroidx/leanback/widget/GuidedAction;)I

    move-result v3

    if-gez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/2addr v3, v5

    move-object v6, p0

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_0
    move-object v6, v3

    const/4 v3, 0x0

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionAdapter;->getCount()I

    move-result v7

    if-nez v8, :cond_2

    :goto_2
    if-ge v3, v7, :cond_3

    .line 11
    invoke-virtual {p1, v3}, Landroidx/leanback/widget/GuidedActionAdapter;->getItem(I)Landroidx/leanback/widget/GuidedAction;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v3, v7, :cond_3

    .line 12
    invoke-virtual {p1, v3}, Landroidx/leanback/widget/GuidedActionAdapter;->getItem(I)Landroidx/leanback/widget/GuidedAction;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-eqz v11, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-ge v3, v7, :cond_5

    .line 13
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v6, p1, v1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_4

    .line 17
    :cond_4
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 18
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v6, p1}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->getNextAdapter(Landroidx/leanback/widget/GuidedActionAdapter;)Landroidx/leanback/widget/GuidedActionAdapter;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v6

    goto :goto_0

    :cond_7
    :goto_5
    if-nez v4, :cond_8

    .line 20
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 21
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_8
    return-void
.end method

.method public fillAndStay(Landroidx/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 7
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public getNextAdapter(Landroidx/leanback/widget/GuidedActionAdapter;)Landroidx/leanback/widget/GuidedActionAdapter;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 4
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/GuidedActionAdapter;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public openIme(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, v0, v0}, Landroidx/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 3
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditingView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditingText()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 9
    iget-boolean p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-nez p1, :cond_1

    .line 10
    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p1}, Landroidx/leanback/widget/GuidedActionAdapter$EditListener;->onImeOpen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEditListener(Landroidx/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroidx/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method
