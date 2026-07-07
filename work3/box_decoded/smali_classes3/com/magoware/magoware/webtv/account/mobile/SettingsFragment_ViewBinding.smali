.class public Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SettingsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b05ad

    const-string v2, "field \'settings_change_password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_change_password:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0b05af

    const-string v2, "field \'settings_enable_notification\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_enable_notification:Landroid/widget/CheckBox;

    .line 27
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b0503

    const-string v2, "field \'player_constraint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->player_constraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0b05b6

    const-string v2, "field \'settings_spinner_player\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_spinner_player:Landroid/widget/Spinner;

    .line 29
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b05b0

    const-string v2, "field \'settings_frag_btnSubmit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_frag_btnSubmit:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;

    .line 39
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_change_password:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_enable_notification:Landroid/widget/CheckBox;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->player_constraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_spinner_player:Landroid/widget/Spinner;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_frag_btnSubmit:Landroid/widget/Button;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
