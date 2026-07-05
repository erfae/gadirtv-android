.class public Landroidx/leanback/widget/GuidedAction;
.super Landroidx/leanback/widget/Action;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedAction$Builder;,
        Landroidx/leanback/widget/GuidedAction$BuilderBase;
    }
.end annotation


# static fields
.field public static final ACTION_ID_CANCEL:J = -0x5L

.field public static final ACTION_ID_CONTINUE:J = -0x7L

.field public static final ACTION_ID_CURRENT:J = -0x3L

.field public static final ACTION_ID_FINISH:J = -0x6L

.field public static final ACTION_ID_NEXT:J = -0x2L

.field public static final ACTION_ID_NO:J = -0x9L

.field public static final ACTION_ID_OK:J = -0x4L

.field public static final ACTION_ID_YES:J = -0x8L

.field public static final CHECKBOX_CHECK_SET_ID:I = -0x1

.field public static final DEFAULT_CHECK_SET_ID:I = 0x1

.field public static final NO_CHECK_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GuidedAction"


# instance fields
.field public mActionFlags:I

.field public mAutofillHints:[Ljava/lang/String;

.field public mCheckSetId:I

.field public mDescriptionEditInputType:I

.field public mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field public mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field public mEditable:I

.field public mInputType:I

.field public mIntent:Landroid/content/Intent;

.field public mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/leanback/widget/Action;-><init>(J)V

    return-void
.end method

.method private setFlags(II)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    return-void
.end method


# virtual methods
.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSetId()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionEditInputType()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    return v0
.end method

.method public getDescriptionInputType()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mDescriptionInputType:I

    return v0
.end method

.method public getEditDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditInputType()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditInputType:I

    return v0
.end method

.method public getEditTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mInputType:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSubActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasEditableActivatorView()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMultilineDescription()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubActions()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextEditable()Z
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public infoOnly()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAutoSaveRestoreEnabled()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDescriptionEditable()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditTitleUsed()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditable()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final needAutoSaveDescription()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    const/16 v3, 0x90

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final needAutoSaveTitle()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    const/16 v3, 0x90

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedAction;->setFlags(II)V

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel2(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEditTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedAction;->setFlags(II)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    const/16 v0, 0x20

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedAction;->setFlags(II)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setSubActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    return-void
.end method
