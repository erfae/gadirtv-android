.class public Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;
.super Landroidx/leanback/app/GuidedStepFragment;
.source "DialogExampleFragment.java"


# static fields
.field private static final ACTION_ID_NEGATIVE:I = 0x2

.field private static final ACTION_ID_POSITIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 46
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-direct {p2}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>()V

    const-wide/16 v0, 0x1

    .line 47
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_button_positive:I

    .line 48
    invoke-virtual {p0, v0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 49
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-direct {p2}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>()V

    const-wide/16 v0, 0x2

    .line 51
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_button_negative:I

    .line 52
    invoke-virtual {p0, v0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 53
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroidx/leanback/widget/GuidanceStylist$Guidance;
    .locals 4

    .line 38
    new-instance p1, Landroidx/leanback/widget/GuidanceStylist$Guidance;

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_title:I

    invoke-virtual {p0, v0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_description:I

    .line 39
    invoke-virtual {p0, v1}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 5

    .line 58
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const/4 p1, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 59
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_button_toast_positive_clicked:I

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroidx/leanback/supportleanbackshowcase/R$string;->dialog_example_button_toast_negative_clicked:I

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
