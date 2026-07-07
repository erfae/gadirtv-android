.class public final synthetic Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingsFragment$4qWCuNQ26wQeyk3FcIdo6IMcDyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingsFragment$4qWCuNQ26wQeyk3FcIdo6IMcDyA;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepBookingsFragment$4qWCuNQ26wQeyk3FcIdo6IMcDyA;->f$0:Landroid/view/View;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingsFragment;->lambda$onCreateView$0(Landroid/view/View;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
