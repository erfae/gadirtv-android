.class public Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;
.super Landroidx/fragment/app/Fragment;
.source "MainMenuLinkvueLayer2.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;
.implements Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field static alertDialog:Landroid/app/AlertDialog;

.field private static menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

.field private forced_logout:Z

.field private mListener:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private progress_dialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->forced_logout:Z

    return-void
.end method

.method private intentAccount()V
    .locals 4

    .line 249
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    const/high16 v1, 0x10000000

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private intentApps()V
    .locals 3

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentLiveTv()V
    .locals 3

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentNetworkTest()V
    .locals 3

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private intentShopSubscription()V
    .locals 3

    .line 305
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private intentVod()V
    .locals 3

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/MainVodActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x14000000

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$showLogOutDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showLogOutDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private logout()V
    .locals 3

    .line 208
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14025a

    .line 209
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 211
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 212
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$w-PgnFmsZRM0EUHkisKg2ZzPJkg;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$w-PgnFmsZRM0EUHkisKg2ZzPJkg;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 235
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->progress_dialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param1",
            "param2"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 93
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 94
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showLogOutDialog()V
    .locals 7

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const v2, 0x7f1402e2

    const v3, 0x7f14049c

    const v4, 0x7f140078

    const/16 v5, 0x14

    if-le v0, v5, :cond_0

    .line 312
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f150002

    invoke-direct {v0, v5, v6}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    .line 313
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$jVSql-LfKfPtEnvfhNIh_XOhzeA;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$jVSql-LfKfPtEnvfhNIh_XOhzeA;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$tNz8lQWM0c-F0LlInzEtAxt2HlE;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$tNz8lQWM0c-F0LlInzEtAxt2HlE;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->alertDialog:Landroid/app/AlertDialog;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$NQyYO7enZ792mI3bTCn4UJ-zrLc;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$NQyYO7enZ792mI3bTCn4UJ-zrLc;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$Lfa67aMV9ZEaCv0uublfFUUXV0Q;->INSTANCE:Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvueLayer2$Lfa67aMV9ZEaCv0uublfFUUXV0Q;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->alertDialog:Landroid/app/AlertDialog;

    .line 343
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private startApp(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000000

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$logout$0$MainMenuLinkvueLayer2(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 217
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/4 v2, 0x0

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_0

    .line 219
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearLoginData()V

    .line 220
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->forced_logout:Z

    .line 221
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 223
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    .line 226
    :cond_0
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-le v1, v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->forced_logout:Z

    const-string p1, "unsuccessful"

    .line 229
    invoke-static {p1}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logLogout(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->forced_logout:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$1$MainMenuLinkvueLayer2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 316
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    .line 317
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 318
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 320
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$showLogOutDialog$3$MainMenuLinkvueLayer2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    return-void
.end method

.method public loadData()V
    .locals 4

    .line 149
    new-instance v0, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    sget v3, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->width:I

    invoke-direct {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    .line 150
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->setClickListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;->setSelectListener(Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter$ItemSelectedListener;)V

    .line 153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->adapter:Lcom/magoware/magoware/webtv/linkvue/MenuLayer1Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 134
    instance-of v0, p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->mListener:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->mParam1:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->mParam2:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "parent_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 108
    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllMenuObjectsLayer(I)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    .line 109
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00c3

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0373

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->mListener:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

    return-void
.end method

.method public onItemClick(Landroid/view/View;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "menuCode"
        }
    .end annotation

    const/high16 p1, 0x10000000

    const-string v0, "WEB_URL"

    if-eqz p3, :cond_7

    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    const/4 v1, 0x3

    if-eq p3, v1, :cond_4

    const/4 v1, 0x4

    if-eq p3, v1, :cond_3

    const/4 v1, 0x7

    if-eq p3, v1, :cond_2

    const/16 v1, 0x8

    if-eq p3, v1, :cond_1

    const/16 p1, 0x14

    if-eq p3, p1, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 183
    :pswitch_0
    sget-object p1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startApp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentVod()V

    goto/16 :goto_0

    .line 174
    :pswitch_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentNetworkTest()V

    goto/16 :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentAccount()V

    goto :goto_0

    .line 190
    :cond_1
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    sget-object v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->url:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentShopSubscription()V

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentApps()V

    goto :goto_0

    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->showLogOutDialog()V

    goto :goto_0

    .line 187
    :cond_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->logout()V

    goto :goto_0

    .line 161
    :cond_6
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->intentLiveTv()V

    goto :goto_0

    .line 197
    :cond_7
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->url:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?username="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelect(Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "pos_adapter"
        }
    .end annotation

    .line 243
    iget-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->mListener:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;

    if-eqz p1, :cond_0

    .line 244
    sget-object p2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->menu_list:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;->menu_description:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2$OnItemSelectedLayer2;->onItemSelectedLayer2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvueLayer2;->loadData()V

    return-void
.end method
