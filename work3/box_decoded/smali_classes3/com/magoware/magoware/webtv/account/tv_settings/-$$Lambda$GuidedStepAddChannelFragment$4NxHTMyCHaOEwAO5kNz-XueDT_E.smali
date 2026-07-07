.class public final synthetic Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepAddChannelFragment$4NxHTMyCHaOEwAO5kNz-XueDT_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepAddChannelFragment$4NxHTMyCHaOEwAO5kNz-XueDT_E;->f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;

    iput p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepAddChannelFragment$4NxHTMyCHaOEwAO5kNz-XueDT_E;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepAddChannelFragment$4NxHTMyCHaOEwAO5kNz-XueDT_E;->f$0:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;

    iget v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepAddChannelFragment$4NxHTMyCHaOEwAO5kNz-XueDT_E;->f$1:I

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;->lambda$onGuidedActionClicked$0$GuidedStepAddChannelFragment(ILcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
