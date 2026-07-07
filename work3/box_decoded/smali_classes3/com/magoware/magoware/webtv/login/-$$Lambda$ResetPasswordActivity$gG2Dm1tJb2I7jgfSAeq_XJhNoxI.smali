.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$gG2Dm1tJb2I7jgfSAeq_XJhNoxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$gG2Dm1tJb2I7jgfSAeq_XJhNoxI;->f$0:Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$gG2Dm1tJb2I7jgfSAeq_XJhNoxI;->f$0:Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->lambda$onCreate$0$ResetPasswordActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
