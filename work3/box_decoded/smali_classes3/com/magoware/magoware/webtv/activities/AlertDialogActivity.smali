.class public Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;
.super Lcom/magoware/magoware/webtv/CustomActivity;
.source "AlertDialogActivity.java"


# instance fields
.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;-><init>()V

    return-void
.end method

.method private displayAlert()V
    .locals 5

    .line 32
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803e4

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const v3, 0x7f1402ff

    const/16 v4, 0x14

    if-le v1, v4, :cond_0

    .line 35
    new-instance v1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    const v4, 0x7f150002

    invoke-direct {v1, p0, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->message:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0802eb

    .line 37
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->title:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AlertDialogActivity$0tDSDJdGVAHX1Ssi6t_51LnuXcc;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AlertDialogActivity$0tDSDJdGVAHX1Ssi6t_51LnuXcc;-><init>(Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->title:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->message:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AlertDialogActivity$m6WkVdZMCD6rdcvg9J3DZ7bGpas;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AlertDialogActivity$m6WkVdZMCD6rdcvg9J3DZ7bGpas;-><init>(Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$displayAlert$0$AlertDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$displayAlert$1$AlertDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TITLE"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->title:Ljava/lang/String;

    const-string v0, "MESSAGE"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->message:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/AlertDialogActivity;->displayAlert()V

    return-void
.end method
