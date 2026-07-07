.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "GuidedStepPersonalActivity.java"


# instance fields
.field private guidedStepPersonalFragment:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getVisibleFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->guidedStepPersonalFragment:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;

    const v0, 0x1020002

    .line 52
    invoke-static {p0, p1, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->addAsRoot(Landroidx/fragment/app/FragmentActivity;Landroidx/leanback/app/GuidedStepSupportFragment;I)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getVisibleFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 72
    instance-of v1, v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPasswordFragment;

    if-eqz v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->guidedStepPersonalFragment:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->openSettingsFragment()V

    goto :goto_0

    .line 74
    :cond_1
    instance-of v0, v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->guidedStepPersonalFragment:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->openPinFragment()V

    .line 78
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
