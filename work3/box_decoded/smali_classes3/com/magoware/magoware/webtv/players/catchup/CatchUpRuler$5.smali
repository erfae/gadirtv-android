.class Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$5;
.super Ljava/util/TimerTask;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->lambda$onFinishInflate$29(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 800
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$5;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$5;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->catchupPressed:Z

    return-void
.end method
