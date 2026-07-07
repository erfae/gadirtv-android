.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$yHZqEmIdKYTFpd-AgQqXnlNK04M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$yHZqEmIdKYTFpd-AgQqXnlNK04M;->f$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$AuthSmsActivity$yHZqEmIdKYTFpd-AgQqXnlNK04M;->f$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->lambda$postAuthSmsVerification$3$AuthSmsActivity(Lcom/google/gson/JsonObject;)V

    return-void
.end method
