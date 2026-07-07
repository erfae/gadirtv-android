.class public Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;
.super Landroidx/fragment/app/ListFragment;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 50
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->mCallback:Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnItemSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 30
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    new-instance v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;

    invoke-direct {v4}, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;-><init>()V

    .line 32
    iput-object v3, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;->menuItemName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "v",
            "position",
            "id"
        }
    .end annotation

    .line 59
    invoke-super/range {p0 .. p5}, Landroidx/fragment/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 60
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->mCallback:Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;

    invoke-interface {p1, p3}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;->onItemSelected(I)V

    .line 61
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
