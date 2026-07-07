.class public final synthetic Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$hYt0-QTjpYDbB2NSoI50aND5WNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$hYt0-QTjpYDbB2NSoI50aND5WNQ;->f$0:Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$hYt0-QTjpYDbB2NSoI50aND5WNQ;->f$0:Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->lambda$onCreate$1$ResetPasswordActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
