.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1789
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 1789
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
