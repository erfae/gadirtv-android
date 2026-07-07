.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/GridActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "GridActivity.java"


# static fields
.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final CATEGORY_POSITION:Ljava/lang/String; = "category_position"

.field public static final CATEGORY_URL:Ljava/lang/String; = "category_url"

.field public static final FROM_SHORTCUT:Ljava/lang/String; = "from_shortcut"

.field public static final SORT_BY:Ljava/lang/String; = "sort_by"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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

    .line 20
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

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0030

    .line 26
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/GridActivity;->setContentView(I)V

    return-void
.end method
