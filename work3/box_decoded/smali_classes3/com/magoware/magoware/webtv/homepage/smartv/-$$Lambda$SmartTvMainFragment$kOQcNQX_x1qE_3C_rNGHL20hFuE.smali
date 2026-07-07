.class public final synthetic Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$kOQcNQX_x1qE_3C_rNGHL20hFuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$kOQcNQX_x1qE_3C_rNGHL20hFuE;->f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/smartv/-$$Lambda$SmartTvMainFragment$kOQcNQX_x1qE_3C_rNGHL20hFuE;->f$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->lambda$setupUi$7$SmartTvMainFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
