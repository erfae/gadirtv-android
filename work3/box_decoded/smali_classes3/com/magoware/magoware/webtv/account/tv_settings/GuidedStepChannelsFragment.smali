.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepChannelsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedStepChannelsFragment"


# instance fields
.field private ADD_CHANNEL_ID:I

.field private VIEW_CHANNELS_ID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->ADD_CHANNEL_ID:I

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->VIEW_CHANNELS_ID:I

    return-void
.end method


# virtual methods
.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actions",
            "savedInstanceState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 40
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->ADD_CHANNEL_ID:I

    int-to-long v0, v0

    .line 42
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 43
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14047f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->VIEW_CHANNELS_ID:I

    int-to-long v0, v0

    .line 46
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 47
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroidx/leanback/widget/GuidanceStylist$Guidance;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fragment_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Landroidx/leanback/widget/GuidanceStylist$Guidance;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Landroidx/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->ADD_CHANNEL_ID:I

    int-to-long v2, v2

    const-string v4, "fragment_title"

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;-><init>()V

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-static {v0, v1}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->VIEW_CHANNELS_ID:I

    int-to-long v2, v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;-><init>()V

    .line 70
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    invoke-static {v0, v1}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    :cond_1
    return-void
.end method
