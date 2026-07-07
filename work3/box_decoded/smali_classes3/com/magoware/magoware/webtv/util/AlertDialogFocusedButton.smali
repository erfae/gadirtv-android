.class public Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;
.super Landroid/app/AlertDialog$Builder;
.source "AlertDialogFocusedButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public show()Landroid/app/AlertDialog;
    .locals 3

    .line 19
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x2

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, -0x3

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 31
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 32
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocusFromTouch()Z

    :cond_2
    return-object v0
.end method
