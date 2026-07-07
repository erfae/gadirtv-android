.class public Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;
.super Lcom/magoware/magoware/webtv/CustomActivity;
.source "AppsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 12
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e004a

    .line 13
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/deviceApps/AppsActivity;->setContentView(I)V

    return-void
.end method
