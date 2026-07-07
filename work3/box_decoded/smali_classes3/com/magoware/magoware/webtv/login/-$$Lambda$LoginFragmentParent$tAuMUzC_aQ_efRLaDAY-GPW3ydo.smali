.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$tAuMUzC_aQ_efRLaDAY-GPW3ydo;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->lambda$getSmsCode$19$LoginFragmentParent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
