.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:Ljava/text/SimpleDateFormat;

.field public final synthetic f$3:Ljava/util/Calendar;

.field public final synthetic f$4:Ljava/util/Calendar;

.field public final synthetic f$5:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/OsdBox;Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$1:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$2:Ljava/text/SimpleDateFormat;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$3:Ljava/util/Calendar;

    iput-object p5, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$4:Ljava/util/Calendar;

    iput-object p6, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$5:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$0:Lcom/magoware/magoware/webtv/players/OsdBox;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$1:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$2:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$3:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$4:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$OsdBox$F0kfNZOuBnDw1rmS00edEnpPTE4;->f$5:Ljava/util/Calendar;

    move-object v6, p1

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/OsdBox;->lambda$getChannelInfo$9$OsdBox(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
