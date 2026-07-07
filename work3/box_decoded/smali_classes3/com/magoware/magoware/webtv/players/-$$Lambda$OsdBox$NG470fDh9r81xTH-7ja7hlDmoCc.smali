.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$NG470fDh9r81xTH-7ja7hlDmoCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/OsdBox;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/OsdBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$NG470fDh9r81xTH-7ja7hlDmoCc;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$NG470fDh9r81xTH-7ja7hlDmoCc;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->lambda$getChannelOSDInfo$5$OsdBox()V

    return-void
.end method
