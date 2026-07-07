.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;
.super Landroid/os/AsyncTask;
.source "LiveTvPlayerSuperclass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dismiss_OSD_display"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1880
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V
    .locals 0

    .line 1880
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1883
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "DismissOSD"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 1880
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1889
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1890
    sget-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    const-string v0, "osd"

    invoke-static {p1, v0}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "none"

    .line 1891
    sput-object p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->openedView:Ljava/lang/String;

    .line 1892
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->standart_fade_out_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/Utils;->setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1893
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1400(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1880
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$Dismiss_OSD_display;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
