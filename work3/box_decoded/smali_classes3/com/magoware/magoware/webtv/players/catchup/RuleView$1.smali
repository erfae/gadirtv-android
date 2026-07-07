.class Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;
.super Ljava/lang/Object;
.source "RuleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/catchup/RuleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->access$000(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)I

    move-result v0

    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 91
    :try_start_0
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 92
    sget v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    sget v2, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    .line 93
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->df:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->rulerWidth:F

    sget v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->unit:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->access$100(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->access$002(Lcom/magoware/magoware/webtv/players/catchup/RuleView;I)I

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/RuleView$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/RuleView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->access$100(Lcom/magoware/magoware/webtv/players/catchup/RuleView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
