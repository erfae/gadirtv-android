.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DetailActivity.java"


# static fields
.field public static final EPISODE_NUMBER:Ljava/lang/String; = "episode_number"

.field public static final IS_EPISODE:Ljava/lang/String; = "is_episode"

.field public static final IS_TV_SERIES:Ljava/lang/String; = "is_tv_series"

.field public static final SEASON_NUMBER:Ljava/lang/String; = "season_number"

.field public static final SHARED_ELEMENT_NAME:Ljava/lang/String; = "hero"

.field public static final TV_SHOW_ID:Ljava/lang/String; = "tv_show_id"

.field public static final VIDEO:Ljava/lang/String; = "Video"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1500fa

    .line 36
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0e0040

    .line 38
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailActivity;->setContentView(I)V

    return-void
.end method
