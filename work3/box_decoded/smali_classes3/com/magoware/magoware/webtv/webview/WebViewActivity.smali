.class public Lcom/magoware/magoware/webtv/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0079

    .line 19
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/webview/WebViewActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/magoware/magoware/webtv/webview/WebViewFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/webview/WebViewFragment;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/webview/WebViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
