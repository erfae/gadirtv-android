.class public Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "TwoWayAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetView",
            "position",
            "id"
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 387
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;->position:I

    .line 388
    iput-wide p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;->id:J

    return-void
.end method
