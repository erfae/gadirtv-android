.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$4pMCEX-9_nsXzQeRoo_gPGxFwWo;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->lambda$loginMultiCompany$5$LoginFragmentParent(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
