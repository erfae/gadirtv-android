.class public final synthetic Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;->f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

    iput-wide p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;->f$1:J

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;->f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$vTZ3PZB_-rSwR7zv0ov4B_cdo6o;->f$1:J

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->lambda$getDeviceMenu$6$SmartTvMainFragment(JLcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
