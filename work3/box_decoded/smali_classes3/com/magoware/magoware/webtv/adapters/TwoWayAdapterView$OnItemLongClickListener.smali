.class public interface abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;
.super Ljava/lang/Object;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemLongClickListener"
.end annotation


# virtual methods
.method public abstract onItemLongClick(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/view/View;IJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation
.end method
