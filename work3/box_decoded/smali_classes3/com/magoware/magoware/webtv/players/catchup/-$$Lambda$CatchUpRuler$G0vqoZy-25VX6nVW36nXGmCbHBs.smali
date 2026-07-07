.class public final synthetic Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Landroid/widget/Button;ILandroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$1:Landroid/widget/Button;

    iput p3, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$2:I

    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$1:Landroid/widget/Button;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$2:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$G0vqoZy-25VX6nVW36nXGmCbHBs;->f$3:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->lambda$dayListener$33$CatchUpRuler(Landroid/widget/Button;ILandroid/widget/Button;)V

    return-void
.end method
