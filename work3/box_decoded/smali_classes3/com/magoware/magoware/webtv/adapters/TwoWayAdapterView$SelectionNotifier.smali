.class Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "TwoWayAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$1;)V
    .locals 0

    .line 818
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->access$200(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V

    :goto_0
    return-void
.end method
