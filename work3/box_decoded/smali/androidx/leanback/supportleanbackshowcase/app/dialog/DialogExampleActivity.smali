.class public Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleActivity;
.super Landroid/app/Activity;
.source "DialogExampleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#21272A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;

    invoke-direct {p1}, Landroidx/leanback/supportleanbackshowcase/app/dialog/DialogExampleFragment;-><init>()V

    const v0, 0x1020002

    .line 34
    invoke-static {p0, p1, v0}, Landroidx/leanback/app/GuidedStepFragment;->addAsRoot(Landroid/app/Activity;Landroidx/leanback/app/GuidedStepFragment;I)I

    :cond_0
    return-void
.end method
