.class public final synthetic Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;->f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;->f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingOrders$ERohRe4isHKA9fHa8Xm7_-E8gu8;->f$1:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;->lambda$onCreateView$0$GuidedStepBookingOrders(Landroid/view/View;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
