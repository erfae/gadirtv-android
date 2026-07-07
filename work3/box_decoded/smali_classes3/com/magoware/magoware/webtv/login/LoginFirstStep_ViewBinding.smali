.class public Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;
.super Ljava/lang/Object;
.source "LoginFirstStep_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

.field private view7f0b04a8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0701

    const-string v2, "field \'welcomeText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->welcomeText:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b066b

    const-string v2, "field \'toText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->toText:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b03c2

    const-string v2, "field \'magoText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->magoText:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b06bc

    const-string v2, "field \'versionText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->versionText:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b00c4

    const-string v2, "field \'applicationModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->applicationModel:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0b05aa

    const-string v2, "field \'serverUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->serverUrl:Landroid/widget/EditText;

    const v0, 0x7f0b04a8

    const-string v1, "field \'nextButton\' and method \'onNextClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'nextButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->nextButton:Landroid/widget/Button;

    .line 36
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->view7f0b04a8:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;-><init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;Lcom/magoware/magoware/webtv/login/LoginFirstStep;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b0374

    const-string v2, "field \'layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    .line 53
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->welcomeText:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->toText:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->magoText:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->versionText:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->applicationModel:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->serverUrl:Landroid/widget/EditText;

    .line 59
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->nextButton:Landroid/widget/Button;

    .line 60
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->view7f0b04a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;->view7f0b04a8:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
