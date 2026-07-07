.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$F4n3wdVrPcCL4J2_1P6xL8UYFcE;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->hideOSD()V

    return-void
.end method
