.class public Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;
.super Ljava/lang/Object;
.source "HelloWorldEvent1.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final pauseButton:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->pauseButton:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pauseButton"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->message:Ljava/lang/String;

    .line 20
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->pauseButton:Z

    return-void
.end method


# virtual methods
.method public getMessage1()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->message:Ljava/lang/String;

    return-object v0
.end method

.method public pauseButtonClicked()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;->pauseButton:Z

    return v0
.end method
