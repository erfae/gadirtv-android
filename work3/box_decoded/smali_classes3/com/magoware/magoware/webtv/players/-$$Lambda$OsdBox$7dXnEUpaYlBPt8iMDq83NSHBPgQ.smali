.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$5:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$7dXnEUpaYlBPt8iMDq83NSHBPgQ;->f$5:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/OsdBox;->lambda$getChannelInfo$8$OsdBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
