.class abstract Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;
.super Ljava/lang/Object;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V
    .locals 0

    .line 774
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V

    return-void
.end method


# virtual methods
.method protected abstract arrowScroll(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method protected abstract fillGap(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation
.end method

.method protected abstract isCandidateSelection(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childIndex",
            "direction"
        }
    .end annotation
.end method

.method protected abstract layoutChildren()V
.end method

.method protected abstract makeAndAddView(IIZIZI)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "y",
            "flow",
            "childrenLeft",
            "selected",
            "where"
        }
    .end annotation
.end method

.method protected abstract onMeasure(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation
.end method

.method protected abstract setSelectionInt(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method
