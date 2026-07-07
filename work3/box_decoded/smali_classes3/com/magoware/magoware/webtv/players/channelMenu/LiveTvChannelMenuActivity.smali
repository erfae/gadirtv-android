.class public Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "LiveTvChannelMenuActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveTvChannelMenu"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const v0, 0x7f15013a

    .line 35
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->setTheme(I)V

    .line 36
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 41
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 42
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const p1, 0x7f0e006a

    .line 45
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/LiveTvChannelMenuActivity;->setContentView(I)V

    return-void
.end method
