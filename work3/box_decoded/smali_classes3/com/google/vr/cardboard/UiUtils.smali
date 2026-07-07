.class public Lcom/google/vr/cardboard/UiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARDBOARD_CONFIGURE_ACTION:Ljava/lang/String; = "com.google.vrtoolkit.cardboard.CONFIGURE"

.field private static final CARDBOARD_WEBSITE:Ljava/lang/String; = "https://google.com/cardboard/cfg"

.field private static final DAYDREAM_HELP_CENTER_LINK:Ljava/lang/String; = "https://support.google.com/daydream?p=daydream_help_menu"

.field public static dialogBuilderForTesting:Landroid/app/AlertDialog$Builder;

.field public static permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/google/vr/cardboard/StoragePermissionUtils;

    invoke-direct {v0}, Lcom/google/vr/cardboard/StoragePermissionUtils;-><init>()V

    sput-object v0, Lcom/google/vr/cardboard/UiUtils;->permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 68
    sget-object v0, Lcom/google/vr/cardboard/UiUtils;->dialogBuilderForTesting:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/google/vr/cardboard/R$style;->GvrDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static launchOrInstallCardboard(Landroid/content/Context;)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.vrtoolkit.cardboard.CONFIGURE"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-static {v6}, Lcom/google/vr/cardboard/PackageUtils;->isGooglePackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 11
    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    .line 12
    invoke-static {p0, v6}, Lcom/google/vr/cardboard/PackageUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    if-nez v4, :cond_2

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 18
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 20
    :goto_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 21
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_4
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->isContentProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    sget-object v0, Lcom/google/vr/cardboard/UiUtils;->permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;

    invoke-virtual {v0, p0}, Lcom/google/vr/cardboard/StoragePermissionUtils;->requestStoragePermission(Landroid/content/Context;)V

    .line 26
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->showInstallDialog(Landroid/content/Context;)V

    return-void

    .line 28
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 31
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showDaydreamHelpCenterDialog(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 3

    .line 33
    new-instance v0, Lcom/google/vr/cardboard/UiUtils$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiUtils$1;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/google/vr/cardboard/R$string;->dialog_button_open_help_center:I

    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/google/vr/cardboard/R$string;->dialog_button_got_it:I

    new-instance v2, Lcom/google/vr/cardboard/UiUtils$2;

    invoke-direct {v2}, Lcom/google/vr/cardboard/UiUtils$2;-><init>()V

    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    .line 42
    new-instance p1, Lcom/google/vr/cardboard/UiUtils$3;

    invoke-direct {p1, p3}, Lcom/google/vr/cardboard/UiUtils$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/UiUtils;->showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 58
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 59
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-object p1
.end method

.method private static showInstallDialog(Landroid/content/Context;)V
    .locals 4

    .line 46
    new-instance v0, Lcom/google/vr/cardboard/UiUtils$4;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiUtils$4;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 48
    sget v2, Lcom/google/vr/cardboard/R$string;->dialog_title:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/vr/cardboard/R$string;->dialog_message_no_cardboard:I

    .line 50
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/vr/cardboard/R$string;->go_to_playstore_button:I

    .line 51
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/google/vr/cardboard/R$string;->cancel_button:I

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/vr/cardboard/UiUtils;->showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
