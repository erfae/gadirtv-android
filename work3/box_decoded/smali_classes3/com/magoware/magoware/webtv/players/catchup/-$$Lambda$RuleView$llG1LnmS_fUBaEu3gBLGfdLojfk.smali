.class public final synthetic Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$llG1LnmS_fUBaEu3gBLGfdLojfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$llG1LnmS_fUBaEu3gBLGfdLojfk;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$RuleView$llG1LnmS_fUBaEu3gBLGfdLojfk;->f$0:I

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->lambda$setScroll$3(I)V

    return-void
.end method
