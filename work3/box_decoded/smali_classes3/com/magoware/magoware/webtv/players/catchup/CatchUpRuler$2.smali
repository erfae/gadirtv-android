.class Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$2;
.super Ljava/lang/Object;
.source "CatchUpRuler.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$2;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$2;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->ruleView:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->setScrollerChanaged(IIII)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method
