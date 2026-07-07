.class public Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;
.super Lcom/magoware/magoware/webtv/CustomActivity;
.source "NetworkTestMerlin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 13
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0188

    .line 14
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 16
    new-instance p1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestMerlin;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b02d1

    .line 19
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
